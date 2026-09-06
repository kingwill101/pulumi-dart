// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network and credentials configuration currently applied to terminal server.
class TerminalServerConfigurationResponse {
  /// ARM Resource ID used for the NetworkDevice.
  final pulumi.Input<String> networkDeviceId;
  /// Password for the terminal server connection.
  final pulumi.Input<String> password;
  /// IPv4 Address Prefix.
  final pulumi.Input<String> primaryIpv4Prefix;
  /// IPv6 Address Prefix.
  final pulumi.Input<String?>? primaryIpv6Prefix;
  /// Secondary IPv4 Address Prefix.
  final pulumi.Input<String> secondaryIpv4Prefix;
  /// Secondary IPv6 Address Prefix.
  final pulumi.Input<String?>? secondaryIpv6Prefix;
  /// Serial Number of Terminal server.
  final pulumi.Input<String?>? serialNumber;
  /// Username for the terminal server connection.
  final pulumi.Input<String> username;

  /// Creates a new [TerminalServerConfigurationResponse].
  /// [networkDeviceId] ARM Resource ID used for the NetworkDevice.
  /// [password] Password for the terminal server connection.
  /// [primaryIpv4Prefix] IPv4 Address Prefix.
  /// [primaryIpv6Prefix] IPv6 Address Prefix.
  /// [secondaryIpv4Prefix] Secondary IPv4 Address Prefix.
  /// [secondaryIpv6Prefix] Secondary IPv6 Address Prefix.
  /// [serialNumber] Serial Number of Terminal server.
  /// [username] Username for the terminal server connection.
  const TerminalServerConfigurationResponse({
    required this.networkDeviceId,
    required this.password,
    required this.primaryIpv4Prefix,
    this.primaryIpv6Prefix,
    required this.secondaryIpv4Prefix,
    this.secondaryIpv6Prefix,
    this.serialNumber,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkDeviceId': networkDeviceId,
      'password': password,
      'primaryIpv4Prefix': primaryIpv4Prefix,
      'primaryIpv6Prefix': ?primaryIpv6Prefix,
      'secondaryIpv4Prefix': secondaryIpv4Prefix,
      'secondaryIpv6Prefix': ?secondaryIpv6Prefix,
      'serialNumber': ?serialNumber,
      'username': username,
    };
  }

  factory TerminalServerConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return TerminalServerConfigurationResponse(
      networkDeviceId: pulumi.Input.fromValue(map['networkDeviceId'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      primaryIpv4Prefix: pulumi.Input.fromValue(map['primaryIpv4Prefix'] as String),
      primaryIpv6Prefix: (() { final guardedValue = map['primaryIpv6Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryIpv4Prefix: pulumi.Input.fromValue(map['secondaryIpv4Prefix'] as String),
      secondaryIpv6Prefix: (() { final guardedValue = map['secondaryIpv6Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
