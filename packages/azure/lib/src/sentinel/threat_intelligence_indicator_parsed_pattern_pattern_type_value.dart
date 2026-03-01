// ignore_for_file: unused_element, unnecessary_cast


class ThreatIntelligenceIndicatorParsedPatternPatternTypeValue {
  /// The value of the parsed pattern type.
  final String? value;
  /// The type of the value of the parsed pattern type value.
  final String? valueType;

  /// Creates a new [ThreatIntelligenceIndicatorParsedPatternPatternTypeValue].
  /// [value] The value of the parsed pattern type.
  /// [valueType] The type of the value of the parsed pattern type value.
  ThreatIntelligenceIndicatorParsedPatternPatternTypeValue({
    this.value,
    this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
      'valueType': ?valueType,
    };
  }

  factory ThreatIntelligenceIndicatorParsedPatternPatternTypeValue.fromMap(Map<String, dynamic> map) {
    return ThreatIntelligenceIndicatorParsedPatternPatternTypeValue(
      value: map['value'] == null ? null : map['value'] as String,
      valueType: map['valueType'] == null ? null : map['valueType'] as String,
    );
  }
}

