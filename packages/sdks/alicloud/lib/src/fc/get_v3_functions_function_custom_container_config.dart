// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_v3_functions_function_custom_container_config_acceleration_info.dart';
import 'get_v3_functions_function_custom_container_config_health_check_config.dart';

class GetV3FunctionsFunctionCustomContainerConfig {
  /// Image Acceleration Information (Obsolete).
  final pulumi.Input<
    GetV3FunctionsFunctionCustomContainerConfigAccelerationInfo
  >
  accelerationInfo;

  /// Whether to enable Image acceleration. Default: The Default value, indicating that image acceleration is enabled. None: indicates that image acceleration is disabled. (Obsolete).
  final pulumi.Input<String> accelerationType;

  /// ACR Enterprise version Image Repository ID, which must be entered when using ACR Enterprise version image. (Obsolete).
  final pulumi.Input<String> acrInstanceId;

  /// Lifecycle Initialization Phase Callback Instructions.
  final pulumi.Input<List<String>> commands;

  /// Container start command.
  final pulumi.Input<List<String>> entrypoints;

  /// Function custom health check configuration.
  final pulumi.Input<
    GetV3FunctionsFunctionCustomContainerConfigHealthCheckConfig
  >
  healthCheckConfig;

  /// The container Image address.
  final pulumi.Input<String> image;

  /// The listening port of the HTTP Server.
  final pulumi.Input<int> port;

  /// The actual digest version of the deployed Image. The code version specified by this digest is used when the function starts.
  final pulumi.Input<String> resolvedImageUri;

  /// Creates a new [GetV3FunctionsFunctionCustomContainerConfig].
  /// [accelerationInfo] Image Acceleration Information (Obsolete).
  /// [accelerationType] Whether to enable Image acceleration. Default: The Default value, indicating that image acceleration is enabled. None: indicates that image acceleration is disabled. (Obsolete).
  /// [acrInstanceId] ACR Enterprise version Image Repository ID, which must be entered when using ACR Enterprise version image. (Obsolete).
  /// [commands] Lifecycle Initialization Phase Callback Instructions.
  /// [entrypoints] Container start command.
  /// [healthCheckConfig] Function custom health check configuration.
  /// [image] The container Image address.
  /// [port] The listening port of the HTTP Server.
  /// [resolvedImageUri] The actual digest version of the deployed Image. The code version specified by this digest is used when the function starts.
  GetV3FunctionsFunctionCustomContainerConfig({
    required this.accelerationInfo,
    required this.accelerationType,
    required this.acrInstanceId,
    required this.commands,
    required this.entrypoints,
    required this.healthCheckConfig,
    required this.image,
    required this.port,
    required this.resolvedImageUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerationInfo':
          pulumi.Input.mapInputValue<
            GetV3FunctionsFunctionCustomContainerConfigAccelerationInfo,
            Map<String, dynamic>
          >(accelerationInfo, (value) => value.toMap()),
      'accelerationType': accelerationType,
      'acrInstanceId': acrInstanceId,
      'commands': commands,
      'entrypoints': entrypoints,
      'healthCheckConfig':
          pulumi.Input.mapInputValue<
            GetV3FunctionsFunctionCustomContainerConfigHealthCheckConfig,
            Map<String, dynamic>
          >(healthCheckConfig, (value) => value.toMap()),
      'image': image,
      'port': port,
      'resolvedImageUri': resolvedImageUri,
    };
  }

  factory GetV3FunctionsFunctionCustomContainerConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetV3FunctionsFunctionCustomContainerConfig(
      accelerationInfo: pulumi.Input.fromValue(
        GetV3FunctionsFunctionCustomContainerConfigAccelerationInfo.fromMap(
          (map['accelerationInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
      accelerationType: pulumi.Input.fromValue(
        map['accelerationType'] as String,
      ),
      acrInstanceId: pulumi.Input.fromValue(map['acrInstanceId'] as String),
      commands: pulumi.Input.fromValue(
        (map['commands'] as List).cast<String>(),
      ),
      entrypoints: pulumi.Input.fromValue(
        (map['entrypoints'] as List).cast<String>(),
      ),
      healthCheckConfig: pulumi.Input.fromValue(
        GetV3FunctionsFunctionCustomContainerConfigHealthCheckConfig.fromMap(
          (map['healthCheckConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      image: pulumi.Input.fromValue(map['image'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      resolvedImageUri: pulumi.Input.fromValue(
        map['resolvedImageUri'] as String,
      ),
    );
  }
}
