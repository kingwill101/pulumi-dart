// ignore_for_file: unused_element, unnecessary_cast


/// Definition of HttpTokensStateEnumValue
class HttpTokensStateEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [HttpTokensStateEnumValueResponse].
  /// [value] Property value
  HttpTokensStateEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory HttpTokensStateEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return HttpTokensStateEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

