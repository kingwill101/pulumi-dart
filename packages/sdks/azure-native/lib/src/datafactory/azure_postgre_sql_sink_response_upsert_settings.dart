// ignore_for_file: unused_element, unnecessary_cast


/// Azure Database for PostgreSQL upsert option settings
class AzurePostgreSqlSinkResponseUpsertSettings {
  /// Key column names for unique row identification. Type: array of strings (or Expression with resultType array of strings).
  final dynamic keys;

  /// Creates a new [AzurePostgreSqlSinkResponseUpsertSettings].
  /// [keys] Key column names for unique row identification. Type: array of strings (or Expression with resultType array of strings).
  AzurePostgreSqlSinkResponseUpsertSettings({
    this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': ?keys,
    };
  }

  factory AzurePostgreSqlSinkResponseUpsertSettings.fromMap(Map<String, dynamic> map) {
    return AzurePostgreSqlSinkResponseUpsertSettings(
      keys: map['keys'] == null ? null : map['keys'],
    );
  }
}

