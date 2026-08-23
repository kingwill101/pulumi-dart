// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_pipeline_image_scanning_configuration_ecr_configuration.dart';

class ImagePipelineImageScanningConfiguration {
  /// Configuration block with ECR configuration for image scanning. Detailed below.
  final pulumi.Input<ImagePipelineImageScanningConfigurationEcrConfiguration>? ecrConfiguration;
  /// Whether image scans are enabled. Defaults to `false`.
  final pulumi.Input<bool>? imageScanningEnabled;

  /// Creates a new [ImagePipelineImageScanningConfiguration].
  /// [ecrConfiguration] Configuration block with ECR configuration for image scanning. Detailed below.
  /// [imageScanningEnabled] Whether image scans are enabled. Defaults to `false`.
  const ImagePipelineImageScanningConfiguration({
    this.ecrConfiguration,
    this.imageScanningEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ecrConfiguration': ?pulumi.Input.mapOptionalInputValue<ImagePipelineImageScanningConfigurationEcrConfiguration, Map<String, dynamic>>(ecrConfiguration, (value) => value.toMap()),
      'imageScanningEnabled': ?imageScanningEnabled,
    };
  }

  factory ImagePipelineImageScanningConfiguration.fromMap(Map<String, dynamic> map) {
    return ImagePipelineImageScanningConfiguration(
      ecrConfiguration: (() { final guardedValue = map['ecrConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImagePipelineImageScanningConfigurationEcrConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageScanningEnabled: (() { final guardedValue = map['imageScanningEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
