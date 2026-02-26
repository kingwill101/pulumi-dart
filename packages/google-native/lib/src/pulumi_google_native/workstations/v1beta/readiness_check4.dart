// ignore_for_file: unused_element, unnecessary_cast

/// A readiness check to be performed on a workstation.
class ReadinessCheck4 {
  /// Optional. Path to which the request should be sent.
  final String? path;

  /// Optional. Port to which the request should be sent.
  final int? port;

  ReadinessCheck4({
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

  factory ReadinessCheck4.fromMap(Map<String, dynamic> map) {
    return ReadinessCheck4(
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
