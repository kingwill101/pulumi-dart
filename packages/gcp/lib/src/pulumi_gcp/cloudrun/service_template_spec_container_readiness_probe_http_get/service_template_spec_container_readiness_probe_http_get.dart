// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateSpecContainerReadinessProbeHttpGet {
  /// Path to access on the HTTP server. If set, it should not be empty string.
  final String? path;

  /// Port number to access on the container. Number must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final int? port;

  ServiceTemplateSpecContainerReadinessProbeHttpGet({
    this.path,
    this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    return map;
  }

  factory ServiceTemplateSpecContainerReadinessProbeHttpGet.fromMap(
      Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerReadinessProbeHttpGet(
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
