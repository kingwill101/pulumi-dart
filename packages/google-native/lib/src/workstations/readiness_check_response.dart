// ignore_for_file: unused_element, unnecessary_cast

/// A readiness check to be performed on a workstation.
class ReadinessCheckResponse {
  /// Optional. Path to which the request should be sent.
  final String path;

  /// Optional. Port to which the request should be sent.
  final int port;

  /// Creates a new [ReadinessCheckResponse].
  /// [path] Optional. Path to which the request should be sent.
  /// [port] Optional. Port to which the request should be sent.
  ReadinessCheckResponse({required this.path, required this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': path, 'port': port};
  }

  factory ReadinessCheckResponse.fromMap(Map<String, dynamic> map) {
    return ReadinessCheckResponse(
      path: map['path'] as String,
      port: map['port'] as int,
    );
  }
}
