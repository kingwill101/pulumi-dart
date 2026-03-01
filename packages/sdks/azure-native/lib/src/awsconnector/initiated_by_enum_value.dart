// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InitiatedByEnumValue
class InitiatedByEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [InitiatedByEnumValue].
  /// [value] Property value
  InitiatedByEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InitiatedByEnumValue.fromMap(Map<String, dynamic> map) {
    return InitiatedByEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

