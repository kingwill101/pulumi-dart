// ignore_for_file: unused_element, unnecessary_cast


/// Sql DW upsert option settings
class SqlDWUpsertSettingsResponse {
  /// Schema name for interim table. Type: string (or Expression with resultType string).
  final dynamic interimSchemaName;
  /// Key column names for unique row identification. Type: array of strings (or Expression with resultType array of strings).
  final dynamic keys;

  /// Creates a new [SqlDWUpsertSettingsResponse].
  /// [interimSchemaName] Schema name for interim table. Type: string (or Expression with resultType string).
  /// [keys] Key column names for unique row identification. Type: array of strings (or Expression with resultType array of strings).
  SqlDWUpsertSettingsResponse({
    this.interimSchemaName,
    this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interimSchemaName': ?interimSchemaName,
      'keys': ?keys,
    };
  }

  factory SqlDWUpsertSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SqlDWUpsertSettingsResponse(
      interimSchemaName: map['interimSchemaName'] == null ? null : map['interimSchemaName'],
      keys: map['keys'] == null ? null : map['keys'],
    );
  }
}

