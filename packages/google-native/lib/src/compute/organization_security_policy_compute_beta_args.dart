// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_security_policy_type_compute_beta.dart';
import 'security_policy_adaptive_protection_config_compute_beta.dart';
import 'security_policy_advanced_options_config_compute_beta.dart';
import 'security_policy_association_compute_beta.dart';
import 'security_policy_ddos_protection_config_compute_beta.dart';
import 'security_policy_recaptcha_options_config_compute_beta.dart';
import 'security_policy_rule_compute_beta.dart';
import 'security_policy_user_defined_field_compute_beta.dart';

/// {@template pulumi_compute_beta_organization_security_policy_compute_beta_args_doc}
/// The set of arguments for OrganizationSecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_organization_security_policy_compute_beta_args_doc}
class OrganizationSecurityPolicyComputeBetaArgs {
  final pulumi.Input<SecurityPolicyAdaptiveProtectionConfigComputeBeta>?
      adaptiveProtectionConfig;
  final pulumi.Input<SecurityPolicyAdvancedOptionsConfigComputeBeta>?
      advancedOptionsConfig;

  /// A list of associations that belong to this policy.
  final pulumi.Input<List<SecurityPolicyAssociationComputeBeta>>? associations;
  final pulumi.Input<SecurityPolicyDdosProtectionConfigComputeBeta>?
      ddosProtectionConfig;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// User-provided name of the Organization security plicy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is FIREWALL. The name must be 1-63 characters long, and comply with https://www.ietf.org/rfc/rfc1035.txt. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? displayName;

  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final pulumi.Input<Map<String, String>>? labels;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// Parent ID for this request. The ID can be either be "folders/[FOLDER_ID]" if the parent is a folder or "organizations/[ORGANIZATION_ID]" if the parent is an organization.
  final pulumi.Input<String>? parentId;
  final pulumi.Input<SecurityPolicyRecaptchaOptionsConfigComputeBeta>?
      recaptchaOptionsConfig;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// A list of rules that belong to this policy. There must always be a default rule which is a rule with priority 2147483647 and match all condition (for the match condition this means match "*" for srcIpRanges and for the networkMatch condition every field must be either match "*" or not set). If no rules are provided when creating a security policy, a default rule with action "allow" will be added.
  final pulumi.Input<List<SecurityPolicyRuleComputeBeta>>? rules;

  /// The type indicates the intended use of the security policy. - CLOUD_ARMOR: Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services. They filter requests before they hit the origin servers. - CLOUD_ARMOR_EDGE: Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage). They filter requests before the request is served from Google's cache. - CLOUD_ARMOR_INTERNAL_SERVICE: Cloud Armor internal service policies can be configured to filter HTTP requests targeting services managed by Traffic Director in a service mesh. They filter requests before the request is served from the application. - CLOUD_ARMOR_NETWORK: Cloud Armor network policies can be configured to filter packets targeting network load balancing resources such as backend services, target pools, target instances, and instances with external IPs. They filter requests before the request is served from the application. This field can be set only at resource creation time.
  final pulumi.Input<OrganizationSecurityPolicyTypeComputeBeta>? type;

  /// Definitions of user-defined fields for CLOUD_ARMOR_NETWORK policies. A user-defined field consists of up to 4 bytes extracted from a fixed offset in the packet, relative to the IPv4, IPv6, TCP, or UDP header, with an optional mask to select certain bits. Rules may then specify matching values for these fields. Example: userDefinedFields: - name: "ipv4_fragment_offset" base: IPV4 offset: 6 size: 2 mask: "0x1fff"
  final pulumi.Input<List<SecurityPolicyUserDefinedFieldComputeBeta>>?
      userDefinedFields;

