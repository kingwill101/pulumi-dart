// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_param_spec_entry_validation_rule_double_range.dart';
import 'enterprise_crm_eventbus_proto_param_spec_entry_validation_rule_int_range.dart';
import 'enterprise_crm_eventbus_proto_param_spec_entry_validation_rule_string_regex.dart';

class EnterpriseCrmEventbusProtoParamSpecEntryValidationRule {
  final EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange? doubleRange;
  final EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange? intRange;
  final EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex? stringRegex;

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
    return <String, dynamic>{
      'doubleRange': ?doubleRange == null ? null : doubleRange!.toMap(),
      'intRange': ?intRange == null ? null : intRange!.toMap(),
      'stringRegex': ?stringRegex == null ? null : stringRegex!.toMap(),
    };
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryValidationRule.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryValidationRule(
      doubleRange: map['doubleRange'] == null ? null : EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange.fromMap((map['doubleRange'] as Map).cast<String, dynamic>()),
      intRange: map['intRange'] == null ? null : EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange.fromMap((map['intRange'] as Map).cast<String, dynamic>()),
      stringRegex: map['stringRegex'] == null ? null : EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex.fromMap((map['stringRegex'] as Map).cast<String, dynamic>()),
    );
  }
}

