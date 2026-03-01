// ignore_for_file: unused_element, unnecessary_cast

import 'operating_system_details.dart';

/// IISWeb server.
class IISWebServer {
  /// Gets or sets the display name.
  final String? displayName;
  /// Gets or sets list of ip addresses.
  final List<String>? ipAddresses;
  /// Gets or sets the list of machines.
  final List<String>? machines;
  final OperatingSystemDetails? operatingSystemDetails;
  /// Gets or sets the server root configuration location.
  final String? rootConfigurationLocation;
  /// Gets or sets the run as account id.
  final String? runAsAccountId;
  /// Gets or sets the server FQDN.
  final String? serverFqdn;
  /// Gets or sets the web server id.
  final String? serverId;
  /// Gets or sets the web server name.
  final String? serverName;
  /// Gets or sets the server version.
  final String? version;
  /// Gets or sets the list of web applications.
  final List<String>? webApplications;

  /// Creates a new [IISWebServer].
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
  IISWebServer({
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
      'operatingSystemDetails': ?operatingSystemDetails == null ? null : operatingSystemDetails!.toMap(),
      'rootConfigurationLocation': ?rootConfigurationLocation,
      'runAsAccountId': ?runAsAccountId,
      'serverFqdn': ?serverFqdn,
      'serverId': ?serverId,
      'serverName': ?serverName,
      'version': ?version,
      'webApplications': ?webApplications,
    };
  }

  factory IISWebServer.fromMap(Map<String, dynamic> map) {
    return IISWebServer(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      ipAddresses: map['ipAddresses'] == null ? null : (map['ipAddresses'] as List).cast<String>(),
      machines: map['machines'] == null ? null : (map['machines'] as List).cast<String>(),
      operatingSystemDetails: map['operatingSystemDetails'] == null ? null : OperatingSystemDetails.fromMap((map['operatingSystemDetails'] as Map).cast<String, dynamic>()),
      rootConfigurationLocation: map['rootConfigurationLocation'] == null ? null : map['rootConfigurationLocation'] as String,
      runAsAccountId: map['runAsAccountId'] == null ? null : map['runAsAccountId'] as String,
      serverFqdn: map['serverFqdn'] == null ? null : map['serverFqdn'] as String,
      serverId: map['serverId'] == null ? null : map['serverId'] as String,
      serverName: map['serverName'] == null ? null : map['serverName'] as String,
      version: map['version'] == null ? null : map['version'] as String,
      webApplications: map['webApplications'] == null ? null : (map['webApplications'] as List).cast<String>(),
    );
  }
}

