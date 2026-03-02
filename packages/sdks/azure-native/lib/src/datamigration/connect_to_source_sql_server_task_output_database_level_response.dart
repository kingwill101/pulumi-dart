// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_file_info_response.dart';

/// Database level output for the task that validates connection to SQL Server and also validates source server requirements
class ConnectToSourceSqlServerTaskOutputDatabaseLevelResponse {
  /// SQL Server compatibility level of database
  final pulumi.Input<String> compatibilityLevel;
  /// The list of database files
  final pulumi.Input<List<DatabaseFileInfoResponse>> databaseFiles;
  /// State of the database
  final pulumi.Input<String> databaseState;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Database name
  final pulumi.Input<String> name;
  /// Type of result - database level or task level
  /// Expected value is 'DatabaseLevelOutput'.
  final pulumi.Input<String> resultType;
  /// Size of the file in megabytes
  final pulumi.Input<double> sizeMB;

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
      'databaseFiles': pulumi.Input.mapInputValue<List<DatabaseFileInfoResponse>, List<Map<String, dynamic>>>(databaseFiles, (value) => pulumi.Input.encodeList<DatabaseFileInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'databaseState': databaseState,
      'id': id,
      'name': name,
      'resultType': resultType,
      'sizeMB': sizeMB,
    };
  }

  factory ConnectToSourceSqlServerTaskOutputDatabaseLevelResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceSqlServerTaskOutputDatabaseLevelResponse(
      compatibilityLevel: (map['compatibilityLevel'] as String).input(),
      databaseFiles: (pulumi.Input.decodeList<DatabaseFileInfoResponse>(map['databaseFiles'], (value) => DatabaseFileInfoResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      databaseState: (map['databaseState'] as String).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      resultType: (map['resultType'] as String).input(),
      sizeMB: (map['sizeMB'] as double).input(),
    );
  }
}

