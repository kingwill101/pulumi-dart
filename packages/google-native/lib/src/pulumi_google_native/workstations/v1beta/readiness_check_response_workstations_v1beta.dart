// ignore_for_file: unused_element, unnecessary_cast

/// A readiness check to be performed on a workstation.
class ReadinessCheckResponseWorkstationsV1beta {
  /// Optional. Path to which the request should be sent.
  final String path;

  /// Optional. Port to which the request should be sent.
  final int port;

  ReadinessCheckResponseWorkstationsV1beta({
    required this.path,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    map['port'] = port;
    return map;
  }

  factory ReadinessCheckResponseWorkstationsV1beta.fromMap(
      Map<String, dynamic> map) {
    return ReadinessCheckResponseWorkstationsV1beta(
      path: map['path'] as String,
      port: map['port'] as int,
    );
  }
}
