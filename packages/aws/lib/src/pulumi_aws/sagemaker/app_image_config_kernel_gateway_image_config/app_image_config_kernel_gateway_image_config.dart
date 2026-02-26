// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_image_config_kernel_gateway_image_config_file_system_config/app_image_config_kernel_gateway_image_config_file_system_config.dart';
import '../app_image_config_kernel_gateway_image_config_kernel_spec/app_image_config_kernel_gateway_image_config_kernel_spec.dart';

class AppImageConfigKernelGatewayImageConfig {
  /// The URL where the Git repository is located. See File System Config details below.
  final AppImageConfigKernelGatewayImageConfigFileSystemConfig?
      fileSystemConfig;

  /// The default branch for the Git repository. See Kernel Spec details below.
  final List<AppImageConfigKernelGatewayImageConfigKernelSpec> kernelSpecs;

  AppImageConfigKernelGatewayImageConfig({
    this.fileSystemConfig,
    required this.kernelSpecs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fileSystemConfigValue = fileSystemConfig;
    if (fileSystemConfigValue != null) {
      map['fileSystemConfig'] = fileSystemConfigValue.toMap();
    }
    map['kernelSpecs'] = Input.encodeList<
        AppImageConfigKernelGatewayImageConfigKernelSpec,
        Map<String, dynamic>>(kernelSpecs, (value) => value.toMap());
    return map;
  }

  factory AppImageConfigKernelGatewayImageConfig.fromMap(
      Map<String, dynamic> map) {
    return AppImageConfigKernelGatewayImageConfig(
      fileSystemConfig: map['fileSystemConfig'] == null
          ? null
          : AppImageConfigKernelGatewayImageConfigFileSystemConfig.fromMap(
              (map['fileSystemConfig'] as Map).cast<String, dynamic>()),
      kernelSpecs:
          Input.decodeList<AppImageConfigKernelGatewayImageConfigKernelSpec>(
              map['kernelSpecs'],
              (value) =>
                  AppImageConfigKernelGatewayImageConfigKernelSpec.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
