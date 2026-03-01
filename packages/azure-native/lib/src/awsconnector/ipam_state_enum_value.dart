// ignore_for_file: unused_element, unnecessary_cast


/// Definition of IpamStateEnumValue
class IpamStateEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [IpamStateEnumValue].
  /// [value] Property value
  IpamStateEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory IpamStateEnumValue.fromMap(Map<String, dynamic> map) {
    return IpamStateEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

