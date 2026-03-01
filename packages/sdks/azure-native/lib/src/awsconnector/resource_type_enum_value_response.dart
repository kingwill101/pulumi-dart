// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ResourceTypeEnumValue
class ResourceTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ResourceTypeEnumValueResponse].
  /// [value] Property value
  ResourceTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ResourceTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

