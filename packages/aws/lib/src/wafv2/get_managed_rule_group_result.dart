// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_rule_group_available_label.dart';
import 'get_managed_rule_group_consumed_label.dart';
import 'get_managed_rule_group_rule.dart';

/// Result data returned by getManagedRuleGroup.
class GetManagedRuleGroupResult {
  /// Labels that one or more rules in this rule group add to matching web requests. See Labels below for details.
  final List<GetManagedRuleGroupAvailableLabel> availableLabels;

  /// WCUs required for this rule group.
  final int capacity;

  /// Labels that one or more rules in this rule group match against in label match statements. See Labels below for details.
  final List<GetManagedRuleGroupConsumedLabel> consumedLabels;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Label namespace prefix for this rule group. All labels added by rules in this rule group have this prefix.
  final String labelNamespace;

  /// Name of the rule.
  final String name;
  final String region;

  /// High-level information about the rules. See Rules below for details.
  final List<GetManagedRuleGroupRule> rules;
  final String scope;

  /// ARN of the SNS topic that's used to provide notification of changes to the managed rule group.
  final String snsTopicArn;
  final String vendorName;
  final String? versionName;

  /// Creates a new [GetManagedRuleGroupResult].
  /// [availableLabels] Labels that one or more rules in this rule group add to matching web requests. See Labels below for details.
  /// [capacity] WCUs required for this rule group.
  /// [consumedLabels] Labels that one or more rules in this rule group match against in label match statements. See Labels below for details.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labelNamespace] Label namespace prefix for this rule group. All labels added by rules in this rule group have this prefix.
  /// [name] Name of the rule.
  /// [region] Required.
  /// [rules] High-level information about the rules. See Rules below for details.
  /// [scope] Required.
  /// [snsTopicArn] ARN of the SNS topic that's used to provide notification of changes to the managed rule group.
  /// [vendorName] Required.
  /// [versionName] Optional.
  GetManagedRuleGroupResult({
    required this.availableLabels,
    required this.capacity,
    required this.consumedLabels,
    required this.id,
    required this.labelNamespace,
    required this.name,
    required this.region,
    required this.rules,
    required this.scope,
    required this.snsTopicArn,
    required this.vendorName,
    this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableLabels':
          pulumi.Input.encodeList<
            GetManagedRuleGroupAvailableLabel,
            Map<String, dynamic>
          >(availableLabels, (value) => value.toMap()),
      'capacity': capacity,
      'consumedLabels':
          pulumi.Input.encodeList<
            GetManagedRuleGroupConsumedLabel,
            Map<String, dynamic>
          >(consumedLabels, (value) => value.toMap()),
      'id': id,
      'labelNamespace': labelNamespace,
      'name': name,
      'region': region,
      'rules':
          pulumi.Input.encodeList<
            GetManagedRuleGroupRule,
            Map<String, dynamic>
          >(rules, (value) => value.toMap()),
      'scope': scope,
      'snsTopicArn': snsTopicArn,
      'vendorName': vendorName,
      'versionName': ?versionName,
    };
  }

  factory GetManagedRuleGroupResult.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupResult(
      availableLabels:
          pulumi.Input.decodeList<GetManagedRuleGroupAvailableLabel>(
            map['availableLabels'],
            (value) => GetManagedRuleGroupAvailableLabel.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      capacity: map['capacity'] as int,
      consumedLabels: pulumi.Input.decodeList<GetManagedRuleGroupConsumedLabel>(
        map['consumedLabels'],
        (value) => GetManagedRuleGroupConsumedLabel.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      labelNamespace: map['labelNamespace'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      rules: pulumi.Input.decodeList<GetManagedRuleGroupRule>(
        map['rules'],
        (value) => GetManagedRuleGroupRule.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      scope: map['scope'] as String,
      snsTopicArn: map['snsTopicArn'] as String,
      vendorName: map['vendorName'] as String,
      versionName: map['versionName'] == null
          ? null
          : map['versionName'] as String,
    );
  }
}
