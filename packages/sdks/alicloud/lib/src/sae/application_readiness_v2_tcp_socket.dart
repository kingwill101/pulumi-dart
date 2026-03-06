// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationReadinessV2TcpSocket {
  final pulumi.Input<int>? port;

  /// Creates a new [ApplicationReadinessV2TcpSocket].
  /// [port] Optional.
  const ApplicationReadinessV2TcpSocket({
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
    };
  }

  factory ApplicationReadinessV2TcpSocket.fromMap(Map<String, dynamic> map) {
    return ApplicationReadinessV2TcpSocket(
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

