// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_pipeline_image_scanning_configuration_ecr_configuration.dart';

class GetImagePipelineImageScanningConfiguration {
  /// List if an object with ecr configuration for image scanning
  final List<GetImagePipelineImageScanningConfigurationEcrConfiguration>
      ecrConfigurations;

  /// Whether image scanning is enabled.
  final bool imageScanningEnabled;

  /// Creates a new [GetImagePipelineImageScanningConfiguration].
  /// [ecrConfigurations] List if an object with ecr configuration for image scanning
  /// [imageScanningEnabled] Whether image scanning is enabled.
  GetImagePipelineImageScanningConfiguration({
    required this.ecrConfigurations,
    required this.imageScanningEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ecrConfigurations'] = pulumi.Input.encodeList<
        GetImagePipelineImageScanningConfigurationEcrConfiguration,
        Map<String, dynamic>>(ecrConfigurations, (value) => value.toMap());
    map['imageScanningEnabled'] = imageScanningEnabled;
    return map;
  }

  factory GetImagePipelineImageScanningConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetImagePipelineImageScanningConfiguration(
      ecrConfigurations: pulumi.Input.decodeList<
              GetImagePipelineImageScanningConfigurationEcrConfiguration>(
          map['ecrConfigurations'],
          (value) => GetImagePipelineImageScanningConfigurationEcrConfiguration
              .fromMap((value as Map).cast<String, dynamic>())),
      imageScanningEnabled: map['imageScanningEnabled'] as bool,
    );
  }
}
