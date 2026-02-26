// ignore_for_file: unused_element, unnecessary_cast

/// Range used to validate doubles and floats.
class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRangeResponse {
  /// The inclusive maximum of the acceptable range.
  final double max;

  /// The inclusive minimum of the acceptable range.
  final double min;

  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRangeResponse({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRangeResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRangeResponse(
      max: map['max'] as double,
      min: map['min'] as double,
    );
  }
}
