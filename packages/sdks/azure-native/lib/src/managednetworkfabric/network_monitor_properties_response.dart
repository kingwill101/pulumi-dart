// ignore_for_file: unused_element, unnecessary_cast

import 'bmp_configuration_properties_response.dart';
import 'last_operation_properties_response.dart';

/// Network Monitor Properties defines the properties of the resource.
class NetworkMonitorPropertiesResponse {
  /// Administrative state of the resource.
  final String administrativeState;
  /// Switch configuration description.
  final String? annotation;
  /// BMP Configurations for the Network Fabric.
  final BmpConfigurationPropertiesResponse? bmpConfiguration;
  /// Configuration state of the resource.
  final String configurationState;
  /// Details of the last operation performed on the resource
  final LastOperationPropertiesResponse lastOperation;
  /// Provides you the latest status of the NetworkMonitor resource
  final String provisioningState;

  /// Creates a new [NetworkMonitorPropertiesResponse].
  /// [administrativeState] Administrative state of the resource.
  /// [annotation] Switch configuration description.
  /// [bmpConfiguration] BMP Configurations for the Network Fabric.
  /// [configurationState] Configuration state of the resource.
  /// [lastOperation] Details of the last operation performed on the resource
  /// [provisioningState] Provides you the latest status of the NetworkMonitor resource
  NetworkMonitorPropertiesResponse({
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
      'bmpConfiguration': ?bmpConfiguration == null ? null : bmpConfiguration!.toMap(),
      'configurationState': configurationState,
      'lastOperation': lastOperation.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory NetworkMonitorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NetworkMonitorPropertiesResponse(
      administrativeState: map['administrativeState'] as String,
      annotation: map['annotation'] == null ? null : map['annotation'] as String,
      bmpConfiguration: map['bmpConfiguration'] == null ? null : BmpConfigurationPropertiesResponse.fromMap((map['bmpConfiguration'] as Map).cast<String, dynamic>()),
      configurationState: map['configurationState'] as String,
      lastOperation: LastOperationPropertiesResponse.fromMap((map['lastOperation'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

