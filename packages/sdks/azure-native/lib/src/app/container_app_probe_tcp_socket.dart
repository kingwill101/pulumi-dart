// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported.
class ContainerAppProbeTcpSocket {
  /// Optional: Host name to connect to, defaults to the pod IP.
  final pulumi.Input<String>? host;
  /// Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
  final pulumi.Input<int> port;

  /// Creates a new [ContainerAppProbeTcpSocket].
  /// [host] Optional: Host name to connect to, defaults to the pod IP.
  /// [port] Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
  ContainerAppProbeTcpSocket({
    this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'port': port,
    };
  }

  factory ContainerAppProbeTcpSocket.fromMap(Map<String, dynamic> map) {
    return ContainerAppProbeTcpSocket(
      host: map['host'] == null ? null : (map['host']! as String).input(),
      port: (map['port'] as int).input(),
    );
  }
}

