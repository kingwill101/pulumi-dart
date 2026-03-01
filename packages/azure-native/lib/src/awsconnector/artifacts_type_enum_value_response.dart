// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ArtifactsTypeEnumValue
class ArtifactsTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ArtifactsTypeEnumValueResponse].
  /// [value] Property value
  ArtifactsTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ArtifactsTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactsTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

