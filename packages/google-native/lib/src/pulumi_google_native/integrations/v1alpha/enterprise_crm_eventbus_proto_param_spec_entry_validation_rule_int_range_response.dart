// ignore_for_file: unused_element, unnecessary_cast

/// Range used to validate longs and ints.
class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRangeResponse {
  /// The inclusive maximum of the acceptable range.
  final String max;

  /// The inclusive minimum of the acceptable range.
  final String min;

  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRangeResponse({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRangeResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRangeResponse(
      max: map['max'] as String,
      min: map['min'] as String,
    );
  }
}
