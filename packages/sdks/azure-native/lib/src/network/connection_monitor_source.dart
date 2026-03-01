// ignore_for_file: unused_element, unnecessary_cast


/// Describes the source of connection monitor.
class ConnectionMonitorSource {
  /// The source port used by connection monitor.
  final int? port;
  /// The ID of the resource used as the source by connection monitor.
  final String resourceId;

  /// Creates a new [ConnectionMonitorSource].
  /// [port] The source port used by connection monitor.
  /// [resourceId] The ID of the resource used as the source by connection monitor.
  ConnectionMonitorSource({
    this.port,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'resourceId': resourceId,
    };
  }

  factory ConnectionMonitorSource.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorSource(
      port: map['port'] == null ? null : map['port'] as int,
      resourceId: map['resourceId'] as String,
    );
  }
}

