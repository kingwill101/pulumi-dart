// ignore_for_file: unused_element, unnecessary_cast


/// Definition of NetworkInterfaceStatusEnumValue
class NetworkInterfaceStatusEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [NetworkInterfaceStatusEnumValueResponse].
  /// [value] Property value
  NetworkInterfaceStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory NetworkInterfaceStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceStatusEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

