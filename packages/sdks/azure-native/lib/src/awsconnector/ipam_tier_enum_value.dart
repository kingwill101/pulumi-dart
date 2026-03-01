// ignore_for_file: unused_element, unnecessary_cast


/// Definition of IpamTierEnumValue
class IpamTierEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [IpamTierEnumValue].
  /// [value] Property value
  IpamTierEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory IpamTierEnumValue.fromMap(Map<String, dynamic> map) {
    return IpamTierEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

