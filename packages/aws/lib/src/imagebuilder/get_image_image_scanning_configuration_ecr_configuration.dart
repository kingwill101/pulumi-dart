// ignore_for_file: unused_element, unnecessary_cast

class GetImageImageScanningConfigurationEcrConfiguration {
  /// Set of tags for Image Builder to apply to the output container image that that Amazon Inspector scans.
  final List<String> containerTags;

  /// The name of the container repository that Amazon Inspector scans to identify findings for your container images.
  final String repositoryName;

  /// Creates a new [GetImageImageScanningConfigurationEcrConfiguration].
  /// [containerTags] Set of tags for Image Builder to apply to the output container image that that Amazon Inspector scans.
  /// [repositoryName] The name of the container repository that Amazon Inspector scans to identify findings for your container images.
  GetImageImageScanningConfigurationEcrConfiguration({
    required this.containerTags,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerTags'] = containerTags;
    map['repositoryName'] = repositoryName;
    return map;
  }

  factory GetImageImageScanningConfigurationEcrConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetImageImageScanningConfigurationEcrConfiguration(
      containerTags: (map['containerTags'] as List).cast<String>(),
      repositoryName: map['repositoryName'] as String,
    );
  }
}
