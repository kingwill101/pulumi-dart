// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Database for PostgreSQL upsert option settings
class AzurePostgreSqlSinkUpsertSettings {
  /// Key column names for unique row identification. Type: array of strings (or Expression with resultType array of strings).
  final pulumi.Input<dynamic>? keys;

  /// Creates a new [AzurePostgreSqlSinkUpsertSettings].
  /// [keys] Key column names for unique row identification. Type: array of strings (or Expression with resultType array of strings).
  AzurePostgreSqlSinkUpsertSettings({
    this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': ?keys,
    };
  }

  factory AzurePostgreSqlSinkUpsertSettings.fromMap(Map<String, dynamic> map) {
    return AzurePostgreSqlSinkUpsertSettings(
      keys: map['keys'] == null ? null : (map['keys']!).input(),
    );
  }
}

