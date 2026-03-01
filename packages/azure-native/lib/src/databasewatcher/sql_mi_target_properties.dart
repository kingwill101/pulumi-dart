// ignore_for_file: unused_element, unnecessary_cast

import 'vault_secret.dart';

/// The properties specific to Azure SQL Managed Instance targets.
class SqlMiTargetProperties {
  /// The FQDN host name of the server to use in the connection string when connecting to a target. For example, for an Azure SQL logical server in the Azure commercial cloud, the value might be 'sql-logical-server-22092780.database.windows.net'; for an Azure SQL managed instance in the Azure commercial cloud, the value might be 'sql-mi-39441134.767d5869f605.database.windows.net'. Port number and instance name must be specified separately.
  final String connectionServerName;
  /// The TCP port number to optionally use in the connection string when connecting to an Azure SQL Managed Instance target.
  final int? connectionTcpPort;
  /// Set to true to monitor a high availability replica of specified target, if any.
  final bool? readIntent;
  /// The Azure resource ID of an Azure SQL Managed Instance target.
  final String sqlMiResourceId;
  /// The type of authentication to use when connecting to a target.
  final String targetAuthenticationType;
  /// Discriminator property for TargetProperties.
  /// Expected value is 'SqlMi'.
  final String targetType;
  /// To use SQL authentication when connecting to targets, specify the vault where the login name and password secrets are stored.
  final VaultSecret? targetVault;

  /// Creates a new [SqlMiTargetProperties].
  /// [connectionServerName] The FQDN host name of the server to use in the connection string when connecting to a target. For example, for an Azure SQL logical server in the Azure commercial cloud, the value might be 'sql-logical-server-22092780.database.windows.net'; for an Azure SQL managed instance in the Azure commercial cloud, the value might be 'sql-mi-39441134.767d5869f605.database.windows.net'. Port number and instance name must be specified separately.
  /// [connectionTcpPort] The TCP port number to optionally use in the connection string when connecting to an Azure SQL Managed Instance target.
  /// [readIntent] Set to true to monitor a high availability replica of specified target, if any.
  /// [sqlMiResourceId] The Azure resource ID of an Azure SQL Managed Instance target.
  /// [targetAuthenticationType] The type of authentication to use when connecting to a target.
  /// [targetType] Discriminator property for TargetProperties.
  /// [targetVault] To use SQL authentication when connecting to targets, specify the vault where the login name and password secrets are stored.
  SqlMiTargetProperties({
    required this.connectionServerName,
    this.connectionTcpPort,
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
      'readIntent': ?readIntent,
      'sqlMiResourceId': sqlMiResourceId,
      'targetAuthenticationType': targetAuthenticationType,
      'targetType': targetType,
      'targetVault': ?targetVault == null ? null : targetVault!.toMap(),
    };
  }

  factory SqlMiTargetProperties.fromMap(Map<String, dynamic> map) {
    return SqlMiTargetProperties(
      connectionServerName: map['connectionServerName'] as String,
      connectionTcpPort: map['connectionTcpPort'] == null ? null : map['connectionTcpPort'] as int,
      readIntent: map['readIntent'] == null ? null : map['readIntent'] as bool,
      sqlMiResourceId: map['sqlMiResourceId'] as String,
      targetAuthenticationType: map['targetAuthenticationType'] as String,
      targetType: map['targetType'] as String,
      targetVault: map['targetVault'] == null ? null : VaultSecret.fromMap((map['targetVault'] as Map).cast<String, dynamic>()),
    );
  }
}

