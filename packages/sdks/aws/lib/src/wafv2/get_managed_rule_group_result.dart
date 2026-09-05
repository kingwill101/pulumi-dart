// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_rule_group_available_label.dart';
import 'get_managed_rule_group_consumed_label.dart';
import 'get_managed_rule_group_rule.dart';

/// Result data returned by getManagedRuleGroup.
class GetManagedRuleGroupResult {
  /// Labels that one or more rules in this rule group add to matching web requests. See Labels below for details.
  final List<GetManagedRuleGroupAvailableLabel>? availableLabels;
  /// WCUs required for this rule group.
  final int? capacity;
  /// Labels that one or more rules in this rule group match against in label match statements. See Labels below for details.
  final List<GetManagedRuleGroupConsumedLabel>? consumedLabels;
  /// Label namespace prefix for this rule group. All labels added by rules in this rule group have this prefix.
  final String? labelNamespace;
  /// Name of the header.
  final String? name;
  final String? region;
  /// High-level information about the rules. See `rules` Block below for details.
  final List<GetManagedRuleGroupRule>? rules;
  final String? scope;
  /// ARN of the SNS topic that's used to provide notification of changes to the managed rule group.
  final String? snsTopicArn;
  final String? vendorName;
  final String? versionName;

  /// Creates a new [GetManagedRuleGroupResult].
  /// [availableLabels] Labels that one or more rules in this rule group add to matching web requests. See Labels below for details.
  /// [capacity] WCUs required for this rule group.
  /// [consumedLabels] Labels that one or more rules in this rule group match against in label match statements. See Labels below for details.
  /// [labelNamespace] Label namespace prefix for this rule group. All labels added by rules in this rule group have this prefix.
  /// [name] Name of the header.
  /// [region] Optional.
  /// [rules] High-level information about the rules. See `rules` Block below for details.
  /// [scope] Optional.
  /// [snsTopicArn] ARN of the SNS topic that's used to provide notification of changes to the managed rule group.
  /// [vendorName] Optional.
  /// [versionName] Optional.
  const GetManagedRuleGroupResult({
    this.availableLabels,
    this.capacity,
    this.consumedLabels,
    this.labelNamespace,
    this.name,
    this.region,
    this.rules,
    this.scope,
    this.snsTopicArn,
    this.vendorName,
    this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableLabels': ?(() { final guardedValue = availableLabels; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetManagedRuleGroupAvailableLabel, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'capacity': ?capacity,
      'consumedLabels': ?(() { final guardedValue = consumedLabels; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetManagedRuleGroupConsumedLabel, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'labelNamespace': ?labelNamespace,
      'name': ?name,
      'region': ?region,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetManagedRuleGroupRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scope': ?scope,
      'snsTopicArn': ?snsTopicArn,
      'vendorName': ?vendorName,
      'versionName': ?versionName,
    };
  }

  factory GetManagedRuleGroupResult.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupResult(
      availableLabels: (() { final guardedValue = map['availableLabels']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetManagedRuleGroupAvailableLabel>(guardedValue, (value) => GetManagedRuleGroupAvailableLabel.fromMap((value as Map).cast<String, dynamic>())); })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      consumedLabels: (() { final guardedValue = map['consumedLabels']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetManagedRuleGroupConsumedLabel>(guardedValue, (value) => GetManagedRuleGroupConsumedLabel.fromMap((value as Map).cast<String, dynamic>())); })(),
      labelNamespace: (() { final guardedValue = map['labelNamespace']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetManagedRuleGroupRule>(guardedValue, (value) => GetManagedRuleGroupRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snsTopicArn: (() { final guardedValue = map['snsTopicArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vendorName: (() { final guardedValue = map['vendorName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionName: (() { final guardedValue = map['versionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
