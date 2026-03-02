// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImagePipelineImageScanningConfigurationEcrConfiguration {
  final pulumi.Input<List<String>>? containerTags;
  /// The name of the repository to scan
  final pulumi.Input<String>? repositoryName;

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
      containerTags: map['containerTags'] == null ? null : ((map['containerTags'] as List).cast<String>()).input(),
      repositoryName: map['repositoryName'] == null ? null : (map['repositoryName'] as String).input(),
    );
  }
}

