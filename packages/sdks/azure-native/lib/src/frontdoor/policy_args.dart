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
  /// The name of the resource group. The name is case insensitive.
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
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The pricing tier of web application firewall policy. Defaults to Classic_AzureFrontDoor if not specified.
  /// [tags] Resource tags.
  const PolicyArgs({
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
      customRules: (() { final guardedValue = map['customRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomRuleList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedRules: (() { final guardedValue = map['managedRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedRuleSetList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policySettings: (() { final guardedValue = map['policySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Sku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
