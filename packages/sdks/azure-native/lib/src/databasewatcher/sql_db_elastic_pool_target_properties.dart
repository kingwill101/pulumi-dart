// ignore_for_file: unused_element, unnecessary_cast

import 'vault_secret.dart';

/// The properties specific to an elastic pool in Azure SQL Database.
class SqlDbElasticPoolTargetProperties {
  /// The Azure resource ID of the anchor database used to connect to an elastic pool.
  final String anchorDatabaseResourceId;
  /// The FQDN host name of the server to use in the connection string when connecting to a target. For example, for an Azure SQL logical server in the Azure commercial cloud, the value might be 'sql-logical-server-22092780.database.windows.net'; for an Azure SQL managed instance in the Azure commercial cloud, the value might be 'sql-mi-39441134.767d5869f605.database.windows.net'. Port number and instance name must be specified separately.
  final String connectionServerName;
  /// Set to true to monitor a high availability replica of specified target, if any.
  final bool? readIntent;
  /// The Azure resource ID of an Azure SQL DB elastic pool target.
  final String sqlEpResourceId;
  /// The type of authentication to use when connecting to a target.
  final String targetAuthenticationType;
  /// Discriminator property for TargetProperties.
  /// Expected value is 'SqlEp'.
  final String targetType;
  /// To use SQL authentication when connecting to targets, specify the vault where the login name and password secrets are stored.
  final VaultSecret? targetVault;

  /// Creates a new [SqlDbElasticPoolTargetProperties].
  /// [anchorDatabaseResourceId] The Azure resource ID of the anchor database used to connect to an elastic pool.
  /// [connectionServerName] The FQDN host name of the server to use in the connection string when connecting to a target. For example, for an Azure SQL logical server in the Azure commercial cloud, the value might be 'sql-logical-server-22092780.database.windows.net'; for an Azure SQL managed instance in the Azure commercial cloud, the value might be 'sql-mi-39441134.767d5869f605.database.windows.net'. Port number and instance name must be specified separately.
  /// [readIntent] Set to true to monitor a high availability replica of specified target, if any.
  /// [sqlEpResourceId] The Azure resource ID of an Azure SQL DB elastic pool target.
  /// [targetAuthenticationType] The type of authentication to use when connecting to a target.
  /// [targetType] Discriminator property for TargetProperties.
  /// [targetVault] To use SQL authentication when connecting to targets, specify the vault where the login name and password secrets are stored.
  SqlDbElasticPoolTargetProperties({
    required this.anchorDatabaseResourceId,
    required this.connectionServerName,
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
      'readIntent': ?readIntent,
      'sqlEpResourceId': sqlEpResourceId,
      'targetAuthenticationType': targetAuthenticationType,
      'targetType': targetType,
      'targetVault': ?targetVault == null ? null : targetVault!.toMap(),
    };
  }

  factory SqlDbElasticPoolTargetProperties.fromMap(Map<String, dynamic> map) {
    return SqlDbElasticPoolTargetProperties(
      anchorDatabaseResourceId: map['anchorDatabaseResourceId'] as String,
      connectionServerName: map['connectionServerName'] as String,
      readIntent: map['readIntent'] == null ? null : map['readIntent'] as bool,
      sqlEpResourceId: map['sqlEpResourceId'] as String,
      targetAuthenticationType: map['targetAuthenticationType'] as String,
      targetType: map['targetType'] as String,
      targetVault: map['targetVault'] == null ? null : VaultSecret.fromMap((map['targetVault'] as Map).cast<String, dynamic>()),
    );
  }
}

