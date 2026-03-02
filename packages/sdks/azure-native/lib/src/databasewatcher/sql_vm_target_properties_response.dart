// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_secret_response.dart';

/// The properties specific to Azure SQL VM targets.
class SqlVmTargetPropertiesResponse {
  /// The FQDN host name of the server to use in the connection string when connecting to a target. For example, for an Azure SQL logical server in the Azure commercial cloud, the value might be 'sql-logical-server-22092780.database.windows.net'; for an Azure SQL managed instance in the Azure commercial cloud, the value might be 'sql-mi-39441134.767d5869f605.database.windows.net'. Port number and instance name must be specified separately.
  final pulumi.Input<String> connectionServerName;
  /// The TCP port number to optionally use in the connection string when connecting to an Azure SQL VM target.
  final pulumi.Input<int>? connectionTcpPort;
  /// The provisioning state of the resource.
  final pulumi.Input<String> provisioningState;
  /// The SQL instance name to optionally use in the connection string when connecting to an Azure SQL VM target.
  final pulumi.Input<String>? sqlNamedInstanceName;
  /// The Azure resource ID of an Azure SQL VM target.
  final pulumi.Input<String> sqlVmResourceId;
  /// The type of authentication to use when connecting to a target.
  final pulumi.Input<String> targetAuthenticationType;
  /// Discriminator property for TargetProperties.
  /// Expected value is 'SqlVm'.
  final pulumi.Input<String> targetType;
  /// To use SQL authentication when connecting to targets, specify the vault where the login name and password secrets are stored.
  final pulumi.Input<VaultSecretResponse>? targetVault;

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
      'targetVault': ?pulumi.Input.mapOptionalInputValue<VaultSecretResponse, Map<String, dynamic>>(targetVault, (value) => value.toMap()),
    };
  }

  factory SqlVmTargetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SqlVmTargetPropertiesResponse(
      connectionServerName: (map['connectionServerName'] as String).input(),
      connectionTcpPort: map['connectionTcpPort'] == null ? null : (map['connectionTcpPort']! as int).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      sqlNamedInstanceName: map['sqlNamedInstanceName'] == null ? null : (map['sqlNamedInstanceName']! as String).input(),
      sqlVmResourceId: (map['sqlVmResourceId'] as String).input(),
      targetAuthenticationType: (map['targetAuthenticationType'] as String).input(),
      targetType: (map['targetType'] as String).input(),
      targetVault: map['targetVault'] == null ? null : (VaultSecretResponse.fromMap((map['targetVault']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

