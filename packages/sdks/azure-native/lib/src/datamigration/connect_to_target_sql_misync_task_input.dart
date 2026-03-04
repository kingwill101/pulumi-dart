// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_active_directory_app.dart';
import 'mi_sql_connection_info.dart';

/// Input for the task that validates connection to Azure SQL Database Managed Instance online scenario.
class ConnectToTargetSqlMISyncTaskInput {
  /// Azure Active Directory Application the DMS (classic) instance will use to connect to the target instance of Azure SQL Database Managed Instance and the Azure Storage Account
  final pulumi.Input<AzureActiveDirectoryApp> azureApp;

  /// Connection information for Azure SQL Database Managed Instance
  final pulumi.Input<MiSqlConnectionInfo> targetConnectionInfo;

  /// Creates a new [ConnectToTargetSqlMISyncTaskInput].
  /// [azureApp] Azure Active Directory Application the DMS (classic) instance will use to connect to the target instance of Azure SQL Database Managed Instance and the Azure Storage Account
  /// [targetConnectionInfo] Connection information for Azure SQL Database Managed Instance
  ConnectToTargetSqlMISyncTaskInput({
    required this.azureApp,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApp':
          pulumi.Input.mapInputValue<
            AzureActiveDirectoryApp,
            Map<String, dynamic>
          >(azureApp, (value) => value.toMap()),
      'targetConnectionInfo':
          pulumi.Input.mapInputValue<MiSqlConnectionInfo, Map<String, dynamic>>(
            targetConnectionInfo,
            (value) => value.toMap(),
          ),
    };
  }

  factory ConnectToTargetSqlMISyncTaskInput.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetSqlMISyncTaskInput(
      azureApp: pulumi.Input.fromValue(
        AzureActiveDirectoryApp.fromMap(
          (map['azureApp']! as Map).cast<String, dynamic>(),
        ),
      ),
      targetConnectionInfo: pulumi.Input.fromValue(
        MiSqlConnectionInfo.fromMap(
          (map['targetConnectionInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
