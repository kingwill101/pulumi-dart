// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgre_sql_connection_info.dart';

/// Input for the task that validates connection to PostgreSQL and source server requirements
class ConnectToSourcePostgreSqlSyncTaskInput {
  /// Connection information for source PostgreSQL server
  final pulumi.Input<PostgreSqlConnectionInfo> sourceConnectionInfo;

  /// Creates a new [ConnectToSourcePostgreSqlSyncTaskInput].
  /// [sourceConnectionInfo] Connection information for source PostgreSQL server
  ConnectToSourcePostgreSqlSyncTaskInput({required this.sourceConnectionInfo});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceConnectionInfo':
          pulumi.Input.mapInputValue<
            PostgreSqlConnectionInfo,
            Map<String, dynamic>
          >(sourceConnectionInfo, (value) => value.toMap()),
    };
  }

  factory ConnectToSourcePostgreSqlSyncTaskInput.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectToSourcePostgreSqlSyncTaskInput(
      sourceConnectionInfo: pulumi.Input.fromValue(
        PostgreSqlConnectionInfo.fromMap(
          (map['sourceConnectionInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
