// ignore_for_file: unused_element, unnecessary_cast

import 'azure_active_directory_app_response.dart';
import 'mi_sql_connection_info_response.dart';

/// Input for the task that validates connection to Azure SQL Database Managed Instance online scenario.
class ConnectToTargetSqlMISyncTaskInputResponse {
  /// Azure Active Directory Application the DMS (classic) instance will use to connect to the target instance of Azure SQL Database Managed Instance and the Azure Storage Account
  final AzureActiveDirectoryAppResponse azureApp;
  /// Connection information for Azure SQL Database Managed Instance
  final MiSqlConnectionInfoResponse targetConnectionInfo;

  /// Creates a new [ConnectToTargetSqlMISyncTaskInputResponse].
  /// [azureApp] Azure Active Directory Application the DMS (classic) instance will use to connect to the target instance of Azure SQL Database Managed Instance and the Azure Storage Account
  /// [targetConnectionInfo] Connection information for Azure SQL Database Managed Instance
  ConnectToTargetSqlMISyncTaskInputResponse({
    required this.azureApp,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApp': azureApp.toMap(),
      'targetConnectionInfo': targetConnectionInfo.toMap(),
    };
  }

  factory ConnectToTargetSqlMISyncTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetSqlMISyncTaskInputResponse(
      azureApp: AzureActiveDirectoryAppResponse.fromMap((map['azureApp'] as Map).cast<String, dynamic>()),
      targetConnectionInfo: MiSqlConnectionInfoResponse.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

