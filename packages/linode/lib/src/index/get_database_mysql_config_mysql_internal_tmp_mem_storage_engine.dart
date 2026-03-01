// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseMysqlConfigMysqlInternalTmpMemStorageEngine {
  final String description;
  final List<String> enums;
  final String example;
  final bool requiresRestart;
  final String type;

  /// Creates a new [GetDatabaseMysqlConfigMysqlInternalTmpMemStorageEngine].
  /// [description] Required.
  /// [enums] Required.
  /// [example] Required.
  /// [requiresRestart] Required.
  /// [type] Required.
  GetDatabaseMysqlConfigMysqlInternalTmpMemStorageEngine({
    required this.description,
    required this.enums,
    required this.example,
    required this.requiresRestart,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'enums': enums,
      'example': example,
      'requiresRestart': requiresRestart,
      'type': type,
    };
  }

  factory GetDatabaseMysqlConfigMysqlInternalTmpMemStorageEngine.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlConfigMysqlInternalTmpMemStorageEngine(
      description: map['description'] as String,
      enums: (map['enums'] as List).cast<String>(),
      example: map['example'] as String,
      requiresRestart: map['requiresRestart'] as bool,
      type: map['type'] as String,
    );
  }
}

