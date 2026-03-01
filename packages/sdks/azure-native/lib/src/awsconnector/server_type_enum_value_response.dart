// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ServerTypeEnumValue
class ServerTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ServerTypeEnumValueResponse].
  /// [value] Property value
  ServerTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ServerTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ServerTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

