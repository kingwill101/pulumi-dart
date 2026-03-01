// ignore_for_file: unused_element, unnecessary_cast


/// Describes threat kill chain phase entity
class ThreatIntelligenceParsedPatternTypeValue {
  /// Value of parsed pattern
  final String? value;
  /// Type of the value
  final String? valueType;

  /// Creates a new [ThreatIntelligenceParsedPatternTypeValue].
  /// [value] Value of parsed pattern
  /// [valueType] Type of the value
  ThreatIntelligenceParsedPatternTypeValue({
    this.value,
    this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
      'valueType': ?valueType,
    };
  }

  factory ThreatIntelligenceParsedPatternTypeValue.fromMap(Map<String, dynamic> map) {
    return ThreatIntelligenceParsedPatternTypeValue(
      value: map['value'] == null ? null : map['value'] as String,
      valueType: map['valueType'] == null ? null : map['valueType'] as String,
    );
  }
}

