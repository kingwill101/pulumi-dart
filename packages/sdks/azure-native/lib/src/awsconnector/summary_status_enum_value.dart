// ignore_for_file: unused_element, unnecessary_cast


/// Definition of SummaryStatusEnumValue
class SummaryStatusEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [SummaryStatusEnumValue].
  /// [value] Property value
  SummaryStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory SummaryStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return SummaryStatusEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

