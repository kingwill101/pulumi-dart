// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerGroupContainerLivenessProbeTcpSocket {
  final pulumi.Input<int>? port;

  /// Creates a new [ContainerGroupContainerLivenessProbeTcpSocket].
  /// [port] Optional.
  ContainerGroupContainerLivenessProbeTcpSocket({
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
    };
  }

  factory ContainerGroupContainerLivenessProbeTcpSocket.fromMap(Map<String, dynamic> map) {
    return ContainerGroupContainerLivenessProbeTcpSocket(
      port: map['port'] == null ? null : (map['port'] as int).input(),
    );
  }
}

