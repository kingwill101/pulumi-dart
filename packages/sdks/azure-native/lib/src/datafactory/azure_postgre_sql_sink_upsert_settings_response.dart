// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Database for PostgreSQL upsert option settings
class AzurePostgreSqlSinkUpsertSettingsResponse {
  /// Key column names for unique row identification. Type: array of strings (or Expression with resultType array of strings).
  final pulumi.Input<dynamic>? keys;

  /// Creates a new [AzurePostgreSqlSinkUpsertSettingsResponse].
  /// [keys] Key column names for unique row identification. Type: array of strings (or Expression with resultType array of strings).
  const AzurePostgreSqlSinkUpsertSettingsResponse({
    this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': ?keys,
    };
  }

  factory AzurePostgreSqlSinkUpsertSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AzurePostgreSqlSinkUpsertSettingsResponse(
      keys: (() { final guardedValue = map['keys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
