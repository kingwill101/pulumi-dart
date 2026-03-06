// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Database for PostgreSQL upsert option settings
class AzurePostgreSqlSinkResponseUpsertSettings {
  /// Key column names for unique row identification. Type: array of strings (or Expression with resultType array of strings).
  final pulumi.Input<dynamic>? keys;

  /// Creates a new [AzurePostgreSqlSinkResponseUpsertSettings].
  /// [keys] Key column names for unique row identification. Type: array of strings (or Expression with resultType array of strings).
  const AzurePostgreSqlSinkResponseUpsertSettings({
    this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': ?keys,
    };
  }

  factory AzurePostgreSqlSinkResponseUpsertSettings.fromMap(Map<String, dynamic> map) {
    return AzurePostgreSqlSinkResponseUpsertSettings(
      keys: (() { final guardedValue = map['keys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

