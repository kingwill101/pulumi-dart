// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bmp_configuration_properties_response.dart';
import 'last_operation_properties_response.dart';

/// Network Monitor Properties defines the properties of the resource.
class NetworkMonitorPropertiesResponse {
  /// Administrative state of the resource.
  final pulumi.Input<String> administrativeState;
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// BMP Configurations for the Network Fabric.
  final pulumi.Input<BmpConfigurationPropertiesResponse>? bmpConfiguration;
  /// Configuration state of the resource.
  final pulumi.Input<String> configurationState;
  /// Details of the last operation performed on the resource
  final pulumi.Input<LastOperationPropertiesResponse> lastOperation;
  /// Provides you the latest status of the NetworkMonitor resource
  final pulumi.Input<String> provisioningState;

  /// Creates a new [NetworkMonitorPropertiesResponse].
  /// [administrativeState] Administrative state of the resource.
  /// [annotation] Switch configuration description.
  /// [bmpConfiguration] BMP Configurations for the Network Fabric.
  /// [configurationState] Configuration state of the resource.
  /// [lastOperation] Details of the last operation performed on the resource
  /// [provisioningState] Provides you the latest status of the NetworkMonitor resource
  const NetworkMonitorPropertiesResponse({
    required this.administrativeState,
    this.annotation,
    this.bmpConfiguration,
    required this.configurationState,
    required this.lastOperation,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': administrativeState,
      'annotation': ?annotation,
      'bmpConfiguration': ?pulumi.Input.mapOptionalInputValue<BmpConfigurationPropertiesResponse, Map<String, dynamic>>(bmpConfiguration, (value) => value.toMap()),
      'configurationState': configurationState,
      'lastOperation': pulumi.Input.mapInputValue<LastOperationPropertiesResponse, Map<String, dynamic>>(lastOperation, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory NetworkMonitorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NetworkMonitorPropertiesResponse(
      administrativeState: pulumi.Input.fromValue(map['administrativeState'] as String),
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bmpConfiguration: (() { final guardedValue = map['bmpConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BmpConfigurationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      configurationState: pulumi.Input.fromValue(map['configurationState'] as String),
      lastOperation: pulumi.Input.fromValue(LastOperationPropertiesResponse.fromMap((map['lastOperation']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

