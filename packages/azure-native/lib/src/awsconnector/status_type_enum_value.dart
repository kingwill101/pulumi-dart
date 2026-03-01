// ignore_for_file: unused_element, unnecessary_cast


/// Definition of statusTypeEnumValue
class StatusTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [StatusTypeEnumValue].
  /// [value] Property value
  StatusTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory StatusTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return StatusTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

