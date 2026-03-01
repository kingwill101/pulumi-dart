// ignore_for_file: unused_element, unnecessary_cast


/// Definition of IpamTierEnumValue
class IpamTierEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [IpamTierEnumValueResponse].
  /// [value] Property value
  IpamTierEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory IpamTierEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return IpamTierEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

