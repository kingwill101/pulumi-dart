// ignore_for_file: unused_element, unnecessary_cast


class GetDatabasePostgresqlConfigPgStatMonitorEnable {
  final String description;
  final bool requiresRestart;
  final String type;

  /// Creates a new [GetDatabasePostgresqlConfigPgStatMonitorEnable].
  /// [description] Required.
  /// [requiresRestart] Required.
  /// [type] Required.
  GetDatabasePostgresqlConfigPgStatMonitorEnable({
    required this.description,
    required this.requiresRestart,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'requiresRestart': requiresRestart,
      'type': type,
    };
  }

  factory GetDatabasePostgresqlConfigPgStatMonitorEnable.fromMap(Map<String, dynamic> map) {
    return GetDatabasePostgresqlConfigPgStatMonitorEnable(
      description: map['description'] as String,
      requiresRestart: map['requiresRestart'] as bool,
      type: map['type'] as String,
    );
  }
}

