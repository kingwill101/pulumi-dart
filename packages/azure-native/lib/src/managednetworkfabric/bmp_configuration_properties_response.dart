// ignore_for_file: unused_element, unnecessary_cast

import 'station_connection_properties_response.dart';

/// BGP Monitoring Protocol (BMP) Configuration properties.
class BmpConfigurationPropertiesResponse {
  /// Export Policy for the BMP Configuration.
  final String? exportPolicy;
  /// Monitored Address Families for the BMP Configuration.
  final List<String>? monitoredAddressFamilies;
  /// The List of Network ID's that need to be monitored.
  final List<String>? monitoredNetworks;
  /// Scope resource ARM Identifier.
  final String? scopeResourceId;
  /// Enabling a station. Either True/False.
  final String? stationConfigurationState;
  /// Station Connection Mode.
  final String? stationConnectionMode;
  /// Station Connection Properties.
  final StationConnectionPropertiesResponse? stationConnectionProperties;
  /// IP Address of the station.
  final String? stationIp;
  /// Name of the station.
  final String? stationName;
  /// Network of the station
  final String? stationNetwork;
  /// Port of the station. Default value is 5000.
  final int? stationPort;

  /// Creates a new [BmpConfigurationPropertiesResponse].
  /// [exportPolicy] Export Policy for the BMP Configuration.
  /// [monitoredAddressFamilies] Monitored Address Families for the BMP Configuration.
  /// [monitoredNetworks] The List of Network ID's that need to be monitored.
  /// [scopeResourceId] Scope resource ARM Identifier.
  /// [stationConfigurationState] Enabling a station. Either True/False.
  /// [stationConnectionMode] Station Connection Mode.
  /// [stationConnectionProperties] Station Connection Properties.
  /// [stationIp] IP Address of the station.
  /// [stationName] Name of the station.
  /// [stationNetwork] Network of the station
  /// [stationPort] Port of the station. Default value is 5000.
  BmpConfigurationPropertiesResponse({
    this.exportPolicy,
    this.monitoredAddressFamilies,
    this.monitoredNetworks,
    this.scopeResourceId,
    this.stationConfigurationState,
    this.stationConnectionMode,
    this.stationConnectionProperties,
    this.stationIp,
    this.stationName,
    this.stationNetwork,
    this.stationPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportPolicy': ?exportPolicy,
      'monitoredAddressFamilies': ?monitoredAddressFamilies,
      'monitoredNetworks': ?monitoredNetworks,
      'scopeResourceId': ?scopeResourceId,
      'stationConfigurationState': ?stationConfigurationState,
      'stationConnectionMode': ?stationConnectionMode,
      'stationConnectionProperties': ?stationConnectionProperties == null ? null : stationConnectionProperties!.toMap(),
      'stationIp': ?stationIp,
      'stationName': ?stationName,
      'stationNetwork': ?stationNetwork,
      'stationPort': ?stationPort,
    };
  }

  factory BmpConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BmpConfigurationPropertiesResponse(
      exportPolicy: map['exportPolicy'] == null ? null : map['exportPolicy'] as String,
      monitoredAddressFamilies: map['monitoredAddressFamilies'] == null ? null : (map['monitoredAddressFamilies'] as List).cast<String>(),
      monitoredNetworks: map['monitoredNetworks'] == null ? null : (map['monitoredNetworks'] as List).cast<String>(),
      scopeResourceId: map['scopeResourceId'] == null ? null : map['scopeResourceId'] as String,
      stationConfigurationState: map['stationConfigurationState'] == null ? null : map['stationConfigurationState'] as String,
      stationConnectionMode: map['stationConnectionMode'] == null ? null : map['stationConnectionMode'] as String,
      stationConnectionProperties: map['stationConnectionProperties'] == null ? null : StationConnectionPropertiesResponse.fromMap((map['stationConnectionProperties'] as Map).cast<String, dynamic>()),
      stationIp: map['stationIp'] == null ? null : map['stationIp'] as String,
      stationName: map['stationName'] == null ? null : map['stationName'] as String,
      stationNetwork: map['stationNetwork'] == null ? null : map['stationNetwork'] as String,
      stationPort: map['stationPort'] == null ? null : map['stationPort'] as int,
    );
  }
}

