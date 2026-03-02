// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network and credentials configuration currently applied to terminal server.
class TerminalServerConfiguration {
  /// Password for the terminal server connection.
  final pulumi.Input<String> password;
  /// IPv4 Address Prefix.
  final pulumi.Input<String> primaryIpv4Prefix;
  /// IPv6 Address Prefix.
  final pulumi.Input<String>? primaryIpv6Prefix;
  /// Secondary IPv4 Address Prefix.
  final pulumi.Input<String> secondaryIpv4Prefix;
  /// Secondary IPv6 Address Prefix.
  final pulumi.Input<String>? secondaryIpv6Prefix;
  /// Serial Number of Terminal server.
  final pulumi.Input<String>? serialNumber;
  /// Username for the terminal server connection.
  final pulumi.Input<String> username;

  /// Creates a new [TerminalServerConfiguration].
  /// [password] Password for the terminal server connection.
  /// [primaryIpv4Prefix] IPv4 Address Prefix.
  /// [primaryIpv6Prefix] IPv6 Address Prefix.
  /// [secondaryIpv4Prefix] Secondary IPv4 Address Prefix.
  /// [secondaryIpv6Prefix] Secondary IPv6 Address Prefix.
  /// [serialNumber] Serial Number of Terminal server.
  /// [username] Username for the terminal server connection.
  TerminalServerConfiguration({
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
      'password': password,
      'primaryIpv4Prefix': primaryIpv4Prefix,
      'primaryIpv6Prefix': ?primaryIpv6Prefix,
      'secondaryIpv4Prefix': secondaryIpv4Prefix,
      'secondaryIpv6Prefix': ?secondaryIpv6Prefix,
      'serialNumber': ?serialNumber,
      'username': username,
    };
  }

  factory TerminalServerConfiguration.fromMap(Map<String, dynamic> map) {
    return TerminalServerConfiguration(
      password: (map['password'] as String).input(),
      primaryIpv4Prefix: (map['primaryIpv4Prefix'] as String).input(),
      primaryIpv6Prefix: map['primaryIpv6Prefix'] == null ? null : (map['primaryIpv6Prefix'] as String).input(),
      secondaryIpv4Prefix: (map['secondaryIpv4Prefix'] as String).input(),
      secondaryIpv6Prefix: map['secondaryIpv6Prefix'] == null ? null : (map['secondaryIpv6Prefix'] as String).input(),
      serialNumber: map['serialNumber'] == null ? null : (map['serialNumber'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

