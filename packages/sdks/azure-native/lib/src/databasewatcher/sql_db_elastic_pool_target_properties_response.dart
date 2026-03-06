// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_secret_response.dart';

/// The properties specific to an elastic pool in Azure SQL Database.
class SqlDbElasticPoolTargetPropertiesResponse {
  /// The Azure resource ID of the anchor database used to connect to an elastic pool.
  final pulumi.Input<String> anchorDatabaseResourceId;
  /// The FQDN host name of the server to use in the connection string when connecting to a target. For example, for an Azure SQL logical server in the Azure commercial cloud, the value might be 'sql-logical-server-22092780.database.windows.net'; for an Azure SQL managed instance in the Azure commercial cloud, the value might be 'sql-mi-39441134.767d5869f605.database.windows.net'. Port number and instance name must be specified separately.
  final pulumi.Input<String> connectionServerName;
  /// The provisioning state of the resource.
  final pulumi.Input<String> provisioningState;
  /// Set to true to monitor a high availability replica of specified target, if any.
  final pulumi.Input<bool>? readIntent;
  /// The Azure resource ID of an Azure SQL DB elastic pool target.
  final pulumi.Input<String> sqlEpResourceId;
  /// The type of authentication to use when connecting to a target.
  final pulumi.Input<String> targetAuthenticationType;
  /// Discriminator property for TargetProperties.
  /// Expected value is 'SqlEp'.
  final pulumi.Input<String> targetType;
  /// To use SQL authentication when connecting to targets, specify the vault where the login name and password secrets are stored.
  final pulumi.Input<VaultSecretResponse>? targetVault;

  /// Creates a new [SqlDbElasticPoolTargetPropertiesResponse].
  /// [anchorDatabaseResourceId] The Azure resource ID of the anchor database used to connect to an elastic pool.
  /// [connectionServerName] The FQDN host name of the server to use in the connection string when connecting to a target. For example, for an Azure SQL logical server in the Azure commercial cloud, the value might be 'sql-logical-server-22092780.database.windows.net'; for an Azure SQL managed instance in the Azure commercial cloud, the value might be 'sql-mi-39441134.767d5869f605.database.windows.net'. Port number and instance name must be specified separately.
  /// [provisioningState] The provisioning state of the resource.
  /// [readIntent] Set to true to monitor a high availability replica of specified target, if any.
  /// [sqlEpResourceId] The Azure resource ID of an Azure SQL DB elastic pool target.
  /// [targetAuthenticationType] The type of authentication to use when connecting to a target.
  /// [targetType] Discriminator property for TargetProperties.
  /// [targetVault] To use SQL authentication when connecting to targets, specify the vault where the login name and password secrets are stored.
  const SqlDbElasticPoolTargetPropertiesResponse({
    required this.anchorDatabaseResourceId,
    required this.connectionServerName,
    required this.provisioningState,
    this.readIntent,
    required this.sqlEpResourceId,
    required this.targetAuthenticationType,
    required this.targetType,
    this.targetVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anchorDatabaseResourceId': anchorDatabaseResourceId,
      'connectionServerName': connectionServerName,
      'provisioningState': provisioningState,
      'readIntent': ?readIntent,
      'sqlEpResourceId': sqlEpResourceId,
      'targetAuthenticationType': targetAuthenticationType,
      'targetType': targetType,
      'targetVault': ?pulumi.Input.mapOptionalInputValue<VaultSecretResponse, Map<String, dynamic>>(targetVault, (value) => value.toMap()),
    };
  }

  factory SqlDbElasticPoolTargetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SqlDbElasticPoolTargetPropertiesResponse(
      anchorDatabaseResourceId: pulumi.Input.fromValue(map['anchorDatabaseResourceId'] as String),
      connectionServerName: pulumi.Input.fromValue(map['connectionServerName'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      readIntent: (() { final guardedValue = map['readIntent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sqlEpResourceId: pulumi.Input.fromValue(map['sqlEpResourceId'] as String),
      targetAuthenticationType: pulumi.Input.fromValue(map['targetAuthenticationType'] as String),
      targetType: pulumi.Input.fromValue(map['targetType'] as String),
      targetVault: (() { final guardedValue = map['targetVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VaultSecretResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

