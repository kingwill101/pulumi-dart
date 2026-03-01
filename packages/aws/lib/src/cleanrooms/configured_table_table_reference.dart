// ignore_for_file: unused_element, unnecessary_cast

class ConfiguredTableTableReference {
  final String databaseName;
  final String tableName;

  /// Creates a new [ConfiguredTableTableReference].
  /// [databaseName] Required.
  /// [tableName] Required.
  ConfiguredTableTableReference({
    required this.databaseName,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'tableName': tableName,
    };
  }

  factory ConfiguredTableTableReference.fromMap(Map<String, dynamic> map) {
    return ConfiguredTableTableReference(
      databaseName: map['databaseName'] as String,
      tableName: map['tableName'] as String,
    );
  }
}
