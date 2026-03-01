// ignore_for_file: unused_element, unnecessary_cast

import 'sql_connection_info_response.dart';

/// Input for the task that collects user tables for the given list of databases
class GetUserTablesSqlTaskInputResponse {
  /// Connection information for SQL Server
  final SqlConnectionInfoResponse connectionInfo;
  /// encrypted key for secure fields
  final String? encryptedKeyForSecureFields;
  /// List of database names to collect tables for
  final List<String> selectedDatabases;

  /// Creates a new [GetUserTablesSqlTaskInputResponse].
  /// [connectionInfo] Connection information for SQL Server
  /// [encryptedKeyForSecureFields] encrypted key for secure fields
  /// [selectedDatabases] List of database names to collect tables for
  GetUserTablesSqlTaskInputResponse({
    required this.connectionInfo,
    this.encryptedKeyForSecureFields,
    required this.selectedDatabases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionInfo': connectionInfo.toMap(),
      'encryptedKeyForSecureFields': ?encryptedKeyForSecureFields,
      'selectedDatabases': selectedDatabases,
    };
  }

  factory GetUserTablesSqlTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return GetUserTablesSqlTaskInputResponse(
      connectionInfo: SqlConnectionInfoResponse.fromMap((map['connectionInfo'] as Map).cast<String, dynamic>()),
      encryptedKeyForSecureFields: map['encryptedKeyForSecureFields'] == null ? null : map['encryptedKeyForSecureFields'] as String,
      selectedDatabases: (map['selectedDatabases'] as List).cast<String>(),
    );
  }
}

