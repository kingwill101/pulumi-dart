// ignore_for_file: unused_element, unnecessary_cast


class ContainerGroupContainerReadinessProbeHttpGet {
  final String? path;
  final int? port;
  /// The protocol type corresponding to the HTTP Get request when using the HTTP request method for health checks. Valid values: `HTTP`, `HTTPS`.
  final String? scheme;

  /// Creates a new [ContainerGroupContainerReadinessProbeHttpGet].
  /// [path] Optional.
  /// [port] Optional.
  /// [scheme] The protocol type corresponding to the HTTP Get request when using the HTTP request method for health checks. Valid values: `HTTP`, `HTTPS`.
  ContainerGroupContainerReadinessProbeHttpGet({
    this.path,
    this.port,
    this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'port': ?port,
      'scheme': ?scheme,
    };
  }

  factory ContainerGroupContainerReadinessProbeHttpGet.fromMap(Map<String, dynamic> map) {
    return ContainerGroupContainerReadinessProbeHttpGet(
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      scheme: map['scheme'] == null ? null : map['scheme'] as String,
    );
  }
}

