// ignore_for_file: unused_element, unnecessary_cast


/// The API deployment parameter metadata.
class ApiDeploymentParameterMetadataResponse {
  /// The description.
  final String? description;
  /// The display name.
  final String? displayName;
  /// Indicates whether its required.
  final bool? isRequired;
  /// The type.
  final String? type;
  /// The visibility.
  final String? visibility;

  /// Creates a new [ApiDeploymentParameterMetadataResponse].
  /// [description] The description.
  /// [displayName] The display name.
  /// [isRequired] Indicates whether its required.
  /// [type] The type.
  /// [visibility] The visibility.
  ApiDeploymentParameterMetadataResponse({
    this.description,
    this.displayName,
    this.isRequired,
    this.type,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'isRequired': ?isRequired,
      'type': ?type,
      'visibility': ?visibility,
    };
  }

  factory ApiDeploymentParameterMetadataResponse.fromMap(Map<String, dynamic> map) {
    return ApiDeploymentParameterMetadataResponse(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      isRequired: map['isRequired'] == null ? null : map['isRequired'] as bool,
      type: map['type'] == null ? null : map['type'] as String,
      visibility: map['visibility'] == null ? null : map['visibility'] as String,
    );
  }
}

