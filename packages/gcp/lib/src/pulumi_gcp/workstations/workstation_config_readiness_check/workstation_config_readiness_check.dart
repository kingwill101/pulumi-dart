// ignore_for_file: unused_element, unnecessary_cast

class WorkstationConfigReadinessCheck {
  /// Path to which the request should be sent.
  final String path;

  /// Port to which the request should be sent.
  final int port;

  WorkstationConfigReadinessCheck({
    required this.path,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    map['port'] = port;
    return map;
  }

  factory WorkstationConfigReadinessCheck.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigReadinessCheck(
      path: map['path'] as String,
      port: map['port'] as int,
    );
  }
}
