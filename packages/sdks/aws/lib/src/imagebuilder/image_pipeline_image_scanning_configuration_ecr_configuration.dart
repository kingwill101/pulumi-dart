// ignore_for_file: unused_element, unnecessary_cast


class ImagePipelineImageScanningConfigurationEcrConfiguration {
  final List<String>? containerTags;
  /// The name of the repository to scan
  final String? repositoryName;

  /// Creates a new [ImagePipelineImageScanningConfigurationEcrConfiguration].
  /// [containerTags] Optional.
  /// [repositoryName] The name of the repository to scan
  ImagePipelineImageScanningConfigurationEcrConfiguration({
    this.containerTags,
    this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerTags': ?containerTags,
      'repositoryName': ?repositoryName,
    };
  }

  factory ImagePipelineImageScanningConfigurationEcrConfiguration.fromMap(Map<String, dynamic> map) {
    return ImagePipelineImageScanningConfigurationEcrConfiguration(
      containerTags: map['containerTags'] == null ? null : (map['containerTags'] as List).cast<String>(),
      repositoryName: map['repositoryName'] == null ? null : map['repositoryName'] as String,
    );
  }
}

