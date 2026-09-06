// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'station_connection_properties.dart';

/// BGP Monitoring Protocol (BMP) Configuration properties.
class BmpConfigurationProperties {
  /// Export Policy for the BMP Configuration.
  final pulumi.Input<dynamic>? exportPolicy;
  /// Monitored Address Families for the BMP Configuration.
  final pulumi.Input<List<dynamic>?>? monitoredAddressFamilies;
  /// The List of Network ID's that need to be monitored.
  final pulumi.Input<List<String>?>? monitoredNetworks;
  /// Scope resource ARM Identifier.
  final pulumi.Input<String?>? scopeResourceId;
  /// Enabling a station. Either True/False.
  final pulumi.Input<dynamic>? stationConfigurationState;
  /// Station Connection Mode.
  final pulumi.Input<dynamic>? stationConnectionMode;
  /// Station Connection Properties.
  final pulumi.Input<StationConnectionProperties?>? stationConnectionProperties;
  /// IP Address of the station.
  final pulumi.Input<String?>? stationIp;
  /// Name of the station.
  final pulumi.Input<String?>? stationName;
  /// Network of the station
  final pulumi.Input<String?>? stationNetwork;
  /// Port of the station. Default value is 5000.
  final pulumi.Input<int?>? stationPort;

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
    pulumi.Input<dynamic>? exportPolicy,
    this.monitoredAddressFamilies,
    this.monitoredNetworks,
    this.scopeResourceId,
    this.stationConfigurationState,
    this.stationConnectionMode,
    this.stationConnectionProperties,
    this.stationIp,
    this.stationName,
    this.stationNetwork,
    pulumi.Input<int?>? stationPort,
  }) : exportPolicy = exportPolicy ?? pulumi.Input.fromValue('All'), stationPort = stationPort ?? pulumi.Input.fromValue(5000);

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
      exportPolicy: (() { final guardedValue = map['exportPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      monitoredAddressFamilies: (() { final guardedValue = map['monitoredAddressFamilies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      monitoredNetworks: (() { final guardedValue = map['monitoredNetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scopeResourceId: (() { final guardedValue = map['scopeResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stationConfigurationState: (() { final guardedValue = map['stationConfigurationState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      stationConnectionMode: (() { final guardedValue = map['stationConnectionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      stationConnectionProperties: (() { final guardedValue = map['stationConnectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StationConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stationIp: (() { final guardedValue = map['stationIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stationName: (() { final guardedValue = map['stationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stationNetwork: (() { final guardedValue = map['stationNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stationPort: (() { final guardedValue = map['stationPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
