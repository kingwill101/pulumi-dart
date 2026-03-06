// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerGroupContainerLivenessProbeTcpSocket {
  final pulumi.Input<int>? port;

  /// Creates a new [ContainerGroupContainerLivenessProbeTcpSocket].
  /// [port] Optional.
  const ContainerGroupContainerLivenessProbeTcpSocket({
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
    };
  }

  factory ContainerGroupContainerLivenessProbeTcpSocket.fromMap(Map<String, dynamic> map) {
    return ContainerGroupContainerLivenessProbeTcpSocket(
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

