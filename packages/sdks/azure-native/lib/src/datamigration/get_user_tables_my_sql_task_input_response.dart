// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'my_sql_connection_info_response.dart';

/// Input for the task that collects user tables for the given list of databases
class GetUserTablesMySqlTaskInputResponse {
  /// Connection information for SQL Server
  final pulumi.Input<MySqlConnectionInfoResponse> connectionInfo;

  /// List of database names to collect tables for
  final pulumi.Input<List<String>> selectedDatabases;

  /// Creates a new [GetUserTablesMySqlTaskInputResponse].
  /// [connectionInfo] Connection information for SQL Server
  /// [selectedDatabases] List of database names to collect tables for
  GetUserTablesMySqlTaskInputResponse({
    required this.connectionInfo,
    required this.selectedDatabases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionInfo':
          pulumi.Input.mapInputValue<
            MySqlConnectionInfoResponse,
            Map<String, dynamic>
          >(connectionInfo, (value) => value.toMap()),
      'selectedDatabases': selectedDatabases,
    };
  }

  factory GetUserTablesMySqlTaskInputResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetUserTablesMySqlTaskInputResponse(
      connectionInfo: pulumi.Input.fromValue(
        MySqlConnectionInfoResponse.fromMap(
          (map['connectionInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
      selectedDatabases: pulumi.Input.fromValue(
        (map['selectedDatabases'] as List).cast<String>(),
      ),
    );
  }
}
