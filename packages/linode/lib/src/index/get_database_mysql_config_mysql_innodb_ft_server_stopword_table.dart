// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseMysqlConfigMysqlInnodbFtServerStopwordTable {
  final String description;
  final String example;
  final int maxLength;
  final String pattern;
  final bool requiresRestart;
  final List<String> types;

  /// Creates a new [GetDatabaseMysqlConfigMysqlInnodbFtServerStopwordTable].
  /// [description] Required.
  /// [example] Required.
  /// [maxLength] Required.
  /// [pattern] Required.
  /// [requiresRestart] Required.
  /// [types] Required.
  GetDatabaseMysqlConfigMysqlInnodbFtServerStopwordTable({
    required this.description,
    required this.example,
    required this.maxLength,
    required this.pattern,
    required this.requiresRestart,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'example': example,
      'maxLength': maxLength,
      'pattern': pattern,
      'requiresRestart': requiresRestart,
      'types': types,
    };
  }

  factory GetDatabaseMysqlConfigMysqlInnodbFtServerStopwordTable.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlConfigMysqlInnodbFtServerStopwordTable(
      description: map['description'] as String,
      example: map['example'] as String,
      maxLength: map['maxLength'] as int,
      pattern: map['pattern'] as String,
      requiresRestart: map['requiresRestart'] as bool,
      types: (map['types'] as List).cast<String>(),
    );
  }
}