  /// Creates a new [OrganizationSecurityPolicyComputeBetaArgs].
  /// [adaptiveProtectionConfig] Optional.
  /// [advancedOptionsConfig] Optional.
  /// [associations] A list of associations that belong to this policy.
  /// [ddosProtectionConfig] Optional.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [displayName] User-provided name of the Organization security plicy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is FIREWALL. The name must be 1-63 characters long, and comply with https://www.ietf.org/rfc/rfc1035.txt. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [parentId] Parent ID for this request. The ID can be either be "folders/[FOLDER_ID]" if the parent is a folder or "organizations/[ORGANIZATION_ID]" if the parent is an organization.
  /// [recaptchaOptionsConfig] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [rules] A list of rules that belong to this policy. There must always be a default rule which is a rule with priority 2147483647 and match all condition (for the match condition this means match "*" for srcIpRanges and for the networkMatch condition every field must be either match "*" or not set). If no rules are provided when creating a security policy, a default rule with action "allow" will be added.
  /// [type] The type indicates the intended use of the security policy. - CLOUD_ARMOR: Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services. They filter requests before they hit the origin servers. - CLOUD_ARMOR_EDGE: Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage). They filter requests before the request is served from Google's cache. - CLOUD_ARMOR_INTERNAL_SERVICE: Cloud Armor internal service policies can be configured to filter HTTP requests targeting services managed by Traffic Director in a service mesh. They filter requests before the request is served from the application. - CLOUD_ARMOR_NETWORK: Cloud Armor network policies can be configured to filter packets targeting network load balancing resources such as backend services, target pools, target instances, and instances with external IPs. They filter requests before the request is served from the application. This field can be set only at resource creation time.
  /// [userDefinedFields] Definitions of user-defined fields for CLOUD_ARMOR_NETWORK policies. A user-defined field consists of up to 4 bytes extracted from a fixed offset in the packet, relative to the IPv4, IPv6, TCP, or UDP header, with an optional mask to select certain bits. Rules may then specify matching values for these fields. Example: userDefinedFields: - name: "ipv4_fragment_offset" base: IPV4 offset: 6 size: 2 mask: "0x1fff"
  OrganizationSecurityPolicyComputeBetaArgs({
    SecurityPolicyAdaptiveProtectionConfigComputeBeta? adaptiveProtectionConfig,
    SecurityPolicyAdvancedOptionsConfigComputeBeta? advancedOptionsConfig,
    List<SecurityPolicyAssociationComputeBeta>? associations,
    SecurityPolicyDdosProtectionConfigComputeBeta? ddosProtectionConfig,
    String? description,
    String? displayName,
    Map<String, String>? labels,
    String? name,
    String? parentId,
    SecurityPolicyRecaptchaOptionsConfigComputeBeta? recaptchaOptionsConfig,
    String? requestId,
    List<SecurityPolicyRuleComputeBeta>? rules,
    OrganizationSecurityPolicyTypeComputeBeta? type,
    List<SecurityPolicyUserDefinedFieldComputeBeta>? userDefinedFields,
  })  : adaptiveProtectionConfig = pulumi.Input.asOptionalInput<
                SecurityPolicyAdaptiveProtectionConfigComputeBeta>(
            adaptiveProtectionConfig),
        advancedOptionsConfig = pulumi.Input.asOptionalInput<
                SecurityPolicyAdvancedOptionsConfigComputeBeta>(
            advancedOptionsConfig),
        associations = pulumi.Input.asOptionalInput<
            List<SecurityPolicyAssociationComputeBeta>>(associations),
        ddosProtectionConfig = pulumi.Input.asOptionalInput<
                SecurityPolicyDdosProtectionConfigComputeBeta>(
            ddosProtectionConfig),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        name = pulumi.Input.asOptionalInput<String>(name),
        parentId = pulumi.Input.asOptionalInput<String>(parentId),
        recaptchaOptionsConfig = pulumi.Input.asOptionalInput<
                SecurityPolicyRecaptchaOptionsConfigComputeBeta>(
            recaptchaOptionsConfig),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        rules =
            pulumi.Input.asOptionalInput<List<SecurityPolicyRuleComputeBeta>>(
                rules),
        type = pulumi.Input.asOptionalInput<
            OrganizationSecurityPolicyTypeComputeBeta>(type),
        userDefinedFields = pulumi.Input.asOptionalInput<
            List<SecurityPolicyUserDefinedFieldComputeBeta>>(userDefinedFields);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adaptiveProtectionConfigValue = adaptiveProtectionConfig;
    if (adaptiveProtectionConfigValue != null) {
      map['adaptiveProtectionConfig'] = pulumi.Input.mapOptionalInputValue<
              SecurityPolicyAdaptiveProtectionConfigComputeBeta,
              Map<String, dynamic>>(
          adaptiveProtectionConfigValue, (value) => value.toMap());
    }
    final advancedOptionsConfigValue = advancedOptionsConfig;
    if (advancedOptionsConfigValue != null) {
      map['advancedOptionsConfig'] = pulumi.Input.mapOptionalInputValue<
              SecurityPolicyAdvancedOptionsConfigComputeBeta,
              Map<String, dynamic>>(
          advancedOptionsConfigValue, (value) => value.toMap());
    }
    final associationsValue = associations;
    if (associationsValue != null) {
      map['associations'] = pulumi.Input.mapOptionalInputValue<
              List<SecurityPolicyAssociationComputeBeta>,
              List<Map<String, dynamic>>>(
          associationsValue,
          (value) => pulumi.Input.encodeList<
              SecurityPolicyAssociationComputeBeta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final ddosProtectionConfigValue = ddosProtectionConfig;
    if (ddosProtectionConfigValue != null) {
      map['ddosProtectionConfig'] = pulumi.Input.mapOptionalInputValue<
              SecurityPolicyDdosProtectionConfigComputeBeta,
              Map<String, dynamic>>(
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
    final parentIdValue = parentId;
    if (parentIdValue != null) {
      map['parentId'] = parentIdValue;
    }
    final recaptchaOptionsConfigValue = recaptchaOptionsConfig;
    if (recaptchaOptionsConfigValue != null) {
      map['recaptchaOptionsConfig'] = pulumi.Input.mapOptionalInputValue<
              SecurityPolicyRecaptchaOptionsConfigComputeBeta,
              Map<String, dynamic>>(
          recaptchaOptionsConfigValue, (value) => value.toMap());
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = pulumi.Input.mapOptionalInputValue<
              List<SecurityPolicyRuleComputeBeta>, List<Map<String, dynamic>>>(
          rulesValue,
          (value) => pulumi.Input.encodeList<SecurityPolicyRuleComputeBeta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = pulumi.Input.mapOptionalInputValue<
          OrganizationSecurityPolicyTypeComputeBeta,
          String>(typeValue, (value) => value.value);
    }
    final userDefinedFieldsValue = userDefinedFields;
    if (userDefinedFieldsValue != null) {
      map['userDefinedFields'] = pulumi.Input.mapOptionalInputValue<
              List<SecurityPolicyUserDefinedFieldComputeBeta>,
              List<Map<String, dynamic>>>(
          userDefinedFieldsValue,
          (value) => pulumi.Input.encodeList<
              SecurityPolicyUserDefinedFieldComputeBeta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory OrganizationSecurityPolicyComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return OrganizationSecurityPolicyComputeBetaArgs(
      adaptiveProtectionConfig: map['adaptiveProtectionConfig'] == null
          ? null
          : SecurityPolicyAdaptiveProtectionConfigComputeBeta.fromMap(
              (map['adaptiveProtectionConfig'] as Map).cast<String, dynamic>()),
      advancedOptionsConfig: map['advancedOptionsConfig'] == null
          ? null
          : SecurityPolicyAdvancedOptionsConfigComputeBeta.fromMap(
              (map['advancedOptionsConfig'] as Map).cast<String, dynamic>()),
      associations: map['associations'] == null
          ? null
          : pulumi.Input.decodeList<SecurityPolicyAssociationComputeBeta>(
              map['associations'],
              (value) => SecurityPolicyAssociationComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ddosProtectionConfig: map['ddosProtectionConfig'] == null
          ? null
          : SecurityPolicyDdosProtectionConfigComputeBeta.fromMap(
              (map['ddosProtectionConfig'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      parentId: map['parentId'] == null ? null : map['parentId'] as String,
      recaptchaOptionsConfig: map['recaptchaOptionsConfig'] == null
          ? null
          : SecurityPolicyRecaptchaOptionsConfigComputeBeta.fromMap(
              (map['recaptchaOptionsConfig'] as Map).cast<String, dynamic>()),
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      rules: map['rules'] == null
          ? null
          : pulumi.Input.decodeList<SecurityPolicyRuleComputeBeta>(
              map['rules'],
              (value) => SecurityPolicyRuleComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      type: map['type'] == null
          ? null
          : OrganizationSecurityPolicyTypeComputeBeta.fromValue(
              map['type'] as String),
      userDefinedFields: map['userDefinedFields'] == null
          ? null
          : pulumi.Input.decodeList<SecurityPolicyUserDefinedFieldComputeBeta>(
              map['userDefinedFields'],
              (value) => SecurityPolicyUserDefinedFieldComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
