// ignore_for_file: unused_element, unnecessary_cast

import 'vault_secret_response.dart';

/// The properties specific to Azure SQL VM targets.
class SqlVmTargetPropertiesResponse {
  /// The FQDN host name of the server to use in the connection string when connecting to a target. For example, for an Azure SQL logical server in the Azure commercial cloud, the value might be 'sql-logical-server-22092780.database.windows.net'; for an Azure SQL managed instance in the Azure commercial cloud, the value might be 'sql-mi-39441134.767d5869f605.database.windows.net'. Port number and instance name must be specified separately.
  final String connectionServerName;
  /// The TCP port number to optionally use in the connection string when connecting to an Azure SQL VM target.
  final int? connectionTcpPort;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// The SQL instance name to optionally use in the connection string when connecting to an Azure SQL VM target.
  final String? sqlNamedInstanceName;
  /// The Azure resource ID of an Azure SQL VM target.
  final String sqlVmResourceId;
  /// The type of authentication to use when connecting to a target.
  final String targetAuthenticationType;
  /// Discriminator property for TargetProperties.
  /// Expected value is 'SqlVm'.
  final String targetType;
  /// To use SQL authentication when connecting to targets, specify the vault where the login name and password secrets are stored.
  final VaultSecretResponse? targetVault;

  /// Creates a new [SqlVmTargetPropertiesResponse].
  /// [connectionServerName] The FQDN host name of the server to use in the connection string when connecting to a target. For example, for an Azure SQL logical server in the Azure commercial cloud, the value might be 'sql-logical-server-22092780.database.windows.net'; for an Azure SQL managed instance in the Azure commercial cloud, the value might be 'sql-mi-39441134.767d5869f605.database.windows.net'. Port number and instance name must be specified separately.
  /// [connectionTcpPort] The TCP port number to optionally use in the connection string when connecting to an Azure SQL VM target.
  /// [provisioningState] The provisioning state of the resource.
  /// [sqlNamedInstanceName] The SQL instance name to optionally use in the connection string when connecting to an Azure SQL VM target.
  /// [sqlVmResourceId] The Azure resource ID of an Azure SQL VM target.
  /// [targetAuthenticationType] The type of authentication to use when connecting to a target.
  /// [targetType] Discriminator property for TargetProperties.
  /// [targetVault] To use SQL authentication when connecting to targets, specify the vault where the login name and password secrets are stored.
  SqlVmTargetPropertiesResponse({
    required this.connectionServerName,
    this.connectionTcpPort,
    required this.provisioningState,
    this.sqlNamedInstanceName,
    required this.sqlVmResourceId,
    required this.targetAuthenticationType,
    required this.targetType,
    this.targetVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionServerName': connectionServerName,
      'connectionTcpPort': ?connectionTcpPort,
      'provisioningState': provisioningState,
      'sqlNamedInstanceName': ?sqlNamedInstanceName,
      'sqlVmResourceId': sqlVmResourceId,
      'targetAuthenticationType': targetAuthenticationType,
      'targetType': targetType,
      'targetVault': ?targetVault == null ? null : targetVault!.toMap(),
    };
  }

  factory SqlVmTargetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SqlVmTargetPropertiesResponse(
      connectionServerName: map['connectionServerName'] as String,
      connectionTcpPort: map['connectionTcpPort'] == null ? null : map['connectionTcpPort'] as int,
      provisioningState: map['provisioningState'] as String,
      sqlNamedInstanceName: map['sqlNamedInstanceName'] == null ? null : map['sqlNamedInstanceName'] as String,
      sqlVmResourceId: map['sqlVmResourceId'] as String,
      targetAuthenticationType: map['targetAuthenticationType'] as String,
      targetType: map['targetType'] as String,
      targetVault: map['targetVault'] == null ? null : VaultSecretResponse.fromMap((map['targetVault'] as Map).cast<String, dynamic>()),
    );
  }
}

