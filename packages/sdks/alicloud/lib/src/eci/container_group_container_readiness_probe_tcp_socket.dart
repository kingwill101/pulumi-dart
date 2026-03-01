// ignore_for_file: unused_element, unnecessary_cast


class ContainerGroupContainerReadinessProbeTcpSocket {
  final int? port;

  /// Creates a new [ContainerGroupContainerReadinessProbeTcpSocket].
  /// [port] Optional.
  ContainerGroupContainerReadinessProbeTcpSocket({
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
    };
  }

  factory ContainerGroupContainerReadinessProbeTcpSocket.fromMap(Map<String, dynamic> map) {
    return ContainerGroupContainerReadinessProbeTcpSocket(
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

