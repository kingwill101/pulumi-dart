// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a server to forward the DNS queries to.
class TargetDnsServer {
  /// DNS server IP address.
  final pulumi.Input<String> ipAddress;

  /// DNS server port.
  final pulumi.Input<int>? port;

  /// Creates a new [TargetDnsServer].
  /// [ipAddress] DNS server IP address.
  /// [port] DNS server port.
  TargetDnsServer({required this.ipAddress, this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipAddress': ipAddress, 'port': ?port};
  }

  factory TargetDnsServer.fromMap(Map<String, dynamic> map) {
    return TargetDnsServer(
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
