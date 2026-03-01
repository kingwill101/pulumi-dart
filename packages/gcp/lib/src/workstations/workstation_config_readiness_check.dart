// ignore_for_file: unused_element, unnecessary_cast


class WorkstationConfigReadinessCheck {
  /// Path to which the request should be sent.
  final String path;
  /// Port to which the request should be sent.
  final int port;

  /// Creates a new [WorkstationConfigReadinessCheck].
  /// [path] Path to which the request should be sent.
  /// [port] Port to which the request should be sent.
  WorkstationConfigReadinessCheck({
    required this.path,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'port': port,
    };
  }

  factory WorkstationConfigReadinessCheck.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigReadinessCheck(
      path: map['path'] as String,
      port: map['port'] as int,
    );
  }
}

