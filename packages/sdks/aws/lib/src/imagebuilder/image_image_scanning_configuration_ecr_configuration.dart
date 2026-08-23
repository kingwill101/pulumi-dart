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
  const ImageImageScanningConfigurationEcrConfiguration({
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
      containerTags: (() { final guardedValue = map['containerTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      repositoryName: (() { final guardedValue = map['repositoryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
