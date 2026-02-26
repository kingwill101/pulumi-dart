// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateContainerLivenessProbeTcpSocket {
  /// Port number to access on the container. Must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final int port;

  ServiceTemplateContainerLivenessProbeTcpSocket({
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['port'] = port;
    return map;
  }

  factory ServiceTemplateContainerLivenessProbeTcpSocket.fromMap(
      Map<String, dynamic> map) {
    return ServiceTemplateContainerLivenessProbeTcpSocket(
      port: map['port'] as int,
    );
  }
}
