// ignore_for_file: unused_element, unnecessary_cast

/// A readiness check to be performed on a workstation.
class ReadinessCheckResponse3 {
  /// Optional. Path to which the request should be sent.
  final String path;

  /// Optional. Port to which the request should be sent.
  final int port;

  ReadinessCheckResponse3({
    required this.path,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    map['port'] = port;
    return map;
  }

  factory ReadinessCheckResponse3.fromMap(Map<String, dynamic> map) {
    return ReadinessCheckResponse3(
      path: map['path'] as String,
      port: map['port'] as int,
    );
  }
}
