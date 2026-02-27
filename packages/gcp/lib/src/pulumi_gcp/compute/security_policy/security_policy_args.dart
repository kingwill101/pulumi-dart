// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../security_policy_adaptive_protection_config/security_policy_adaptive_protection_config.dart';
import '../security_policy_advanced_options_config/security_policy_advanced_options_config.dart';
import '../security_policy_recaptcha_options_config/security_policy_recaptcha_options_config.dart';
import '../security_policy_rule/security_policy_rule.dart';

/// The set of arguments for SecurityPolicy.
class SecurityPolicyArgs {
  /// Configuration for [Google Cloud Armor Adaptive Protection](https://cloud.google.com/armor/docs/adaptive-protection-overview?hl=en). Structure is documented below.
  final pulumi.Input<SecurityPolicyAdaptiveProtectionConfig>?
      adaptiveProtectionConfig;

  /// [Advanced Configuration Options](https://cloud.google.com/armor/docs/security-policy-overview#json-parsing).
  /// Structure is documented below.
  final pulumi.Input<SecurityPolicyAdvancedOptionsConfig>?
      advancedOptionsConfig;

  /// An optional description of this security policy. Max size is 2048.
  final pulumi.Input<String>? description;

  /// Labels to apply to this address. A list of key->value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The name of the security policy.
  ///
  /// - - -
  final pulumi.Input<String>? name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// [reCAPTCHA Configuration Options](https://cloud.google.com/armor/docs/configure-security-policies?hl=en#use_a_manual_challenge_to_distinguish_between_human_or_automated_clients). Structure is documented below.
  final pulumi.Input<SecurityPolicyRecaptchaOptionsConfig>?
      recaptchaOptionsConfig;

  /// The set of rules that belong to this policy. There must always be a default
  /// rule (rule with priority 2147483647 and match "\*"). If no rules are provided when creating a
  /// security policy, a default rule with action "allow" will be added. Structure is documented below.
  final pulumi.Input<List<SecurityPolicyRule>>? rules;

  /// The type indicates the intended use of the security policy. This field can be set only at resource creation time.
  /// * `CLOUD_ARMOR` - Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services.
  /// They filter requests before they hit the origin servers.
  /// * `CLOUD_ARMOR_EDGE` - Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services
  /// (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage).
  /// They filter requests before the request is served from Google's cache.
  /// * `CLOUD_ARMOR_INTERNAL_SERVICE` - Cloud Armor internal service policies can be configured to filter HTTP requests targeting services
  /// managed by Traffic Director in a service mesh. They filter requests before the request is served from the application.
  final pulumi.Input<String>? type;

  SecurityPolicyArgs({
    this.adaptiveProtectionConfig,
    this.advancedOptionsConfig,
    this.description,
    this.labels,
    this.name,
    this.project,
    this.recaptchaOptionsConfig,
    this.rules,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adaptiveProtectionConfigValue = adaptiveProtectionConfig;
    if (adaptiveProtectionConfigValue != null) {
      map['adaptiveProtectionConfig'] = pulumi.Input.mapOptionalInputValue<
              SecurityPolicyAdaptiveProtectionConfig, Map<String, dynamic>>(
          adaptiveProtectionConfigValue, (value) => value.toMap());
    }
    final advancedOptionsConfigValue = advancedOptionsConfig;
    if (advancedOptionsConfigValue != null) {
      map['advancedOptionsConfig'] = pulumi.Input.mapOptionalInputValue<
              SecurityPolicyAdvancedOptionsConfig, Map<String, dynamic>>(
          advancedOptionsConfigValue, (value) => value.toMap());
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
      map['recaptchaOptionsConfig'] = pulumi.Input.mapOptionalInputValue<
              SecurityPolicyRecaptchaOptionsConfig, Map<String, dynamic>>(
          recaptchaOptionsConfigValue, (value) => value.toMap());
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = pulumi.Input.mapOptionalInputValue<
              List<SecurityPolicyRule>, List<Map<String, dynamic>>>(
          rulesValue,
          (value) =>
              pulumi.Input.encodeList<SecurityPolicyRule, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory SecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyArgs(
      adaptiveProtectionConfig:
          pulumi.Input.asOptionalInput<SecurityPolicyAdaptiveProtectionConfig>(
              map['adaptiveProtectionConfig']),
      advancedOptionsConfig:
          pulumi.Input.asOptionalInput<SecurityPolicyAdvancedOptionsConfig>(
              map['advancedOptionsConfig']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      recaptchaOptionsConfig:
          pulumi.Input.asOptionalInput<SecurityPolicyRecaptchaOptionsConfig>(
              map['recaptchaOptionsConfig']),
      rules:
          pulumi.Input.asOptionalInput<List<SecurityPolicyRule>>(map['rules']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
    );
  }
}
