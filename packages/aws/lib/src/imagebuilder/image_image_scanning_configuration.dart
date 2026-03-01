// ignore_for_file: unused_element, unnecessary_cast

import 'image_image_scanning_configuration_ecr_configuration.dart';

class ImageImageScanningConfiguration {
  /// Configuration block with ECR configuration. Detailed below.
  final ImageImageScanningConfigurationEcrConfiguration? ecrConfiguration;

  /// Indicates whether Image Builder keeps a snapshot of the vulnerability scans that Amazon Inspector runs against the build instance when you create a new image. Defaults to `false`.
  final bool? imageScanningEnabled;

  /// Creates a new [ImageImageScanningConfiguration].
  /// [ecrConfiguration] Configuration block with ECR configuration. Detailed below.
  /// [imageScanningEnabled] Indicates whether Image Builder keeps a snapshot of the vulnerability scans that Amazon Inspector runs against the build instance when you create a new image. Defaults to `false`.
  ImageImageScanningConfiguration({
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

  factory ImageImageScanningConfiguration.fromMap(Map<String, dynamic> map) {
    return ImageImageScanningConfiguration(
      ecrConfiguration: map['ecrConfiguration'] == null
          ? null
          : ImageImageScanningConfigurationEcrConfiguration.fromMap(
              (map['ecrConfiguration'] as Map).cast<String, dynamic>(),
            ),
      imageScanningEnabled: map['imageScanningEnabled'] == null
          ? null
          : map['imageScanningEnabled'] as bool,
    );
  }
}
