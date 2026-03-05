// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_image_scanning_configuration_ecr_configuration.dart';

class GetImageImageScanningConfiguration {
  /// Configuration block with ECR configuration.
  final pulumi.Input<List<GetImageImageScanningConfigurationEcrConfiguration>> ecrConfigurations;
  /// Indicates whether Image Builder keeps a snapshot of the vulnerability scans that Amazon Inspector runs against the build instance when you create a new image.
  final pulumi.Input<bool> imageScanningEnabled;

  /// Creates a new [GetImageImageScanningConfiguration].
  /// [ecrConfigurations] Configuration block with ECR configuration.
  /// [imageScanningEnabled] Indicates whether Image Builder keeps a snapshot of the vulnerability scans that Amazon Inspector runs against the build instance when you create a new image.
  GetImageImageScanningConfiguration({
    required this.ecrConfigurations,
    required this.imageScanningEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ecrConfigurations': pulumi.Input.mapInputValue<List<GetImageImageScanningConfigurationEcrConfiguration>, List<Map<String, dynamic>>>(ecrConfigurations, (value) => pulumi.Input.encodeList<GetImageImageScanningConfigurationEcrConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageScanningEnabled': imageScanningEnabled,
    };
  }

  factory GetImageImageScanningConfiguration.fromMap(Map<String, dynamic> map) {
    return GetImageImageScanningConfiguration(
      ecrConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetImageImageScanningConfigurationEcrConfiguration>(map['ecrConfigurations']!, (value) => GetImageImageScanningConfigurationEcrConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      imageScanningEnabled: pulumi.Input.fromValue(map['imageScanningEnabled'] as bool),
    );
  }
}

