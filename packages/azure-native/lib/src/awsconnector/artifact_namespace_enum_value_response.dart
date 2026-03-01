// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ArtifactNamespaceEnumValue
class ArtifactNamespaceEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ArtifactNamespaceEnumValueResponse].
  /// [value] Property value
  ArtifactNamespaceEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ArtifactNamespaceEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactNamespaceEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

