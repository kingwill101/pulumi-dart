// ignore_for_file: unused_element, unnecessary_cast

import '../image_image_scanning_configuration_ecr_configuration/image_image_scanning_configuration_ecr_configuration.dart';

class ImageImageScanningConfiguration {
  /// Configuration block with ECR configuration. Detailed below.
  final ImageImageScanningConfigurationEcrConfiguration? ecrConfiguration;

  /// Indicates whether Image Builder keeps a snapshot of the vulnerability scans that Amazon Inspector runs against the build instance when you create a new image. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? imageScanningEnabled;

  ImageImageScanningConfiguration({
    this.ecrConfiguration,
    this.imageScanningEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ecrConfigurationValue = ecrConfiguration;
    if (ecrConfigurationValue != null) {
      map['ecrConfiguration'] = ecrConfigurationValue.toMap();
    }
    final imageScanningEnabledValue = imageScanningEnabled;
    if (imageScanningEnabledValue != null) {
      map['imageScanningEnabled'] = imageScanningEnabledValue;
    }
    return map;
  }

  factory ImageImageScanningConfiguration.fromMap(Map<String, dynamic> map) {
    return ImageImageScanningConfiguration(
      ecrConfiguration: map['ecrConfiguration'] == null
          ? null
          : ImageImageScanningConfigurationEcrConfiguration.fromMap(
              (map['ecrConfiguration'] as Map).cast<String, dynamic>()),
      imageScanningEnabled: map['imageScanningEnabled'] == null
          ? null
          : map['imageScanningEnabled'] as bool,
    );
  }
}
