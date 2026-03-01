// ignore_for_file: unused_element, unnecessary_cast


/// Definition of JobStatusEnumValue
class JobStatusEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [JobStatusEnumValue].
  /// [value] Property value
  JobStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory JobStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return JobStatusEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

