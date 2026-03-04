// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'my_sql_connection_info.dart';

/// Input for the task that collects user tables for the given list of databases
class GetUserTablesMySqlTaskInput {
  /// Connection information for SQL Server
  final pulumi.Input<MySqlConnectionInfo> connectionInfo;

  /// List of database names to collect tables for
  final pulumi.Input<List<String>> selectedDatabases;

  /// Creates a new [GetUserTablesMySqlTaskInput].
  /// [connectionInfo] Connection information for SQL Server
  /// [selectedDatabases] List of database names to collect tables for
  GetUserTablesMySqlTaskInput({
    required this.connectionInfo,
    required this.selectedDatabases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionInfo':
          pulumi.Input.mapInputValue<MySqlConnectionInfo, Map<String, dynamic>>(
            connectionInfo,
            (value) => value.toMap(),
          ),
      'selectedDatabases': selectedDatabases,
    };
  }

  factory GetUserTablesMySqlTaskInput.fromMap(Map<String, dynamic> map) {
    return GetUserTablesMySqlTaskInput(
      connectionInfo: pulumi.Input.fromValue(
        MySqlConnectionInfo.fromMap(
          (map['connectionInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
      selectedDatabases: pulumi.Input.fromValue(
        (map['selectedDatabases'] as List).cast<String>(),
      ),
    );
  }
}
