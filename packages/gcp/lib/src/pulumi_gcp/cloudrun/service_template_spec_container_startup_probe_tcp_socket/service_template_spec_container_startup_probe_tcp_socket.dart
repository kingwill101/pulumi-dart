// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateSpecContainerStartupProbeTcpSocket {
  /// Port number to access on the container. Number must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final int? port;

  ServiceTemplateSpecContainerStartupProbeTcpSocket({
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

  factory ServiceTemplateSpecContainerStartupProbeTcpSocket.fromMap(
      Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerStartupProbeTcpSocket(
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
