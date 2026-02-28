// ignore_for_file: unused_element, unnecessary_cast

class GetServiceTemplateSpecContainerReadinessProbeHttpGet {
  /// Path to access on the HTTP server. If set, it should not be empty string.
  final String path;

  /// Port number to access on the container. Number must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final int port;

  /// Creates a new [GetServiceTemplateSpecContainerReadinessProbeHttpGet].
  /// [path] Path to access on the HTTP server. If set, it should not be empty string.
  /// [port] Port number to access on the container. Number must be in the range 1 to 65535.
  GetServiceTemplateSpecContainerReadinessProbeHttpGet({
    required this.path,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    map['port'] = port;
    return map;
  }

  factory GetServiceTemplateSpecContainerReadinessProbeHttpGet.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerReadinessProbeHttpGet(
      path: map['path'] as String,
      port: map['port'] as int,
    );
  }
}
