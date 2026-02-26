// ignore_for_file: unused_element, unnecessary_cast

class GetImagePipelineImageScanningConfigurationEcrConfiguration {
  /// Tags that are added to the output containers that are scanned
  final List<String> containerTags;

  /// The name of the container repository that Amazon Inspector scans
  final String repositoryName;

  GetImagePipelineImageScanningConfigurationEcrConfiguration({
    required this.containerTags,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerTags'] = containerTags;
    map['repositoryName'] = repositoryName;
    return map;
  }

  factory GetImagePipelineImageScanningConfigurationEcrConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetImagePipelineImageScanningConfigurationEcrConfiguration(
      containerTags: (map['containerTags'] as List).cast<String>(),
      repositoryName: map['repositoryName'] as String,
    );
  }
}
