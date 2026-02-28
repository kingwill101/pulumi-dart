// ignore_for_file: unused_element, unnecessary_cast


/// Range used to validate doubles and floats.
class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRangeResponse {
  /// The inclusive maximum of the acceptable range.
  final double max;
  /// The inclusive minimum of the acceptable range.
  final double min;

  /// Creates a new [EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRangeResponse].
  /// [max] The inclusive maximum of the acceptable range.
  /// [min] The inclusive minimum of the acceptable range.
  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRangeResponse({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRangeResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRangeResponse(
      max: map['max'] as double,
      min: map['min'] as double,
    );
  }
}

