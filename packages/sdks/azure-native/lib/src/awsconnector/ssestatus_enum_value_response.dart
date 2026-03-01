// ignore_for_file: unused_element, unnecessary_cast


/// Definition of SSEStatusEnumValue
class SSEStatusEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [SSEStatusEnumValueResponse].
  /// [value] Property value
  SSEStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory SSEStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return SSEStatusEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

