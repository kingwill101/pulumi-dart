// ignore_for_file: unused_element, unnecessary_cast

class GetWorkerPoolTemplateContainerLivenessProbeTcpSocket {
  /// Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  final int port;

  /// Creates a new [GetWorkerPoolTemplateContainerLivenessProbeTcpSocket].
  /// [port] Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  GetWorkerPoolTemplateContainerLivenessProbeTcpSocket({required this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'port': port};
  }

  factory GetWorkerPoolTemplateContainerLivenessProbeTcpSocket.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWorkerPoolTemplateContainerLivenessProbeTcpSocket(
      port: map['port'] as int,
    );
  }
}
