// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../region_security_policy_advanced_options_config/region_security_policy_advanced_options_config.dart';
import '../region_security_policy_ddos_protection_config/region_security_policy_ddos_protection_config.dart';
import '../region_security_policy_rule/region_security_policy_rule.dart';
import '../region_security_policy_user_defined_field/region_security_policy_user_defined_field.dart';

/// The set of arguments for RegionSecurityPolicy.
class RegionSecurityPolicyArgs {
  /// Advanced Options Config of this security policy.
  /// Structure is documented below.
  final pulumi.Input<RegionSecurityPolicyAdvancedOptionsConfig>?
      advancedOptionsConfig;

  /// Configuration for Google Cloud Armor DDOS Proctection Config.
  /// Structure is documented below.
  final pulumi.Input<RegionSecurityPolicyDdosProtectionConfig>?
      ddosProtectionConfig;

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
  final pulumi.Input<List<RegionSecurityPolicyUserDefinedField>>?
      userDefinedFields;

  RegionSecurityPolicyArgs({
    this.advancedOptionsConfig,
    this.ddosProtectionConfig,
    this.description,
    this.name,
    this.project,
    this.region,
    this.rules,
    this.type,
    this.userDefinedFields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedOptionsConfigValue = advancedOptionsConfig;
    if (advancedOptionsConfigValue != null) {
      map['advancedOptionsConfig'] = pulumi.Input.mapOptionalInputValue<
              RegionSecurityPolicyAdvancedOptionsConfig, Map<String, dynamic>>(
          advancedOptionsConfigValue, (value) => value.toMap());
    }
    final ddosProtectionConfigValue = ddosProtectionConfig;
    if (ddosProtectionConfigValue != null) {
      map['ddosProtectionConfig'] = pulumi.Input.mapOptionalInputValue<
              RegionSecurityPolicyDdosProtectionConfig, Map<String, dynamic>>(
          ddosProtectionConfigValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = pulumi.Input.mapOptionalInputValue<
              List<RegionSecurityPolicyRule>, List<Map<String, dynamic>>>(
          rulesValue,
          (value) => pulumi.Input.encodeList<RegionSecurityPolicyRule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final userDefinedFieldsValue = userDefinedFields;
    if (userDefinedFieldsValue != null) {
      map['userDefinedFields'] = pulumi.Input.mapOptionalInputValue<
              List<RegionSecurityPolicyUserDefinedField>,
              List<Map<String, dynamic>>>(
          userDefinedFieldsValue,
          (value) => pulumi.Input.encodeList<
              RegionSecurityPolicyUserDefinedField,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory RegionSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RegionSecurityPolicyArgs(
      advancedOptionsConfig: pulumi.Input.asOptionalInput<
              RegionSecurityPolicyAdvancedOptionsConfig>(
          map['advancedOptionsConfig']),
      ddosProtectionConfig: pulumi.Input.asOptionalInput<
              RegionSecurityPolicyDdosProtectionConfig>(
          map['ddosProtectionConfig']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      rules: pulumi.Input.asOptionalInput<List<RegionSecurityPolicyRule>>(
          map['rules']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
      userDefinedFields: pulumi.Input.asOptionalInput<
          List<RegionSecurityPolicyUserDefinedField>>(map['userDefinedFields']),
    );
  }
}
