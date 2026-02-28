// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateTemplateContainerStartupProbeTcpSocket {
  /// Port number to access on the container. Number must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final int? port;

  /// Creates a new [JobTemplateTemplateContainerStartupProbeTcpSocket].
  /// [port] Port number to access on the container. Number must be in the range 1 to 65535.
  JobTemplateTemplateContainerStartupProbeTcpSocket({
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

  factory JobTemplateTemplateContainerStartupProbeTcpSocket.fromMap(
      Map<String, dynamic> map) {
    return JobTemplateTemplateContainerStartupProbeTcpSocket(
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
