// ignore_for_file: unused_element, unnecessary_cast

class GetImagePipelineImageScanningConfigurationEcrConfiguration {
  /// Tags that are added to the output containers that are scanned
  final List<String> containerTags;

  /// The name of the container repository that Amazon Inspector scans
  final String repositoryName;

  /// Creates a new [GetImagePipelineImageScanningConfigurationEcrConfiguration].
  /// [containerTags] Tags that are added to the output containers that are scanned
  /// [repositoryName] The name of the container repository that Amazon Inspector scans
  GetImagePipelineImageScanningConfigurationEcrConfiguration({
    required this.containerTags,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerTags': containerTags,
      'repositoryName': repositoryName,
    };
  }

  factory GetImagePipelineImageScanningConfigurationEcrConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetImagePipelineImageScanningConfigurationEcrConfiguration(
      containerTags: (map['containerTags'] as List).cast<String>(),
      repositoryName: map['repositoryName'] as String,
    );
  }
}
