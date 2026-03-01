// ignore_for_file: unused_element, unnecessary_cast


/// The source image from which the Image Version is going to be created.
class UserArtifactSourceResponse {
  /// Optional. The defaultConfigurationLink of the artifact, must be a readable storage page blob.
  final String? defaultConfigurationLink;
  /// Required. The mediaLink of the artifact, must be a readable storage page blob.
  final String mediaLink;

  /// Creates a new [UserArtifactSourceResponse].
  /// [defaultConfigurationLink] Optional. The defaultConfigurationLink of the artifact, must be a readable storage page blob.
  /// [mediaLink] Required. The mediaLink of the artifact, must be a readable storage page blob.
  UserArtifactSourceResponse({
    this.defaultConfigurationLink,
    required this.mediaLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultConfigurationLink': ?defaultConfigurationLink,
      'mediaLink': mediaLink,
    };
  }

  factory UserArtifactSourceResponse.fromMap(Map<String, dynamic> map) {
    return UserArtifactSourceResponse(
      defaultConfigurationLink: map['defaultConfigurationLink'] == null ? null : map['defaultConfigurationLink'] as String,
      mediaLink: map['mediaLink'] as String,
    );
  }
}

