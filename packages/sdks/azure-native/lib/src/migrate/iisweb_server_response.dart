// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'operating_system_details_response.dart';

/// IISWeb server.
class IISWebServerResponse {
  /// Gets or sets the display name.
  final pulumi.Input<String>? displayName;
  /// Gets or sets list of ip addresses.
  final pulumi.Input<List<String>>? ipAddresses;
  /// Gets or sets the list of machines.
  final pulumi.Input<List<String>>? machines;
  final pulumi.Input<OperatingSystemDetailsResponse>? operatingSystemDetails;
  /// Gets or sets the server root configuration location.
  final pulumi.Input<String>? rootConfigurationLocation;
  /// Gets or sets the run as account id.
  final pulumi.Input<String>? runAsAccountId;
  /// Gets or sets the server FQDN.
  final pulumi.Input<String>? serverFqdn;
  /// Gets or sets the web server id.
  final pulumi.Input<String>? serverId;
  /// Gets or sets the web server name.
  final pulumi.Input<String>? serverName;
  /// Gets or sets the server version.
  final pulumi.Input<String>? version;
  /// Gets or sets the list of web applications.
  final pulumi.Input<List<String>>? webApplications;

  /// Creates a new [IISWebServerResponse].
  /// [displayName] Gets or sets the display name.
  /// [ipAddresses] Gets or sets list of ip addresses.
  /// [machines] Gets or sets the list of machines.
  /// [operatingSystemDetails] Optional.
  /// [rootConfigurationLocation] Gets or sets the server root configuration location.
  /// [runAsAccountId] Gets or sets the run as account id.
  /// [serverFqdn] Gets or sets the server FQDN.
  /// [serverId] Gets or sets the web server id.
  /// [serverName] Gets or sets the web server name.
  /// [version] Gets or sets the server version.
  /// [webApplications] Gets or sets the list of web applications.
  IISWebServerResponse({
    this.displayName,
    this.ipAddresses,
    this.machines,
    this.operatingSystemDetails,
    this.rootConfigurationLocation,
    this.runAsAccountId,
    this.serverFqdn,
    this.serverId,
    this.serverName,
    this.version,
    this.webApplications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'ipAddresses': ?ipAddresses,
      'machines': ?machines,
      'operatingSystemDetails': ?pulumi.Input.mapOptionalInputValue<OperatingSystemDetailsResponse, Map<String, dynamic>>(operatingSystemDetails, (value) => value.toMap()),
      'rootConfigurationLocation': ?rootConfigurationLocation,
      'runAsAccountId': ?runAsAccountId,
      'serverFqdn': ?serverFqdn,
      'serverId': ?serverId,
      'serverName': ?serverName,
      'version': ?version,
      'webApplications': ?webApplications,
    };
  }

  factory IISWebServerResponse.fromMap(Map<String, dynamic> map) {
    return IISWebServerResponse(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      machines: (() { final guardedValue = map['machines']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      operatingSystemDetails: (() { final guardedValue = map['operatingSystemDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OperatingSystemDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rootConfigurationLocation: (() { final guardedValue = map['rootConfigurationLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runAsAccountId: (() { final guardedValue = map['runAsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverFqdn: (() { final guardedValue = map['serverFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webApplications: (() { final guardedValue = map['webApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

