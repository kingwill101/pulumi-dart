// ignore_for_file: unused_element, unnecessary_cast


/// Definition of IpFamilyEnumValue
class IpFamilyEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [IpFamilyEnumValueResponse].
  /// [value] Property value
  IpFamilyEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory IpFamilyEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return IpFamilyEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

