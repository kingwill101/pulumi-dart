// ignore_for_file: unused_element, unnecessary_cast

/// A readiness check to be performed on a workstation.
class ReadinessCheckWorkstationsV1beta {
  /// Optional. Path to which the request should be sent.
  final String? path;

  /// Optional. Port to which the request should be sent.
  final int? port;

  /// Creates a new [ReadinessCheckWorkstationsV1beta].
  /// [path] Optional. Path to which the request should be sent.
  /// [port] Optional. Port to which the request should be sent.
  ReadinessCheckWorkstationsV1beta({this.path, this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': ?path, 'port': ?port};
  }

  factory ReadinessCheckWorkstationsV1beta.fromMap(Map<String, dynamic> map) {
    return ReadinessCheckWorkstationsV1beta(
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
