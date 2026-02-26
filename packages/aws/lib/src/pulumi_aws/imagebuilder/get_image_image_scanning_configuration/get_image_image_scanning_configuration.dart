// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_image_image_scanning_configuration_ecr_configuration/get_image_image_scanning_configuration_ecr_configuration.dart';

class GetImageImageScanningConfiguration {
  /// Configuration block with ECR configuration.
  final List<GetImageImageScanningConfigurationEcrConfiguration>
      ecrConfigurations;

  /// Indicates whether Image Builder keeps a snapshot of the vulnerability scans that Amazon Inspector runs against the build instance when you create a new image.
  final bool imageScanningEnabled;

  GetImageImageScanningConfiguration({
    required this.ecrConfigurations,
    required this.imageScanningEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ecrConfigurations'] = Input.encodeList<
        GetImageImageScanningConfigurationEcrConfiguration,
        Map<String, dynamic>>(ecrConfigurations, (value) => value.toMap());
    map['imageScanningEnabled'] = imageScanningEnabled;
    return map;
  }

  factory GetImageImageScanningConfiguration.fromMap(Map<String, dynamic> map) {
    return GetImageImageScanningConfiguration(
      ecrConfigurations:
          Input.decodeList<GetImageImageScanningConfigurationEcrConfiguration>(
              map['ecrConfigurations'],
              (value) =>
                  GetImageImageScanningConfigurationEcrConfiguration.fromMap(
                      (value as Map).cast<String, dynamic>())),
      imageScanningEnabled: map['imageScanningEnabled'] as bool,
    );
  }
}
