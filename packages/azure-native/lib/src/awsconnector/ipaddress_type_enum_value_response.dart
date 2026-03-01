// ignore_for_file: unused_element, unnecessary_cast


/// Definition of IPAddressTypeEnumValue
class IPAddressTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [IPAddressTypeEnumValueResponse].
  /// [value] Property value
  IPAddressTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory IPAddressTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return IPAddressTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

