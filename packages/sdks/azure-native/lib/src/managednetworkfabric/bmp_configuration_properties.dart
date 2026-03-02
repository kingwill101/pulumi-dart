// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'station_connection_properties.dart';

/// BGP Monitoring Protocol (BMP) Configuration properties.
class BmpConfigurationProperties {
  /// Export Policy for the BMP Configuration.
  final pulumi.Input<String>? exportPolicy;
  /// Monitored Address Families for the BMP Configuration.
  final pulumi.Input<List<String>>? monitoredAddressFamilies;
  /// The List of Network ID's that need to be monitored.
  final pulumi.Input<List<String>>? monitoredNetworks;
  /// Scope resource ARM Identifier.
  final pulumi.Input<String>? scopeResourceId;
  /// Enabling a station. Either True/False.
  final pulumi.Input<String>? stationConfigurationState;
  /// Station Connection Mode.
  final pulumi.Input<String>? stationConnectionMode;
  /// Station Connection Properties.
  final pulumi.Input<StationConnectionProperties>? stationConnectionProperties;
  /// IP Address of the station.
  final pulumi.Input<String>? stationIp;
  /// Name of the station.
  final pulumi.Input<String>? stationName;
  /// Network of the station
  final pulumi.Input<String>? stationNetwork;
  /// Port of the station. Default value is 5000.
  final pulumi.Input<int>? stationPort;

  /// Creates a new [BmpConfigurationProperties].
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
  BmpConfigurationProperties({
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
      'stationConnectionProperties': ?pulumi.Input.mapOptionalInputValue<StationConnectionProperties, Map<String, dynamic>>(stationConnectionProperties, (value) => value.toMap()),
      'stationIp': ?stationIp,
      'stationName': ?stationName,
      'stationNetwork': ?stationNetwork,
      'stationPort': ?stationPort,
    };
  }

  factory BmpConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return BmpConfigurationProperties(
      exportPolicy: map['exportPolicy'] == null ? null : (map['exportPolicy']! as String).input(),
      monitoredAddressFamilies: map['monitoredAddressFamilies'] == null ? null : ((map['monitoredAddressFamilies']! as List).cast<String>()).input(),
      monitoredNetworks: map['monitoredNetworks'] == null ? null : ((map['monitoredNetworks']! as List).cast<String>()).input(),
      scopeResourceId: map['scopeResourceId'] == null ? null : (map['scopeResourceId']! as String).input(),
      stationConfigurationState: map['stationConfigurationState'] == null ? null : (map['stationConfigurationState']! as String).input(),
      stationConnectionMode: map['stationConnectionMode'] == null ? null : (map['stationConnectionMode']! as String).input(),
      stationConnectionProperties: map['stationConnectionProperties'] == null ? null : (StationConnectionProperties.fromMap((map['stationConnectionProperties']! as Map).cast<String, dynamic>())).input(),
      stationIp: map['stationIp'] == null ? null : (map['stationIp']! as String).input(),
      stationName: map['stationName'] == null ? null : (map['stationName']! as String).input(),
      stationNetwork: map['stationNetwork'] == null ? null : (map['stationNetwork']! as String).input(),
      stationPort: map['stationPort'] == null ? null : (map['stationPort']! as int).input(),
    );
  }
}

