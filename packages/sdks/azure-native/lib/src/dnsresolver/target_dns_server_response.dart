// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a server to forward the DNS queries to.
class TargetDnsServerResponse {
  /// DNS server IP address.
  final pulumi.Input<String> ipAddress;
  /// DNS server port.
  final pulumi.Input<int>? port;

  /// Creates a new [TargetDnsServerResponse].
  /// [ipAddress] DNS server IP address.
  /// [port] DNS server port.
  TargetDnsServerResponse({
    required this.ipAddress,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'port': ?port,
    };
  }

  factory TargetDnsServerResponse.fromMap(Map<String, dynamic> map) {
    return TargetDnsServerResponse(
      ipAddress: (map['ipAddress'] as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
    );
  }
}

