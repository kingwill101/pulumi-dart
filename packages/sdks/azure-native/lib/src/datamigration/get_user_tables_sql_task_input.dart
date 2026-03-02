// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_connection_info.dart';

/// Input for the task that collects user tables for the given list of databases
class GetUserTablesSqlTaskInput {
  /// Connection information for SQL Server
  final pulumi.Input<SqlConnectionInfo> connectionInfo;
  /// encrypted key for secure fields
  final pulumi.Input<String>? encryptedKeyForSecureFields;
  /// List of database names to collect tables for
  final pulumi.Input<List<String>> selectedDatabases;

  /// Creates a new [GetUserTablesSqlTaskInput].
  /// [connectionInfo] Connection information for SQL Server
  /// [encryptedKeyForSecureFields] encrypted key for secure fields
  /// [selectedDatabases] List of database names to collect tables for
  GetUserTablesSqlTaskInput({
    required this.connectionInfo,
    this.encryptedKeyForSecureFields,
    required this.selectedDatabases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfo, Map<String, dynamic>>(connectionInfo, (value) => value.toMap()),
      'encryptedKeyForSecureFields': ?encryptedKeyForSecureFields,
      'selectedDatabases': selectedDatabases,
    };
  }

  factory GetUserTablesSqlTaskInput.fromMap(Map<String, dynamic> map) {
    return GetUserTablesSqlTaskInput(
      connectionInfo: (SqlConnectionInfo.fromMap((map['connectionInfo'] as Map).cast<String, dynamic>())).input(),
      encryptedKeyForSecureFields: map['encryptedKeyForSecureFields'] == null ? null : (map['encryptedKeyForSecureFields']! as String).input(),
      selectedDatabases: ((map['selectedDatabases'] as List).cast<String>()).input(),
    );
  }
}

