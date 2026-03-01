// ignore_for_file: unused_element, unnecessary_cast

import 'network_interface_ipconfiguration_response.dart';

/// Application gateway backendhealth http settings.
class ApplicationGatewayBackendHealthServerResponse {
  /// IP address or FQDN of backend server.
  final String? address;
  /// Health of backend server.
  final String? health;
  /// Health Probe Log.
  final String? healthProbeLog;
  /// Reference to IP configuration of backend server.
  final NetworkInterfaceIPConfigurationResponse? ipConfiguration;

  /// Creates a new [ApplicationGatewayBackendHealthServerResponse].
  /// [address] IP address or FQDN of backend server.
  /// [health] Health of backend server.
  /// [healthProbeLog] Health Probe Log.
  /// [ipConfiguration] Reference to IP configuration of backend server.
  ApplicationGatewayBackendHealthServerResponse({
    this.address,
    this.health,
    this.healthProbeLog,
    this.ipConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'health': ?health,
      'healthProbeLog': ?healthProbeLog,
      'ipConfiguration': ?ipConfiguration == null ? null : ipConfiguration!.toMap(),
    };
  }

  factory ApplicationGatewayBackendHealthServerResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayBackendHealthServerResponse(
      address: map['address'] == null ? null : map['address'] as String,
      health: map['health'] == null ? null : map['health'] as String,
      healthProbeLog: map['healthProbeLog'] == null ? null : map['healthProbeLog'] as String,
      ipConfiguration: map['ipConfiguration'] == null ? null : NetworkInterfaceIPConfigurationResponse.fromMap((map['ipConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

