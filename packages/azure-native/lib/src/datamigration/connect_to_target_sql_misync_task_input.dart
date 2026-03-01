// ignore_for_file: unused_element, unnecessary_cast

import 'azure_active_directory_app.dart';
import 'mi_sql_connection_info.dart';

/// Input for the task that validates connection to Azure SQL Database Managed Instance online scenario.
class ConnectToTargetSqlMISyncTaskInput {
  /// Azure Active Directory Application the DMS (classic) instance will use to connect to the target instance of Azure SQL Database Managed Instance and the Azure Storage Account
  final AzureActiveDirectoryApp azureApp;
  /// Connection information for Azure SQL Database Managed Instance
  final MiSqlConnectionInfo targetConnectionInfo;

  /// Creates a new [ConnectToTargetSqlMISyncTaskInput].
  /// [azureApp] Azure Active Directory Application the DMS (classic) instance will use to connect to the target instance of Azure SQL Database Managed Instance and the Azure Storage Account
  /// [targetConnectionInfo] Connection information for Azure SQL Database Managed Instance
  ConnectToTargetSqlMISyncTaskInput({
    required this.azureApp,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApp': azureApp.toMap(),
      'targetConnectionInfo': targetConnectionInfo.toMap(),
    };
  }

  factory ConnectToTargetSqlMISyncTaskInput.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetSqlMISyncTaskInput(
      azureApp: AzureActiveDirectoryApp.fromMap((map['azureApp'] as Map).cast<String, dynamic>()),
      targetConnectionInfo: MiSqlConnectionInfo.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

