// ignore_for_file: unused_element, unnecessary_cast


/// Definition of LastRunErrorStatusCodeEnumValue
class LastRunErrorStatusCodeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [LastRunErrorStatusCodeEnumValue].
  /// [value] Property value
  LastRunErrorStatusCodeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory LastRunErrorStatusCodeEnumValue.fromMap(Map<String, dynamic> map) {
    return LastRunErrorStatusCodeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

