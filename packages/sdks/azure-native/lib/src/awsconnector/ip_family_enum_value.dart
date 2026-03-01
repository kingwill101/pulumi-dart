// ignore_for_file: unused_element, unnecessary_cast


/// Definition of IpFamilyEnumValue
class IpFamilyEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [IpFamilyEnumValue].
  /// [value] Property value
  IpFamilyEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory IpFamilyEnumValue.fromMap(Map<String, dynamic> map) {
    return IpFamilyEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

