// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ProjectVisibilityTypeEnumValue
class ProjectVisibilityTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ProjectVisibilityTypeEnumValueResponse].
  /// [value] Property value
  ProjectVisibilityTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ProjectVisibilityTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ProjectVisibilityTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

