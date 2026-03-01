// ignore_for_file: unused_element, unnecessary_cast

import 'authentication.dart';
import 'backup_policy.dart';
import 'client_connection.dart';
import 'migration.dart';
import 'monitoring.dart';

/// Properties of SqlServerInstance.
class SqlServerInstanceProperties {
  /// Authentication related configuration for the SQL Server Instance.
  final Authentication? authentication;
  /// The backup profile for the SQL server.
  final BackupPolicy? backupPolicy;
  /// Client connection related configuration.
  final ClientConnection? clientConnection;
  /// The number of total cores of the Operating System Environment (OSE) hosting the SQL Server instance.
  final String? cores;
  /// SQL Server edition.
  final String? edition;
  /// Type of host for Azure Arc SQL Server
  final String? hostType;
  /// SQL Server instance name.
  final String? instanceName;
  /// Migration related configuration.
  final Migration? migration;
  /// The monitoring configuration.
  final Monitoring? monitoring;
  /// Indicates if the resource represents a SQL Server engine or a SQL Server component service installed on the host.
  final String? serviceType;
  /// Upgrade Action for this resource is locked until it expires. The Expiration time indicated by this value. It is not locked when it is empty.
  final String? upgradeLockedUntil;
  /// SQL Server version.
  final String? version;

  /// Creates a new [SqlServerInstanceProperties].
  /// [authentication] Authentication related configuration for the SQL Server Instance.
  /// [backupPolicy] The backup profile for the SQL server.
  /// [clientConnection] Client connection related configuration.
  /// [cores] The number of total cores of the Operating System Environment (OSE) hosting the SQL Server instance.
  /// [edition] SQL Server edition.
  /// [hostType] Type of host for Azure Arc SQL Server
  /// [instanceName] SQL Server instance name.
  /// [migration] Migration related configuration.
  /// [monitoring] The monitoring configuration.
  /// [serviceType] Indicates if the resource represents a SQL Server engine or a SQL Server component service installed on the host.
  /// [upgradeLockedUntil] Upgrade Action for this resource is locked until it expires. The Expiration time indicated by this value. It is not locked when it is empty.
  /// [version] SQL Server version.
  SqlServerInstanceProperties({
    this.authentication,
    this.backupPolicy,
    this.clientConnection,
    this.cores,
    this.edition,
    this.hostType,
    this.instanceName,
    this.migration,
    this.monitoring,
    this.serviceType,
    this.upgradeLockedUntil,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?authentication == null ? null : authentication!.toMap(),
      'backupPolicy': ?backupPolicy == null ? null : backupPolicy!.toMap(),
      'clientConnection': ?clientConnection == null ? null : clientConnection!.toMap(),
      'cores': ?cores,
      'edition': ?edition,
      'hostType': ?hostType,
      'instanceName': ?instanceName,
      'migration': ?migration == null ? null : migration!.toMap(),
      'monitoring': ?monitoring == null ? null : monitoring!.toMap(),
      'serviceType': ?serviceType,
      'upgradeLockedUntil': ?upgradeLockedUntil,
      'version': ?version,
    };
  }

  factory SqlServerInstanceProperties.fromMap(Map<String, dynamic> map) {
    return SqlServerInstanceProperties(
      authentication: map['authentication'] == null ? null : Authentication.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      backupPolicy: map['backupPolicy'] == null ? null : BackupPolicy.fromMap((map['backupPolicy'] as Map).cast<String, dynamic>()),
      clientConnection: map['clientConnection'] == null ? null : ClientConnection.fromMap((map['clientConnection'] as Map).cast<String, dynamic>()),
      cores: map['cores'] == null ? null : map['cores'] as String,
      edition: map['edition'] == null ? null : map['edition'] as String,
      hostType: map['hostType'] == null ? null : map['hostType'] as String,
      instanceName: map['instanceName'] == null ? null : map['instanceName'] as String,
      migration: map['migration'] == null ? null : Migration.fromMap((map['migration'] as Map).cast<String, dynamic>()),
      monitoring: map['monitoring'] == null ? null : Monitoring.fromMap((map['monitoring'] as Map).cast<String, dynamic>()),
      serviceType: map['serviceType'] == null ? null : map['serviceType'] as String,
      upgradeLockedUntil: map['upgradeLockedUntil'] == null ? null : map['upgradeLockedUntil'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

