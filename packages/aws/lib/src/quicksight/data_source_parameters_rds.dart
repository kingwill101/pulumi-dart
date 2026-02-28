// ignore_for_file: unused_element, unnecessary_cast

class DataSourceParametersRds {
  /// The database to which to connect.
  final String database;

  /// The instance ID to which to connect.
  final String instanceId;

  /// Creates a new [DataSourceParametersRds].
  /// [database] The database to which to connect.
  /// [instanceId] The instance ID to which to connect.
  DataSourceParametersRds({
    required this.database,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['database'] = database;
    map['instanceId'] = instanceId;
    return map;
  }

  factory DataSourceParametersRds.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersRds(
      database: map['database'] as String,
      instanceId: map['instanceId'] as String,
    );
  }
}
