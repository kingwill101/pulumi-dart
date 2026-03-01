// ignore_for_file: unused_element, unnecessary_cast


/// Definition of TypeEnumValue
class TypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [TypeEnumValueResponse].
  /// [value] Property value
  TypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return TypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

