// ignore_for_file: unused_element, unnecessary_cast


/// Definition of PingStatusEnumValue
class PingStatusEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [PingStatusEnumValue].
  /// [value] Property value
  PingStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PingStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return PingStatusEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

