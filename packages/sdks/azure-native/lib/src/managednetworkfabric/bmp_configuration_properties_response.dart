// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'station_connection_properties_response.dart';

/// BGP Monitoring Protocol (BMP) Configuration properties.
class BmpConfigurationPropertiesResponse {
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
  final pulumi.Input<StationConnectionPropertiesResponse>?
  stationConnectionProperties;

  /// IP Address of the station.
  final pulumi.Input<String>? stationIp;

  /// Name of the station.
  final pulumi.Input<String>? stationName;

  /// Network of the station
  final pulumi.Input<String>? stationNetwork;

  /// Port of the station. Default value is 5000.
  final pulumi.Input<int>? stationPort;

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
      'stationConnectionProperties':
          ?pulumi.Input.mapOptionalInputValue<
            StationConnectionPropertiesResponse,
            Map<String, dynamic>
          >(stationConnectionProperties, (value) => value.toMap()),
      'stationIp': ?stationIp,
      'stationName': ?stationName,
      'stationNetwork': ?stationNetwork,
      'stationPort': ?stationPort,
    };
  }

  factory BmpConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BmpConfigurationPropertiesResponse(
      exportPolicy: (() {
        final guardedValue = map['exportPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      monitoredAddressFamilies: (() {
        final guardedValue = map['monitoredAddressFamilies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      monitoredNetworks: (() {
        final guardedValue = map['monitoredNetworks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      scopeResourceId: (() {
        final guardedValue = map['scopeResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stationConfigurationState: (() {
        final guardedValue = map['stationConfigurationState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stationConnectionMode: (() {
        final guardedValue = map['stationConnectionMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stationConnectionProperties: (() {
        final guardedValue = map['stationConnectionProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StationConnectionPropertiesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      stationIp: (() {
        final guardedValue = map['stationIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stationName: (() {
        final guardedValue = map['stationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stationNetwork: (() {
        final guardedValue = map['stationNetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stationPort: (() {
        final guardedValue = map['stationPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
