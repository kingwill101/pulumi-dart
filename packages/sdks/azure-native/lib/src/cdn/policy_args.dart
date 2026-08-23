// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_rule_list.dart';
import 'managed_rule_set_list.dart';
import 'policy_settings.dart';
import 'rate_limit_rule_list.dart';
import 'sku.dart';

/// {@template pulumi_cdn_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_cdn_policy_args_doc}
class PolicyArgs {
  /// Describes custom rules inside the policy.
  final pulumi.Input<CustomRuleList>? customRules;
  /// Key-Value pair representing additional properties for Web Application Firewall policy.
  final pulumi.Input<Map<String, String>>? extendedProperties;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Describes managed rules inside the policy.
  final pulumi.Input<ManagedRuleSetList>? managedRules;
  /// The name of the CdnWebApplicationFirewallPolicy.
  final pulumi.Input<String>? policyName;
  /// Describes  policySettings for policy
  final pulumi.Input<PolicySettings>? policySettings;
  /// Describes rate limit rules inside the policy.
  final pulumi.Input<RateLimitRuleList>? rateLimitRules;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The pricing tier (defines a CDN provider, feature list and rate) of the CdnWebApplicationFirewallPolicy.
  final pulumi.Input<Sku> sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PolicyArgs].
  /// [customRules] Describes custom rules inside the policy.
  /// [extendedProperties] Key-Value pair representing additional properties for Web Application Firewall policy.
  /// [location] The geo-location where the resource lives
  /// [managedRules] Describes managed rules inside the policy.
  /// [policyName] The name of the CdnWebApplicationFirewallPolicy.
  /// [policySettings] Describes  policySettings for policy
  /// [rateLimitRules] Describes rate limit rules inside the policy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The pricing tier (defines a CDN provider, feature list and rate) of the CdnWebApplicationFirewallPolicy.
  /// [tags] Resource tags.
  const PolicyArgs({
    this.customRules,
    this.extendedProperties,
    this.location,
    this.managedRules,
    this.policyName,
    this.policySettings,
    this.rateLimitRules,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRules': ?pulumi.Input.mapOptionalInputValue<CustomRuleList, Map<String, dynamic>>(customRules, (value) => value.toMap()),
      'extendedProperties': ?extendedProperties,
      'location': ?location,
      'managedRules': ?pulumi.Input.mapOptionalInputValue<ManagedRuleSetList, Map<String, dynamic>>(managedRules, (value) => value.toMap()),
      'policyName': ?policyName,
      'policySettings': ?pulumi.Input.mapOptionalInputValue<PolicySettings, Map<String, dynamic>>(policySettings, (value) => value.toMap()),
      'rateLimitRules': ?pulumi.Input.mapOptionalInputValue<RateLimitRuleList, Map<String, dynamic>>(rateLimitRules, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      customRules: (() { final guardedValue = map['customRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomRuleList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extendedProperties: (() { final guardedValue = map['extendedProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedRules: (() { final guardedValue = map['managedRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedRuleSetList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policySettings: (() { final guardedValue = map['policySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rateLimitRules: (() { final guardedValue = map['rateLimitRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RateLimitRuleList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: pulumi.Input.fromValue(Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
