// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AnomalyResultEnumEnumValue
class AnomalyResultEnumEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [AnomalyResultEnumEnumValue].
  /// [value] Property value
  AnomalyResultEnumEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AnomalyResultEnumEnumValue.fromMap(Map<String, dynamic> map) {
    return AnomalyResultEnumEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

