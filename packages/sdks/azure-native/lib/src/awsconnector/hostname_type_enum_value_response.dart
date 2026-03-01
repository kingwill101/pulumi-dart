// ignore_for_file: unused_element, unnecessary_cast


/// Definition of HostnameTypeEnumValue
class HostnameTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [HostnameTypeEnumValueResponse].
  /// [value] Property value
  HostnameTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory HostnameTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return HostnameTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

