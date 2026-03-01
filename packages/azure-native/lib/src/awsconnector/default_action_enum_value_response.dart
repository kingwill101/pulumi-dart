// ignore_for_file: unused_element, unnecessary_cast


/// Definition of DefaultActionEnumValue
class DefaultActionEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [DefaultActionEnumValueResponse].
  /// [value] Property value
  DefaultActionEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory DefaultActionEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return DefaultActionEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

