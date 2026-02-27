// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_data_protection_config_data_protection_field/web_acl_data_protection_config_data_protection_field.dart';

class WebAclDataProtectionConfigDataProtection {
  /// Specifies how to protect the field. Valid values are `SUBSTITUTION` or `HASH`.
  final String action;

  /// Boolean to specify whether to also exclude any rate-based rule details from the data protection you have enabled for a given field.
  final bool? excludeRateBasedDetails;

  /// Boolean to specify whether to also exclude any rule match details from the data protection you have enabled for a given field. AWS WAF logs these details for non-terminating matching rules and for the terminating matching rule.
  final bool? excludeRuleMatchDetails;

  /// Specifies the field type and optional keys to apply the protection behavior to. See `field` block below for details.
  final WebAclDataProtectionConfigDataProtectionField field;

  WebAclDataProtectionConfigDataProtection({
    required this.action,
    this.excludeRateBasedDetails,
    this.excludeRuleMatchDetails,
    required this.field,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    final excludeRateBasedDetailsValue = excludeRateBasedDetails;
    if (excludeRateBasedDetailsValue != null) {
      map['excludeRateBasedDetails'] = excludeRateBasedDetailsValue;
    }
    final excludeRuleMatchDetailsValue = excludeRuleMatchDetails;
    if (excludeRuleMatchDetailsValue != null) {
      map['excludeRuleMatchDetails'] = excludeRuleMatchDetailsValue;
    }
    map['field'] = field.toMap();
    return map;
  }

  factory WebAclDataProtectionConfigDataProtection.fromMap(
      Map<String, dynamic> map) {
    return WebAclDataProtectionConfigDataProtection(
      action: map['action'] as String,
      excludeRateBasedDetails: map['excludeRateBasedDetails'] == null
          ? null
          : map['excludeRateBasedDetails'] as bool,
      excludeRuleMatchDetails: map['excludeRuleMatchDetails'] == null
          ? null
          : map['excludeRuleMatchDetails'] as bool,
      field: WebAclDataProtectionConfigDataProtectionField.fromMap(
          (map['field'] as Map).cast<String, dynamic>()),
    );
  }
}
