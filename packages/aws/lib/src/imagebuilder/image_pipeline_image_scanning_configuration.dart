// ignore_for_file: unused_element, unnecessary_cast

import 'image_pipeline_image_scanning_configuration_ecr_configuration.dart';

class ImagePipelineImageScanningConfiguration {
  /// Configuration block with ECR configuration for image scanning. Detailed below.
  final ImagePipelineImageScanningConfigurationEcrConfiguration?
  ecrConfiguration;

  /// Whether image scans are enabled. Defaults to `false`.
  final bool? imageScanningEnabled;

  /// Creates a new [ImagePipelineImageScanningConfiguration].
  /// [ecrConfiguration] Configuration block with ECR configuration for image scanning. Detailed below.
  /// [imageScanningEnabled] Whether image scans are enabled. Defaults to `false`.
  ImagePipelineImageScanningConfiguration({
    this.ecrConfiguration,
    this.imageScanningEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ecrConfiguration': ?ecrConfiguration == null
          ? null
          : ecrConfiguration!.toMap(),
      'imageScanningEnabled': ?imageScanningEnabled,
    };
  }

  factory ImagePipelineImageScanningConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ImagePipelineImageScanningConfiguration(
      ecrConfiguration: map['ecrConfiguration'] == null
          ? null
          : ImagePipelineImageScanningConfigurationEcrConfiguration.fromMap(
              (map['ecrConfiguration'] as Map).cast<String, dynamic>(),
            ),
      imageScanningEnabled: map['imageScanningEnabled'] == null
          ? null
          : map['imageScanningEnabled'] as bool,
    );
  }
}
