// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_param_spec_entry_validation_rule_double_range_response.dart';
import 'enterprise_crm_eventbus_proto_param_spec_entry_validation_rule_int_range_response.dart';
import 'enterprise_crm_eventbus_proto_param_spec_entry_validation_rule_string_regex_response.dart';

class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleResponse {
  final EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRangeResponse
      doubleRange;
  final EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRangeResponse
      intRange;
  final EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegexResponse
      stringRegex;

  /// Creates a new [EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleResponse].
  /// [doubleRange] Required.
  /// [intRange] Required.
  /// [stringRegex] Required.
  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleResponse({
    required this.doubleRange,
    required this.intRange,
    required this.stringRegex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['doubleRange'] = doubleRange.toMap();
    map['intRange'] = intRange.toMap();
    map['stringRegex'] = stringRegex.toMap();
    return map;
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleResponse(
      doubleRange:
          EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRangeResponse
              .fromMap((map['doubleRange'] as Map).cast<String, dynamic>()),
      intRange:
          EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRangeResponse
              .fromMap((map['intRange'] as Map).cast<String, dynamic>()),
      stringRegex:
          EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegexResponse
              .fromMap((map['stringRegex'] as Map).cast<String, dynamic>()),
    );
  }
}
