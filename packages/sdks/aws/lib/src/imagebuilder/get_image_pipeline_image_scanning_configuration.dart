// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_pipeline_image_scanning_configuration_ecr_configuration.dart';

class GetImagePipelineImageScanningConfiguration {
  /// List if an object with ecr configuration for image scanning
  final pulumi.Input<List<GetImagePipelineImageScanningConfigurationEcrConfiguration>> ecrConfigurations;
  /// Whether image scanning is enabled.
  final pulumi.Input<bool> imageScanningEnabled;

  /// Creates a new [GetImagePipelineImageScanningConfiguration].
  /// [ecrConfigurations] List if an object with ecr configuration for image scanning
  /// [imageScanningEnabled] Whether image scanning is enabled.
  GetImagePipelineImageScanningConfiguration({
    required this.ecrConfigurations,
    required this.imageScanningEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ecrConfigurations': pulumi.Input.mapInputValue<List<GetImagePipelineImageScanningConfigurationEcrConfiguration>, List<Map<String, dynamic>>>(ecrConfigurations, (value) => pulumi.Input.encodeList<GetImagePipelineImageScanningConfigurationEcrConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageScanningEnabled': imageScanningEnabled,
    };
  }

  factory GetImagePipelineImageScanningConfiguration.fromMap(Map<String, dynamic> map) {
    return GetImagePipelineImageScanningConfiguration(
      ecrConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetImagePipelineImageScanningConfigurationEcrConfiguration>(map['ecrConfigurations']!, (value) => GetImagePipelineImageScanningConfigurationEcrConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      imageScanningEnabled: pulumi.Input.fromValue(map['imageScanningEnabled'] as bool),
    );
  }
}

