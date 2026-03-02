// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponseDatabaseSchemaMap {
  final pulumi.Input<String>? database;
  final pulumi.Input<List<String>>? schemas;

  /// Creates a new [ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponseDatabaseSchemaMap].
  /// [database] Optional.
  /// [schemas] Optional.
  ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponseDatabaseSchemaMap({
    this.database,
    this.schemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'schemas': ?schemas,
    };
  }

  factory ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponseDatabaseSchemaMap.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputResponseDatabaseSchemaMap(
      database: map['database'] == null ? null : (map['database']! as String).input(),
      schemas: map['schemas'] == null ? null : ((map['schemas']! as List).cast<String>()).input(),
    );
  }
}

