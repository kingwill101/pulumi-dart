// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_security_policy_advanced_options_config.dart';
import 'region_security_policy_ddos_protection_config.dart';
import 'region_security_policy_rule.dart';
import 'region_security_policy_user_defined_field.dart';

/// {@template pulumi_compute_region_security_policy_region_security_policy_args_doc}
/// The set of arguments for RegionSecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_region_security_policy_region_security_policy_args_doc}
class RegionSecurityPolicyArgs {
  /// Advanced Options Config of this security policy.
  /// Structure is documented below.
  final pulumi.Input<RegionSecurityPolicyAdvancedOptionsConfig>? advancedOptionsConfig;
  /// Configuration for Google Cloud Armor DDOS Proctection Config.
  /// Structure is documented below.
  final pulumi.Input<RegionSecurityPolicyDdosProtectionConfig>? ddosProtectionConfig;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The Region in which the created Region Security Policy should reside.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;
  /// The set of rules that belong to this policy. There must always be a default rule (rule with priority 2147483647 and match "*"). If no rules are provided when creating a security policy, a default rule with action "allow" will be added.
  /// Structure is documented below.
  final pulumi.Input<List<RegionSecurityPolicyRule>>? rules;
  /// The type indicates the intended use of the security policy.
  /// - CLOUD_ARMOR: Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services. They filter requests before they hit the origin servers.
  /// - CLOUD_ARMOR_EDGE: Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage). They filter requests before the request is served from Google's cache.
  /// - CLOUD_ARMOR_NETWORK: Cloud Armor network policies can be configured to filter packets targeting network load balancing resources such as backend services, target pools, target instances, and instances with external IPs. They filter requests before the request is served from the application.
  /// This field can be set only at resource creation time.
  /// Possible values are: `CLOUD_ARMOR`, `CLOUD_ARMOR_EDGE`, `CLOUD_ARMOR_NETWORK`.
  final pulumi.Input<String>? type;
  /// Definitions of user-defined fields for CLOUD_ARMOR_NETWORK policies.
  /// A user-defined field consists of up to 4 bytes extracted from a fixed offset in the packet, relative to the IPv4, IPv6, TCP, or UDP header, with an optional mask to select certain bits.
  /// Rules may then specify matching values for these fields.
  /// Structure is documented below.
  final pulumi.Input<List<RegionSecurityPolicyUserDefinedField>>? userDefinedFields;

  /// Creates a new [RegionSecurityPolicyArgs].
  /// [advancedOptionsConfig] Advanced Options Config of this security policy.
  /// [ddosProtectionConfig] Configuration for Google Cloud Armor DDOS Proctection Config.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The Region in which the created Region Security Policy should reside.
  /// [rules] The set of rules that belong to this policy. There must always be a default rule (rule with priority 2147483647 and match "*"). If no rules are provided when creating a security policy, a default rule with action "allow" will be added.
  /// [type] The type indicates the intended use of the security policy.
  /// [userDefinedFields] Definitions of user-defined fields for CLOUD_ARMOR_NETWORK policies.
  RegionSecurityPolicyArgs({
    RegionSecurityPolicyAdvancedOptionsConfig? advancedOptionsConfig,
    RegionSecurityPolicyDdosProtectionConfig? ddosProtectionConfig,
    String? description,
    String? name,
    String? project,
    String? region,
    List<RegionSecurityPolicyRule>? rules,
    String? type,
    List<RegionSecurityPolicyUserDefinedField>? userDefinedFields,
  }) :
      advancedOptionsConfig = pulumi.Input.asOptionalInput<RegionSecurityPolicyAdvancedOptionsConfig>(advancedOptionsConfig),
      ddosProtectionConfig = pulumi.Input.asOptionalInput<RegionSecurityPolicyDdosProtectionConfig>(ddosProtectionConfig),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      rules = pulumi.Input.asOptionalInput<List<RegionSecurityPolicyRule>>(rules),
      type = pulumi.Input.asOptionalInput<String>(type),
      userDefinedFields = pulumi.Input.asOptionalInput<List<RegionSecurityPolicyUserDefinedField>>(userDefinedFields);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedOptionsConfig': ?pulumi.Input.mapOptionalInputValue<RegionSecurityPolicyAdvancedOptionsConfig, Map<String, dynamic>>(advancedOptionsConfig, (value) => value.toMap()),
      'ddosProtectionConfig': ?pulumi.Input.mapOptionalInputValue<RegionSecurityPolicyDdosProtectionConfig, Map<String, dynamic>>(ddosProtectionConfig, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RegionSecurityPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RegionSecurityPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
      'userDefinedFields': ?pulumi.Input.mapOptionalInputValue<List<RegionSecurityPolicyUserDefinedField>, List<Map<String, dynamic>>>(userDefinedFields, (value) => pulumi.Input.encodeList<RegionSecurityPolicyUserDefinedField, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegionSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RegionSecurityPolicyArgs(
      advancedOptionsConfig: map['advancedOptionsConfig'] == null ? null : RegionSecurityPolicyAdvancedOptionsConfig.fromMap((map['advancedOptionsConfig'] as Map).cast<String, dynamic>()),
      ddosProtectionConfig: map['ddosProtectionConfig'] == null ? null : RegionSecurityPolicyDdosProtectionConfig.fromMap((map['ddosProtectionConfig'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<RegionSecurityPolicyRule>(map['rules'], (value) => RegionSecurityPolicyRule.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
      userDefinedFields: map['userDefinedFields'] == null ? null : pulumi.Input.decodeList<RegionSecurityPolicyUserDefinedField>(map['userDefinedFields'], (value) => RegionSecurityPolicyUserDefinedField.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

