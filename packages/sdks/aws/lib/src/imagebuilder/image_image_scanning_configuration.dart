// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_image_scanning_configuration_ecr_configuration.dart';

class ImageImageScanningConfiguration {
  /// Configuration block with ECR configuration. Detailed below.
  final pulumi.Input<ImageImageScanningConfigurationEcrConfiguration?>? ecrConfiguration;
  /// Indicates whether Image Builder keeps a snapshot of the vulnerability scans that Amazon Inspector runs against the build instance when you create a new image. Defaults to `false`.
  final pulumi.Input<bool?>? imageScanningEnabled;

  /// Creates a new [ImageImageScanningConfiguration].
  /// [ecrConfiguration] Configuration block with ECR configuration. Detailed below.
  /// [imageScanningEnabled] Indicates whether Image Builder keeps a snapshot of the vulnerability scans that Amazon Inspector runs against the build instance when you create a new image. Defaults to `false`.
  const ImageImageScanningConfiguration({
    this.ecrConfiguration,
    this.imageScanningEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ecrConfiguration': ?pulumi.Input.mapOptionalInputValue<ImageImageScanningConfigurationEcrConfiguration, Map<String, dynamic>>(ecrConfiguration, (value) => value.toMap()),
      'imageScanningEnabled': ?imageScanningEnabled,
    };
  }

  factory ImageImageScanningConfiguration.fromMap(Map<String, dynamic> map) {
    return ImageImageScanningConfiguration(
      ecrConfiguration: (() { final guardedValue = map['ecrConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageImageScanningConfigurationEcrConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageScanningEnabled: (() { final guardedValue = map['imageScanningEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
