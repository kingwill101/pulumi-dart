// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'security_policy_adaptive_protection_config.dart';
import 'security_policy_advanced_options_config.dart';
import 'security_policy_association.dart';
import 'security_policy_cloud_armor_config.dart';
import 'security_policy_ddos_protection_config.dart';
import 'security_policy_recaptcha_options_config.dart';
import 'security_policy_rule.dart';
import 'security_policy_type.dart';
import 'security_policy_user_defined_field.dart';

/// The set of arguments for SecurityPolicy.
class SecurityPolicyArgs {
  final Input<SecurityPolicyAdaptiveProtectionConfig>? adaptiveProtectionConfig;
  final Input<SecurityPolicyAdvancedOptionsConfig>? advancedOptionsConfig;

  /// A list of associations that belong to this policy.
  final Input<List<SecurityPolicyAssociation>>? associations;
  final Input<SecurityPolicyCloudArmorConfig>? cloudArmorConfig;
  final Input<SecurityPolicyDdosProtectionConfig>? ddosProtectionConfig;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// User-provided name of the Organization security plicy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is FIREWALL. The name must be 1-63 characters long, and comply with https://www.ietf.org/rfc/rfc1035.txt. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? displayName;

  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final Input<Map<String, String>>? labels;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;
  final Input<String>? project;
  final Input<SecurityPolicyRecaptchaOptionsConfig>? recaptchaOptionsConfig;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// A list of rules that belong to this policy. There must always be a default rule which is a rule with priority 2147483647 and match all condition (for the match condition this means match "*" for srcIpRanges and for the networkMatch condition every field must be either match "*" or not set). If no rules are provided when creating a security policy, a default rule with action "allow" will be added.
  final Input<List<SecurityPolicyRule>>? rules;

  /// The type indicates the intended use of the security policy. - CLOUD_ARMOR: Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services. They filter requests before they hit the origin servers. - CLOUD_ARMOR_EDGE: Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage). They filter requests before the request is served from Google's cache. - CLOUD_ARMOR_INTERNAL_SERVICE: Cloud Armor internal service policies can be configured to filter HTTP requests targeting services managed by Traffic Director in a service mesh. They filter requests before the request is served from the application. - CLOUD_ARMOR_NETWORK: Cloud Armor network policies can be configured to filter packets targeting network load balancing resources such as backend services, target pools, target instances, and instances with external IPs. They filter requests before the request is served from the application. This field can be set only at resource creation time.
  final Input<SecurityPolicyType>? type;

  /// Definitions of user-defined fields for CLOUD_ARMOR_NETWORK policies. A user-defined field consists of up to 4 bytes extracted from a fixed offset in the packet, relative to the IPv4, IPv6, TCP, or UDP header, with an optional mask to select certain bits. Rules may then specify matching values for these fields. Example: userDefinedFields: - name: "ipv4_fragment_offset" base: IPV4 offset: 6 size: 2 mask: "0x1fff"
  final Input<List<SecurityPolicyUserDefinedField>>? userDefinedFields;

  SecurityPolicyArgs({
    this.adaptiveProtectionConfig,
    this.advancedOptionsConfig,
    this.associations,
    this.cloudArmorConfig,
    this.ddosProtectionConfig,
    this.description,
    this.displayName,
    this.labels,
    this.name,
    this.project,
    this.recaptchaOptionsConfig,
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
              SecurityPolicyAdaptiveProtectionConfig, Map<String, dynamic>>(
          adaptiveProtectionConfigValue, (value) => value.toMap());
    }
    final advancedOptionsConfigValue = advancedOptionsConfig;
    if (advancedOptionsConfigValue != null) {
      map['advancedOptionsConfig'] = Input.mapOptionalInputValue<
              SecurityPolicyAdvancedOptionsConfig, Map<String, dynamic>>(
          advancedOptionsConfigValue, (value) => value.toMap());
    }
    final associationsValue = associations;
    if (associationsValue != null) {
      map['associations'] = Input.mapOptionalInputValue<
              List<SecurityPolicyAssociation>, List<Map<String, dynamic>>>(
          associationsValue,
          (value) =>
              Input.encodeList<SecurityPolicyAssociation, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final cloudArmorConfigValue = cloudArmorConfig;
    if (cloudArmorConfigValue != null) {
      map['cloudArmorConfig'] = Input.mapOptionalInputValue<
              SecurityPolicyCloudArmorConfig, Map<String, dynamic>>(
          cloudArmorConfigValue, (value) => value.toMap());
    }
    final ddosProtectionConfigValue = ddosProtectionConfig;
    if (ddosProtectionConfigValue != null) {
      map['ddosProtectionConfig'] = Input.mapOptionalInputValue<
              SecurityPolicyDdosProtectionConfig, Map<String, dynamic>>(
          ddosProtectionConfigValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
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
              SecurityPolicyRecaptchaOptionsConfig, Map<String, dynamic>>(
          recaptchaOptionsConfigValue, (value) => value.toMap());
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = Input.mapOptionalInputValue<List<SecurityPolicyRule>,
              List<Map<String, dynamic>>>(
          rulesValue,
          (value) => Input.encodeList<SecurityPolicyRule, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<SecurityPolicyType, String>(
          typeValue, (value) => value.value);
    }
    final userDefinedFieldsValue = userDefinedFields;
    if (userDefinedFieldsValue != null) {
      map['userDefinedFields'] = Input.mapOptionalInputValue<
              List<SecurityPolicyUserDefinedField>, List<Map<String, dynamic>>>(
          userDefinedFieldsValue,
          (value) => Input.encodeList<SecurityPolicyUserDefinedField,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory SecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyArgs(
      adaptiveProtectionConfig:
          Input.asOptionalInput<SecurityPolicyAdaptiveProtectionConfig>(
              map['adaptiveProtectionConfig']),
      advancedOptionsConfig:
          Input.asOptionalInput<SecurityPolicyAdvancedOptionsConfig>(
              map['advancedOptionsConfig']),
      associations: Input.asOptionalInput<List<SecurityPolicyAssociation>>(
          map['associations']),
      cloudArmorConfig: Input.asOptionalInput<SecurityPolicyCloudArmorConfig>(
          map['cloudArmorConfig']),
      ddosProtectionConfig:
          Input.asOptionalInput<SecurityPolicyDdosProtectionConfig>(
              map['ddosProtectionConfig']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      recaptchaOptionsConfig:
          Input.asOptionalInput<SecurityPolicyRecaptchaOptionsConfig>(
              map['recaptchaOptionsConfig']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      rules: Input.asOptionalInput<List<SecurityPolicyRule>>(map['rules']),
      type: Input.asOptionalInput<SecurityPolicyType>(map['type']),
      userDefinedFields:
          Input.asOptionalInput<List<SecurityPolicyUserDefinedField>>(
              map['userDefinedFields']),
    );
  }
}
