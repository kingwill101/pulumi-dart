// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_secret.dart';

/// The properties specific to Azure SQL VM targets.
class SqlVmTargetProperties {
  /// The FQDN host name of the server to use in the connection string when connecting to a target. For example, for an Azure SQL logical server in the Azure commercial cloud, the value might be 'sql-logical-server-22092780.database.windows.net'; for an Azure SQL managed instance in the Azure commercial cloud, the value might be 'sql-mi-39441134.767d5869f605.database.windows.net'. Port number and instance name must be specified separately.
  final pulumi.Input<String> connectionServerName;
  /// The TCP port number to optionally use in the connection string when connecting to an Azure SQL VM target.
  final pulumi.Input<int?>? connectionTcpPort;
  /// The SQL instance name to optionally use in the connection string when connecting to an Azure SQL VM target.
  final pulumi.Input<String?>? sqlNamedInstanceName;
  /// The Azure resource ID of an Azure SQL VM target.
  final pulumi.Input<String> sqlVmResourceId;
  /// The type of authentication to use when connecting to a target.
  final pulumi.Input<dynamic> targetAuthenticationType;
  /// Discriminator property for TargetProperties.
  /// Expected value is 'SqlVm'.
  final pulumi.Input<String> targetType;
  /// To use SQL authentication when connecting to targets, specify the vault where the login name and password secrets are stored.
  final pulumi.Input<VaultSecret?>? targetVault;

  /// Creates a new [SqlVmTargetProperties].
  /// [connectionServerName] The FQDN host name of the server to use in the connection string when connecting to a target. For example, for an Azure SQL logical server in the Azure commercial cloud, the value might be 'sql-logical-server-22092780.database.windows.net'; for an Azure SQL managed instance in the Azure commercial cloud, the value might be 'sql-mi-39441134.767d5869f605.database.windows.net'. Port number and instance name must be specified separately.
  /// [connectionTcpPort] The TCP port number to optionally use in the connection string when connecting to an Azure SQL VM target.
  /// [sqlNamedInstanceName] The SQL instance name to optionally use in the connection string when connecting to an Azure SQL VM target.
  /// [sqlVmResourceId] The Azure resource ID of an Azure SQL VM target.
  /// [targetAuthenticationType] The type of authentication to use when connecting to a target.
  /// [targetType] Discriminator property for TargetProperties.
  /// [targetVault] To use SQL authentication when connecting to targets, specify the vault where the login name and password secrets are stored.
  SqlVmTargetProperties({
    required this.connectionServerName,
    pulumi.Input<int?>? connectionTcpPort,
    this.sqlNamedInstanceName,
    required this.sqlVmResourceId,
    required this.targetAuthenticationType,
    required this.targetType,
    this.targetVault,
  }) : connectionTcpPort = connectionTcpPort ?? pulumi.Input.fromValue(1433);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionServerName': connectionServerName,
      'connectionTcpPort': ?connectionTcpPort,
      'sqlNamedInstanceName': ?sqlNamedInstanceName,
      'sqlVmResourceId': sqlVmResourceId,
      'targetAuthenticationType': targetAuthenticationType,
      'targetType': targetType,
      'targetVault': ?pulumi.Input.mapOptionalInputValue<VaultSecret, Map<String, dynamic>>(targetVault, (value) => value.toMap()),
    };
  }

  factory SqlVmTargetProperties.fromMap(Map<String, dynamic> map) {
    return SqlVmTargetProperties(
      connectionServerName: pulumi.Input.fromValue(map['connectionServerName'] as String),
      connectionTcpPort: (() { final guardedValue = map['connectionTcpPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      sqlNamedInstanceName: (() { final guardedValue = map['sqlNamedInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlVmResourceId: pulumi.Input.fromValue(map['sqlVmResourceId'] as String),
      targetAuthenticationType: pulumi.Input.fromValue(map['targetAuthenticationType']),
      targetType: pulumi.Input.fromValue(map['targetType'] as String),
      targetVault: (() { final guardedValue = map['targetVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VaultSecret.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
