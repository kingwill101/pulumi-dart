// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_function_custom_container_config_acceleration_info.dart';
import 'v3_function_custom_container_config_health_check_config.dart';

class V3FunctionCustomContainerConfig {
  /// (Deprecated since v1.242.0) Image Acceleration Information (Obsolete)
  final pulumi.Input<V3FunctionCustomContainerConfigAccelerationInfo>? accelerationInfo;
  /// Whether to enable Image acceleration. Default: The Default value, indicating that image acceleration is enabled. None: indicates that image acceleration is disabled. (Obsolete)
  final pulumi.Input<String>? accelerationType;
  /// ACR Enterprise version Image Repository ID, which must be entered when using ACR Enterprise version image. (Obsolete)
  final pulumi.Input<String>? acrInstanceId;
  /// Container startup parameters.
  final pulumi.Input<List<String>>? commands;
  /// Container start command.
  final pulumi.Input<List<String>>? entrypoints;
  /// Function custom health check configuration See `health_check_config` below.
  final pulumi.Input<V3FunctionCustomContainerConfigHealthCheckConfig>? healthCheckConfig;
  /// The container Image address.
  final pulumi.Input<String>? image;
  /// The listening port of the HTTP Server when the custom container runs.
  final pulumi.Input<int>? port;
  /// The actual digest version of the deployed Image. The code version specified by this digest is used when the function starts.
  final pulumi.Input<String>? resolvedImageUri;

  /// Creates a new [V3FunctionCustomContainerConfig].
  /// [accelerationInfo] (Deprecated since v1.242.0) Image Acceleration Information (Obsolete)
  /// [accelerationType] Whether to enable Image acceleration. Default: The Default value, indicating that image acceleration is enabled. None: indicates that image acceleration is disabled. (Obsolete)
  /// [acrInstanceId] ACR Enterprise version Image Repository ID, which must be entered when using ACR Enterprise version image. (Obsolete)
  /// [commands] Container startup parameters.
  /// [entrypoints] Container start command.
  /// [healthCheckConfig] Function custom health check configuration See `health_check_config` below.
  /// [image] The container Image address.
  /// [port] The listening port of the HTTP Server when the custom container runs.
  /// [resolvedImageUri] The actual digest version of the deployed Image. The code version specified by this digest is used when the function starts.
  V3FunctionCustomContainerConfig({
    this.accelerationInfo,
    this.accelerationType,
    this.acrInstanceId,
    this.commands,
    this.entrypoints,
    this.healthCheckConfig,
    this.image,
    this.port,
    this.resolvedImageUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerationInfo': ?pulumi.Input.mapOptionalInputValue<V3FunctionCustomContainerConfigAccelerationInfo, Map<String, dynamic>>(accelerationInfo, (value) => value.toMap()),
      'accelerationType': ?accelerationType,
      'acrInstanceId': ?acrInstanceId,
      'commands': ?commands,
      'entrypoints': ?entrypoints,
      'healthCheckConfig': ?pulumi.Input.mapOptionalInputValue<V3FunctionCustomContainerConfigHealthCheckConfig, Map<String, dynamic>>(healthCheckConfig, (value) => value.toMap()),
      'image': ?image,
      'port': ?port,
      'resolvedImageUri': ?resolvedImageUri,
    };
  }

  factory V3FunctionCustomContainerConfig.fromMap(Map<String, dynamic> map) {
    return V3FunctionCustomContainerConfig(
      accelerationInfo: map['accelerationInfo'] == null ? null : (V3FunctionCustomContainerConfigAccelerationInfo.fromMap((map['accelerationInfo'] as Map).cast<String, dynamic>())).input(),
      accelerationType: map['accelerationType'] == null ? null : (map['accelerationType'] as String).input(),
      acrInstanceId: map['acrInstanceId'] == null ? null : (map['acrInstanceId'] as String).input(),
      commands: map['commands'] == null ? null : ((map['commands'] as List).cast<String>()).input(),
      entrypoints: map['entrypoints'] == null ? null : ((map['entrypoints'] as List).cast<String>()).input(),
      healthCheckConfig: map['healthCheckConfig'] == null ? null : (V3FunctionCustomContainerConfigHealthCheckConfig.fromMap((map['healthCheckConfig'] as Map).cast<String, dynamic>())).input(),
      image: map['image'] == null ? null : (map['image'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      resolvedImageUri: map['resolvedImageUri'] == null ? null : (map['resolvedImageUri'] as String).input(),
    );
  }
}

