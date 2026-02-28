// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_param_spec_entry_validation_rule_double_range.dart';
import 'enterprise_crm_eventbus_proto_param_spec_entry_validation_rule_int_range.dart';
import 'enterprise_crm_eventbus_proto_param_spec_entry_validation_rule_string_regex.dart';

class EnterpriseCrmEventbusProtoParamSpecEntryValidationRule {
  final EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange?
      doubleRange;
  final EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange?
      intRange;
  final EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex?
      stringRegex;

  /// Creates a new [EnterpriseCrmEventbusProtoParamSpecEntryValidationRule].
  /// [doubleRange] Optional.
  /// [intRange] Optional.
  /// [stringRegex] Optional.
  EnterpriseCrmEventbusProtoParamSpecEntryValidationRule({
    this.doubleRange,
    this.intRange,
    this.stringRegex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final doubleRangeValue = doubleRange;
    if (doubleRangeValue != null) {
      map['doubleRange'] = doubleRangeValue.toMap();
    }
    final intRangeValue = intRange;
    if (intRangeValue != null) {
      map['intRange'] = intRangeValue.toMap();
    }
    final stringRegexValue = stringRegex;
    if (stringRegexValue != null) {
      map['stringRegex'] = stringRegexValue.toMap();
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryValidationRule.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryValidationRule(
      doubleRange: map['doubleRange'] == null
          ? null
          : EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange
              .fromMap((map['doubleRange'] as Map).cast<String, dynamic>()),
      intRange: map['intRange'] == null
          ? null
          : EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange
              .fromMap((map['intRange'] as Map).cast<String, dynamic>()),
      stringRegex: map['stringRegex'] == null
          ? null
          : EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex
              .fromMap((map['stringRegex'] as Map).cast<String, dynamic>()),
    );
  }
}
