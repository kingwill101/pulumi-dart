// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Selected tables for the migration
class MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInputResponse {
  /// Name of the table to migrate
  final pulumi.Input<String>? name;

  /// Creates a new [MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInputResponse].
  /// [name] Name of the table to migrate
  MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInputResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInputResponse.fromMap(Map<String, dynamic> map) {
    return MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInputResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

