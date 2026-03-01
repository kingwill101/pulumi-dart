// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseMysqlConfigMysqlSqlRequirePrimaryKey {
  final String description;
  final bool example;
  final bool requiresRestart;
  final String type;

  /// Creates a new [GetDatabaseMysqlConfigMysqlSqlRequirePrimaryKey].
  /// [description] Required.
  /// [example] Required.
  /// [requiresRestart] Required.
  /// [type] Required.
  GetDatabaseMysqlConfigMysqlSqlRequirePrimaryKey({
    required this.description,
    required this.example,
    required this.requiresRestart,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'example': example,
      'requiresRestart': requiresRestart,
      'type': type,
    };
  }

  factory GetDatabaseMysqlConfigMysqlSqlRequirePrimaryKey.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlConfigMysqlSqlRequirePrimaryKey(
      description: map['description'] as String,
      example: map['example'] as bool,
      requiresRestart: map['requiresRestart'] as bool,
      type: map['type'] as String,
    );
  }
}

