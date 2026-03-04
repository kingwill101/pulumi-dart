// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationLivenessV2TcpSocket {
  final pulumi.Input<int>? port;

  /// Creates a new [ApplicationLivenessV2TcpSocket].
  /// [port] Optional.
  ApplicationLivenessV2TcpSocket({this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'port': ?port};
  }

  factory ApplicationLivenessV2TcpSocket.fromMap(Map<String, dynamic> map) {
    return ApplicationLivenessV2TcpSocket(
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
