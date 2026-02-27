// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'region_security_policy_type3.dart';
import 'security_policy_adaptive_protection_config3.dart';
import 'security_policy_advanced_options_config3.dart';
import 'security_policy_ddos_protection_config3.dart';
import 'security_policy_recaptcha_options_config3.dart';
import 'security_policy_rule3.dart';
import 'security_policy_user_defined_field3.dart';

/// The set of arguments for RegionSecurityPolicy.
class RegionSecurityPolicyArgs3 {
  final Input<SecurityPolicyAdaptiveProtectionConfig3>?
      adaptiveProtectionConfig;
  final Input<SecurityPolicyAdvancedOptionsConfig3>? advancedOptionsConfig;
  final Input<SecurityPolicyDdosProtectionConfig3>? ddosProtectionConfig;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final Input<Map<String, String>>? labels;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;
  final Input<String>? project;
  final Input<SecurityPolicyRecaptchaOptionsConfig3>? recaptchaOptionsConfig;
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// A list of rules that belong to this policy. There must always be a default rule which is a rule with priority 2147483647 and match all condition (for the match condition this means match "*" for srcIpRanges and for the networkMatch condition every field must be either match "*" or not set). If no rules are provided when creating a security policy, a default rule with action "allow" will be added.
  final Input<List<SecurityPolicyRule3>>? rules;

  /// The type indicates the intended use of the security policy. - CLOUD_ARMOR: Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services. They filter requests before they hit the origin servers. - CLOUD_ARMOR_EDGE: Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage). They filter requests before the request is served from Google's cache. - CLOUD_ARMOR_INTERNAL_SERVICE: Cloud Armor internal service policies can be configured to filter HTTP requests targeting services managed by Traffic Director in a service mesh. They filter requests before the request is served from the application. - CLOUD_ARMOR_NETWORK: Cloud Armor network policies can be configured to filter packets targeting network load balancing resources such as backend services, target pools, target instances, and instances with external IPs. They filter requests before the request is served from the application. This field can be set only at resource creation time.
  final Input<RegionSecurityPolicyType3>? type;

  /// Definitions of user-defined fields for CLOUD_ARMOR_NETWORK policies. A user-defined field consists of up to 4 bytes extracted from a fixed offset in the packet, relative to the IPv4, IPv6, TCP, or UDP header, with an optional mask to select certain bits. Rules may then specify matching values for these fields. Example: userDefinedFields: - name: "ipv4_fragment_offset" base: IPV4 offset: 6 size: 2 mask: "0x1fff"
  final Input<List<SecurityPolicyUserDefinedField3>>? userDefinedFields;

  RegionSecurityPolicyArgs3({
    this.adaptiveProtectionConfig,
    this.advancedOptionsConfig,
    this.ddosProtectionConfig,
    this.description,
    this.labels,
    this.name,
    this.project,
    this.recaptchaOptionsConfig,
    required this.region,
    this.requestId,
    this.rules,
    this.type,
    this.userDefinedFields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adaptiveProtectionConfigValue = adaptiveProtectionConfig;
    if (adaptiveProtectionConfigValue != null) {
      map['adaptiveProtectionConfig'] = Input.mapOptionalInputValue<
              SecurityPolicyAdaptiveProtectionConfig3, Map<String, dynamic>>(
          adaptiveProtectionConfigValue, (value) => value.toMap());
    }
    final advancedOptionsConfigValue = advancedOptionsConfig;
    if (advancedOptionsConfigValue != null) {
      map['advancedOptionsConfig'] = Input.mapOptionalInputValue<
              SecurityPolicyAdvancedOptionsConfig3, Map<String, dynamic>>(
          advancedOptionsConfigValue, (value) => value.toMap());
    }
    final ddosProtectionConfigValue = ddosProtectionConfig;
    if (ddosProtectionConfigValue != null) {
      map['ddosProtectionConfig'] = Input.mapOptionalInputValue<
              SecurityPolicyDdosProtectionConfig3, Map<String, dynamic>>(
          ddosProtectionConfigValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final recaptchaOptionsConfigValue = recaptchaOptionsConfig;
    if (recaptchaOptionsConfigValue != null) {
      map['recaptchaOptionsConfig'] = Input.mapOptionalInputValue<
              SecurityPolicyRecaptchaOptionsConfig3, Map<String, dynamic>>(
          recaptchaOptionsConfigValue, (value) => value.toMap());
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = Input.mapOptionalInputValue<List<SecurityPolicyRule3>,
              List<Map<String, dynamic>>>(
          rulesValue,
          (value) =>
              Input.encodeList<SecurityPolicyRule3, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] =
          Input.mapOptionalInputValue<RegionSecurityPolicyType3, String>(
              typeValue, (value) => value.value);
    }
    final userDefinedFieldsValue = userDefinedFields;
    if (userDefinedFieldsValue != null) {
      map['userDefinedFields'] = Input.mapOptionalInputValue<
              List<SecurityPolicyUserDefinedField3>,
              List<Map<String, dynamic>>>(
          userDefinedFieldsValue,
          (value) => Input.encodeList<SecurityPolicyUserDefinedField3,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory RegionSecurityPolicyArgs3.fromMap(Map<String, dynamic> map) {
    return RegionSecurityPolicyArgs3(
      adaptiveProtectionConfig:
          Input.asOptionalInput<SecurityPolicyAdaptiveProtectionConfig3>(
              map['adaptiveProtectionConfig']),
      advancedOptionsConfig:
          Input.asOptionalInput<SecurityPolicyAdvancedOptionsConfig3>(
              map['advancedOptionsConfig']),
      ddosProtectionConfig:
          Input.asOptionalInput<SecurityPolicyDdosProtectionConfig3>(
              map['ddosProtectionConfig']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      recaptchaOptionsConfig:
          Input.asOptionalInput<SecurityPolicyRecaptchaOptionsConfig3>(
              map['recaptchaOptionsConfig']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      rules: Input.asOptionalInput<List<SecurityPolicyRule3>>(map['rules']),
      type: Input.asOptionalInput<RegionSecurityPolicyType3>(map['type']),
      userDefinedFields:
          Input.asOptionalInput<List<SecurityPolicyUserDefinedField3>>(
              map['userDefinedFields']),
    );
  }
}
