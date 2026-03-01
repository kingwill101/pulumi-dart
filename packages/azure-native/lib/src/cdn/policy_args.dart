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
  PolicyArgs({
    CustomRuleList? customRules,
    Map<String, String>? extendedProperties,
    String? location,
    ManagedRuleSetList? managedRules,
    String? policyName,
    PolicySettings? policySettings,
    RateLimitRuleList? rateLimitRules,
    required String resourceGroupName,
    required Sku sku,
    Map<String, String>? tags,
  }) :
      customRules = pulumi.Input.asOptionalInput<CustomRuleList>(customRules),
      extendedProperties = pulumi.Input.asOptionalInput<Map<String, String>>(extendedProperties),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedRules = pulumi.Input.asOptionalInput<ManagedRuleSetList>(managedRules),
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      policySettings = pulumi.Input.asOptionalInput<PolicySettings>(policySettings),
      rateLimitRules = pulumi.Input.asOptionalInput<RateLimitRuleList>(rateLimitRules),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      customRules: map['customRules'] == null ? null : CustomRuleList.fromMap((map['customRules'] as Map).cast<String, dynamic>()),
      extendedProperties: map['extendedProperties'] == null ? null : (map['extendedProperties'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      managedRules: map['managedRules'] == null ? null : ManagedRuleSetList.fromMap((map['managedRules'] as Map).cast<String, dynamic>()),
      policyName: map['policyName'] == null ? null : map['policyName'] as String,
      policySettings: map['policySettings'] == null ? null : PolicySettings.fromMap((map['policySettings'] as Map).cast<String, dynamic>()),
      rateLimitRules: map['rateLimitRules'] == null ? null : RateLimitRuleList.fromMap((map['rateLimitRules'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      sku: Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

