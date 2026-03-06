// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_secret_response.dart';

/// The properties specific to a database in Azure SQL Database.
class SqlDbSingleDatabaseTargetPropertiesResponse {
  /// The FQDN host name of the server to use in the connection string when connecting to a target. For example, for an Azure SQL logical server in the Azure commercial cloud, the value might be 'sql-logical-server-22092780.database.windows.net'; for an Azure SQL managed instance in the Azure commercial cloud, the value might be 'sql-mi-39441134.767d5869f605.database.windows.net'. Port number and instance name must be specified separately.
  final pulumi.Input<String> connectionServerName;
  /// The provisioning state of the resource.
  final pulumi.Input<String> provisioningState;
  /// Set to true to monitor a high availability replica of specified target, if any.
  final pulumi.Input<bool>? readIntent;
  /// The Azure resource ID of an Azure SQL DB database target.
  final pulumi.Input<String> sqlDbResourceId;
  /// The type of authentication to use when connecting to a target.
  final pulumi.Input<String> targetAuthenticationType;
  /// Discriminator property for TargetProperties.
  /// Expected value is 'SqlDb'.
  final pulumi.Input<String> targetType;
  /// To use SQL authentication when connecting to targets, specify the vault where the login name and password secrets are stored.
  final pulumi.Input<VaultSecretResponse>? targetVault;

  /// Creates a new [SqlDbSingleDatabaseTargetPropertiesResponse].
  /// [connectionServerName] The FQDN host name of the server to use in the connection string when connecting to a target. For example, for an Azure SQL logical server in the Azure commercial cloud, the value might be 'sql-logical-server-22092780.database.windows.net'; for an Azure SQL managed instance in the Azure commercial cloud, the value might be 'sql-mi-39441134.767d5869f605.database.windows.net'. Port number and instance name must be specified separately.
  /// [provisioningState] The provisioning state of the resource.
  /// [readIntent] Set to true to monitor a high availability replica of specified target, if any.
  /// [sqlDbResourceId] The Azure resource ID of an Azure SQL DB database target.
  /// [targetAuthenticationType] The type of authentication to use when connecting to a target.
  /// [targetType] Discriminator property for TargetProperties.
  /// [targetVault] To use SQL authentication when connecting to targets, specify the vault where the login name and password secrets are stored.
  const SqlDbSingleDatabaseTargetPropertiesResponse({
    required this.connectionServerName,
    required this.provisioningState,
    this.readIntent,
    required this.sqlDbResourceId,
    required this.targetAuthenticationType,
    required this.targetType,
    this.targetVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionServerName': connectionServerName,
      'provisioningState': provisioningState,
      'readIntent': ?readIntent,
      'sqlDbResourceId': sqlDbResourceId,
      'targetAuthenticationType': targetAuthenticationType,
      'targetType': targetType,
      'targetVault': ?pulumi.Input.mapOptionalInputValue<VaultSecretResponse, Map<String, dynamic>>(targetVault, (value) => value.toMap()),
    };
  }

  factory SqlDbSingleDatabaseTargetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SqlDbSingleDatabaseTargetPropertiesResponse(
      connectionServerName: pulumi.Input.fromValue(map['connectionServerName'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      readIntent: (() { final guardedValue = map['readIntent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sqlDbResourceId: pulumi.Input.fromValue(map['sqlDbResourceId'] as String),
      targetAuthenticationType: pulumi.Input.fromValue(map['targetAuthenticationType'] as String),
      targetType: pulumi.Input.fromValue(map['targetType'] as String),
      targetVault: (() { final guardedValue = map['targetVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VaultSecretResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

