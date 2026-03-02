// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_rule_list.dart';
import 'managed_rule_set_list.dart';
import 'policy_settings.dart';
import 'sku.dart';

/// {@template pulumi_frontdoor_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_frontdoor_policy_args_doc}
class PolicyArgs {
  /// Describes custom rules inside the policy.
  final pulumi.Input<CustomRuleList>? customRules;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Describes managed rules inside the policy.
  final pulumi.Input<ManagedRuleSetList>? managedRules;
  /// The name of the Web Application Firewall Policy.
  final pulumi.Input<String>? policyName;
  /// Describes settings for the policy.
  final pulumi.Input<PolicySettings>? policySettings;
  /// Name of the Resource group within the Azure subscription.
  final pulumi.Input<String> resourceGroupName;
  /// The pricing tier of web application firewall policy. Defaults to Classic_AzureFrontDoor if not specified.
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PolicyArgs].
  /// [customRules] Describes custom rules inside the policy.
  /// [location] Resource location.
  /// [managedRules] Describes managed rules inside the policy.
  /// [policyName] The name of the Web Application Firewall Policy.
  /// [policySettings] Describes settings for the policy.
  /// [resourceGroupName] Name of the Resource group within the Azure subscription.
  /// [sku] The pricing tier of web application firewall policy. Defaults to Classic_AzureFrontDoor if not specified.
  /// [tags] Resource tags.
  PolicyArgs({
    this.customRules,
    this.location,
    this.managedRules,
    this.policyName,
    this.policySettings,
    required this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRules': ?pulumi.Input.mapOptionalInputValue<CustomRuleList, Map<String, dynamic>>(customRules, (value) => value.toMap()),
      'location': ?location,
      'managedRules': ?pulumi.Input.mapOptionalInputValue<ManagedRuleSetList, Map<String, dynamic>>(managedRules, (value) => value.toMap()),
      'policyName': ?policyName,
      'policySettings': ?pulumi.Input.mapOptionalInputValue<PolicySettings, Map<String, dynamic>>(policySettings, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      customRules: map['customRules'] == null ? null : (CustomRuleList.fromMap((map['customRules']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedRules: map['managedRules'] == null ? null : (ManagedRuleSetList.fromMap((map['managedRules']! as Map).cast<String, dynamic>())).input(),
      policyName: map['policyName'] == null ? null : (map['policyName']! as String).input(),
      policySettings: map['policySettings'] == null ? null : (PolicySettings.fromMap((map['policySettings']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

