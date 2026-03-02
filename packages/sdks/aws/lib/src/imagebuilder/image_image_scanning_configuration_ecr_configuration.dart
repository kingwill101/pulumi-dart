// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageImageScanningConfigurationEcrConfiguration {
  /// Set of tags for Image Builder to apply to the output container image that that Amazon Inspector scans.
  final pulumi.Input<List<String>>? containerTags;
  /// The name of the container repository that Amazon Inspector scans to identify findings for your container images.
  final pulumi.Input<String>? repositoryName;

  /// Creates a new [ImageImageScanningConfigurationEcrConfiguration].
  /// [containerTags] Set of tags for Image Builder to apply to the output container image that that Amazon Inspector scans.
  /// [repositoryName] The name of the container repository that Amazon Inspector scans to identify findings for your container images.
  ImageImageScanningConfigurationEcrConfiguration({
    this.containerTags,
    this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerTags': ?containerTags,
      'repositoryName': ?repositoryName,
    };
  }

  factory ImageImageScanningConfigurationEcrConfiguration.fromMap(Map<String, dynamic> map) {
    return ImageImageScanningConfigurationEcrConfiguration(
      containerTags: map['containerTags'] == null ? null : ((map['containerTags'] as List).cast<String>()).input(),
      repositoryName: map['repositoryName'] == null ? null : (map['repositoryName'] as String).input(),
    );
  }
}

