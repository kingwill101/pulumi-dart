// ignore_for_file: unused_element, unnecessary_cast


/// Network and credentials configuration currently applied to terminal server.
class TerminalServerConfigurationResponse {
  /// ARM Resource ID used for the NetworkDevice.
  final String networkDeviceId;
  /// Password for the terminal server connection.
  final String password;
  /// IPv4 Address Prefix.
  final String primaryIpv4Prefix;
  /// IPv6 Address Prefix.
  final String? primaryIpv6Prefix;
  /// Secondary IPv4 Address Prefix.
  final String secondaryIpv4Prefix;
  /// Secondary IPv6 Address Prefix.
  final String? secondaryIpv6Prefix;
  /// Serial Number of Terminal server.
  final String? serialNumber;
  /// Username for the terminal server connection.
  final String username;

  /// Creates a new [TerminalServerConfigurationResponse].
  /// [networkDeviceId] ARM Resource ID used for the NetworkDevice.
  /// [password] Password for the terminal server connection.
  /// [primaryIpv4Prefix] IPv4 Address Prefix.
  /// [primaryIpv6Prefix] IPv6 Address Prefix.
  /// [secondaryIpv4Prefix] Secondary IPv4 Address Prefix.
  /// [secondaryIpv6Prefix] Secondary IPv6 Address Prefix.
  /// [serialNumber] Serial Number of Terminal server.
  /// [username] Username for the terminal server connection.
  TerminalServerConfigurationResponse({
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
      networkDeviceId: map['networkDeviceId'] as String,
      password: map['password'] as String,
      primaryIpv4Prefix: map['primaryIpv4Prefix'] as String,
      primaryIpv6Prefix: map['primaryIpv6Prefix'] == null ? null : map['primaryIpv6Prefix'] as String,
      secondaryIpv4Prefix: map['secondaryIpv4Prefix'] as String,
      secondaryIpv6Prefix: map['secondaryIpv6Prefix'] == null ? null : map['secondaryIpv6Prefix'] as String,
      serialNumber: map['serialNumber'] == null ? null : map['serialNumber'] as String,
      username: map['username'] as String,
    );
  }
}

