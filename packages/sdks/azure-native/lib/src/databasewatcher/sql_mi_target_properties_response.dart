// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_secret_response.dart';

/// The properties specific to Azure SQL Managed Instance targets.
class SqlMiTargetPropertiesResponse {
  /// The FQDN host name of the server to use in the connection string when connecting to a target. For example, for an Azure SQL logical server in the Azure commercial cloud, the value might be 'sql-logical-server-22092780.database.windows.net'; for an Azure SQL managed instance in the Azure commercial cloud, the value might be 'sql-mi-39441134.767d5869f605.database.windows.net'. Port number and instance name must be specified separately.
  final pulumi.Input<String> connectionServerName;

  /// The TCP port number to optionally use in the connection string when connecting to an Azure SQL Managed Instance target.
  final pulumi.Input<int>? connectionTcpPort;

  /// The provisioning state of the resource.
  final pulumi.Input<String> provisioningState;

  /// Set to true to monitor a high availability replica of specified target, if any.
  final pulumi.Input<bool>? readIntent;

  /// The Azure resource ID of an Azure SQL Managed Instance target.
  final pulumi.Input<String> sqlMiResourceId;

  /// The type of authentication to use when connecting to a target.
  final pulumi.Input<String> targetAuthenticationType;

  /// Discriminator property for TargetProperties.
  /// Expected value is 'SqlMi'.
  final pulumi.Input<String> targetType;

  /// To use SQL authentication when connecting to targets, specify the vault where the login name and password secrets are stored.
  final pulumi.Input<VaultSecretResponse>? targetVault;

  /// Creates a new [SqlMiTargetPropertiesResponse].
  /// [connectionServerName] The FQDN host name of the server to use in the connection string when connecting to a target. For example, for an Azure SQL logical server in the Azure commercial cloud, the value might be 'sql-logical-server-22092780.database.windows.net'; for an Azure SQL managed instance in the Azure commercial cloud, the value might be 'sql-mi-39441134.767d5869f605.database.windows.net'. Port number and instance name must be specified separately.
  /// [connectionTcpPort] The TCP port number to optionally use in the connection string when connecting to an Azure SQL Managed Instance target.
  /// [provisioningState] The provisioning state of the resource.
  /// [readIntent] Set to true to monitor a high availability replica of specified target, if any.
  /// [sqlMiResourceId] The Azure resource ID of an Azure SQL Managed Instance target.
  /// [targetAuthenticationType] The type of authentication to use when connecting to a target.
  /// [targetType] Discriminator property for TargetProperties.
  /// [targetVault] To use SQL authentication when connecting to targets, specify the vault where the login name and password secrets are stored.
  SqlMiTargetPropertiesResponse({
    required this.connectionServerName,
    this.connectionTcpPort,
    required this.provisioningState,
    this.readIntent,
    required this.sqlMiResourceId,
    required this.targetAuthenticationType,
    required this.targetType,
    this.targetVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionServerName': connectionServerName,
      'connectionTcpPort': ?connectionTcpPort,
      'provisioningState': provisioningState,
      'readIntent': ?readIntent,
      'sqlMiResourceId': sqlMiResourceId,
      'targetAuthenticationType': targetAuthenticationType,
      'targetType': targetType,
      'targetVault':
          ?pulumi.Input.mapOptionalInputValue<
            VaultSecretResponse,
            Map<String, dynamic>
          >(targetVault, (value) => value.toMap()),
    };
  }

  factory SqlMiTargetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SqlMiTargetPropertiesResponse(
      connectionServerName: pulumi.Input.fromValue(
        map['connectionServerName'] as String,
      ),
      connectionTcpPort: (() {
        final guardedValue = map['connectionTcpPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      readIntent: (() {
        final guardedValue = map['readIntent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sqlMiResourceId: pulumi.Input.fromValue(map['sqlMiResourceId'] as String),
      targetAuthenticationType: pulumi.Input.fromValue(
        map['targetAuthenticationType'] as String,
      ),
      targetType: pulumi.Input.fromValue(map['targetType'] as String),
      targetVault: (() {
        final guardedValue = map['targetVault'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VaultSecretResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
