// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_file_info_response.dart';

/// Database level output for the task that validates connection to SQL Server and also validates source server requirements
class ConnectToSourceSqlServerTaskOutputDatabaseLevelResponse {
  /// SQL Server compatibility level of database
  final String compatibilityLevel;
  /// The list of database files
  final List<DatabaseFileInfoResponse> databaseFiles;
  /// State of the database
  final String databaseState;
  /// Result identifier
  final String id;
  /// Database name
  final String name;
  /// Type of result - database level or task level
  /// Expected value is 'DatabaseLevelOutput'.
  final String resultType;
  /// Size of the file in megabytes
  final double sizeMB;

  /// Creates a new [ConnectToSourceSqlServerTaskOutputDatabaseLevelResponse].
  /// [compatibilityLevel] SQL Server compatibility level of database
  /// [databaseFiles] The list of database files
  /// [databaseState] State of the database
  /// [id] Result identifier
  /// [name] Database name
  /// [resultType] Type of result - database level or task level
  /// [sizeMB] Size of the file in megabytes
  ConnectToSourceSqlServerTaskOutputDatabaseLevelResponse({
    required this.compatibilityLevel,
    required this.databaseFiles,
    required this.databaseState,
    required this.id,
    required this.name,
    required this.resultType,
    required this.sizeMB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compatibilityLevel': compatibilityLevel,
      'databaseFiles': pulumi.Input.encodeList<DatabaseFileInfoResponse, Map<String, dynamic>>(databaseFiles, (value) => value.toMap()),
      'databaseState': databaseState,
      'id': id,
      'name': name,
      'resultType': resultType,
      'sizeMB': sizeMB,
    };
  }

  factory ConnectToSourceSqlServerTaskOutputDatabaseLevelResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceSqlServerTaskOutputDatabaseLevelResponse(
      compatibilityLevel: map['compatibilityLevel'] as String,
      databaseFiles: pulumi.Input.decodeList<DatabaseFileInfoResponse>(map['databaseFiles'], (value) => DatabaseFileInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      databaseState: map['databaseState'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      resultType: map['resultType'] as String,
      sizeMB: map['sizeMB'] as double,
    );
  }
}

