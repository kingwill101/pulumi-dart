// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_image_config_kernel_gateway_image_config_file_system_config.dart';
import 'app_image_config_kernel_gateway_image_config_kernel_spec.dart';

class AppImageConfigKernelGatewayImageConfig {
  /// The URL where the Git repository is located. See File System Config details below.
  final AppImageConfigKernelGatewayImageConfigFileSystemConfig? fileSystemConfig;
  /// The default branch for the Git repository. See Kernel Spec details below.
  final List<AppImageConfigKernelGatewayImageConfigKernelSpec> kernelSpecs;

  /// Creates a new [AppImageConfigKernelGatewayImageConfig].
  /// [fileSystemConfig] The URL where the Git repository is located. See File System Config details below.
  /// [kernelSpecs] The default branch for the Git repository. See Kernel Spec details below.
  AppImageConfigKernelGatewayImageConfig({
    this.fileSystemConfig,
    required this.kernelSpecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemConfig': ?fileSystemConfig == null ? null : fileSystemConfig!.toMap(),
      'kernelSpecs': pulumi.Input.encodeList<AppImageConfigKernelGatewayImageConfigKernelSpec, Map<String, dynamic>>(kernelSpecs, (value) => value.toMap()),
    };
  }

  factory AppImageConfigKernelGatewayImageConfig.fromMap(Map<String, dynamic> map) {
    return AppImageConfigKernelGatewayImageConfig(
      fileSystemConfig: map['fileSystemConfig'] == null ? null : AppImageConfigKernelGatewayImageConfigFileSystemConfig.fromMap((map['fileSystemConfig'] as Map).cast<String, dynamic>()),
      kernelSpecs: pulumi.Input.decodeList<AppImageConfigKernelGatewayImageConfigKernelSpec>(map['kernelSpecs'], (value) => AppImageConfigKernelGatewayImageConfigKernelSpec.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

