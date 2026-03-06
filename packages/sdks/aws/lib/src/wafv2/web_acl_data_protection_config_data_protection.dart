// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_data_protection_config_data_protection_field.dart';

class WebAclDataProtectionConfigDataProtection {
  /// Specifies how to protect the field. Valid values are `SUBSTITUTION` or `HASH`.
  final pulumi.Input<String> action;
  /// Boolean to specify whether to also exclude any rate-based rule details from the data protection you have enabled for a given field.
  final pulumi.Input<bool>? excludeRateBasedDetails;
  /// Boolean to specify whether to also exclude any rule match details from the data protection you have enabled for a given field. AWS WAF logs these details for non-terminating matching rules and for the terminating matching rule.
  final pulumi.Input<bool>? excludeRuleMatchDetails;
  /// Specifies the field type and optional keys to apply the protection behavior to. See `field` block below for details.
  final pulumi.Input<WebAclDataProtectionConfigDataProtectionField> field;

  /// Creates a new [WebAclDataProtectionConfigDataProtection].
  /// [action] Specifies how to protect the field. Valid values are `SUBSTITUTION` or `HASH`.
  /// [excludeRateBasedDetails] Boolean to specify whether to also exclude any rate-based rule details from the data protection you have enabled for a given field.
  /// [excludeRuleMatchDetails] Boolean to specify whether to also exclude any rule match details from the data protection you have enabled for a given field. AWS WAF logs these details for non-terminating matching rules and for the terminating matching rule.
  /// [field] Specifies the field type and optional keys to apply the protection behavior to. See `field` block below for details.
  const WebAclDataProtectionConfigDataProtection({
    required this.action,
    this.excludeRateBasedDetails,
    this.excludeRuleMatchDetails,
    required this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'excludeRateBasedDetails': ?excludeRateBasedDetails,
      'excludeRuleMatchDetails': ?excludeRuleMatchDetails,
      'field': pulumi.Input.mapInputValue<WebAclDataProtectionConfigDataProtectionField, Map<String, dynamic>>(field, (value) => value.toMap()),
    };
  }

  factory WebAclDataProtectionConfigDataProtection.fromMap(Map<String, dynamic> map) {
    return WebAclDataProtectionConfigDataProtection(
      action: pulumi.Input.fromValue(map['action'] as String),
      excludeRateBasedDetails: (() { final guardedValue = map['excludeRateBasedDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      excludeRuleMatchDetails: (() { final guardedValue = map['excludeRuleMatchDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      field: pulumi.Input.fromValue(WebAclDataProtectionConfigDataProtectionField.fromMap((map['field']! as Map).cast<String, dynamic>())),
    );
  }
}

