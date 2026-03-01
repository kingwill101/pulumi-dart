// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateContainerStartupProbeTcpSocket {
  /// Port number to access on the container. Must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final int? port;

  /// Creates a new [ServiceTemplateContainerStartupProbeTcpSocket].
  /// [port] Port number to access on the container. Must be in the range 1 to 65535.
  ServiceTemplateContainerStartupProbeTcpSocket({this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'port': ?port};
  }

  factory ServiceTemplateContainerStartupProbeTcpSocket.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceTemplateContainerStartupProbeTcpSocket(
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
