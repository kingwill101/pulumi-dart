// ignore_for_file: unused_element, unnecessary_cast

class WorkerPoolTemplateContainerStartupProbeTcpSocket {
  /// Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  final int? port;

  /// Creates a new [WorkerPoolTemplateContainerStartupProbeTcpSocket].
  /// [port] Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  WorkerPoolTemplateContainerStartupProbeTcpSocket({
    this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    return map;
  }

  factory WorkerPoolTemplateContainerStartupProbeTcpSocket.fromMap(
      Map<String, dynamic> map) {
    return WorkerPoolTemplateContainerStartupProbeTcpSocket(
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
