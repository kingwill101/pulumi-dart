// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication.dart';
import 'backup_policy.dart';
import 'client_connection.dart';
import 'migration.dart';
import 'monitoring.dart';

/// Properties of SqlServerInstance.
class SqlServerInstanceProperties {
  /// Authentication related configuration for the SQL Server Instance.
  final pulumi.Input<Authentication>? authentication;
  /// The backup profile for the SQL server.
  final pulumi.Input<BackupPolicy>? backupPolicy;
  /// Client connection related configuration.
  final pulumi.Input<ClientConnection>? clientConnection;
  /// The number of total cores of the Operating System Environment (OSE) hosting the SQL Server instance.
  final pulumi.Input<String>? cores;
  /// SQL Server edition.
  final pulumi.Input<String>? edition;
  /// Type of host for Azure Arc SQL Server
  final pulumi.Input<String>? hostType;
  /// SQL Server instance name.
  final pulumi.Input<String>? instanceName;
  /// Migration related configuration.
  final pulumi.Input<Migration>? migration;
  /// The monitoring configuration.
  final pulumi.Input<Monitoring>? monitoring;
  /// Indicates if the resource represents a SQL Server engine or a SQL Server component service installed on the host.
  final pulumi.Input<String>? serviceType;
  /// Upgrade Action for this resource is locked until it expires. The Expiration time indicated by this value. It is not locked when it is empty.
  final pulumi.Input<String>? upgradeLockedUntil;
  /// SQL Server version.
  final pulumi.Input<String>? version;

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
      'authentication': ?pulumi.Input.mapOptionalInputValue<Authentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'backupPolicy': ?pulumi.Input.mapOptionalInputValue<BackupPolicy, Map<String, dynamic>>(backupPolicy, (value) => value.toMap()),
      'clientConnection': ?pulumi.Input.mapOptionalInputValue<ClientConnection, Map<String, dynamic>>(clientConnection, (value) => value.toMap()),
      'cores': ?cores,
      'edition': ?edition,
      'hostType': ?hostType,
      'instanceName': ?instanceName,
      'migration': ?pulumi.Input.mapOptionalInputValue<Migration, Map<String, dynamic>>(migration, (value) => value.toMap()),
      'monitoring': ?pulumi.Input.mapOptionalInputValue<Monitoring, Map<String, dynamic>>(monitoring, (value) => value.toMap()),
      'serviceType': ?serviceType,
      'upgradeLockedUntil': ?upgradeLockedUntil,
      'version': ?version,
    };
  }

  factory SqlServerInstanceProperties.fromMap(Map<String, dynamic> map) {
    return SqlServerInstanceProperties(
      authentication: map['authentication'] == null ? null : (Authentication.fromMap((map['authentication']! as Map).cast<String, dynamic>())).input(),
      backupPolicy: map['backupPolicy'] == null ? null : (BackupPolicy.fromMap((map['backupPolicy']! as Map).cast<String, dynamic>())).input(),
      clientConnection: map['clientConnection'] == null ? null : (ClientConnection.fromMap((map['clientConnection']! as Map).cast<String, dynamic>())).input(),
      cores: map['cores'] == null ? null : (map['cores']! as String).input(),
      edition: map['edition'] == null ? null : (map['edition']! as String).input(),
      hostType: map['hostType'] == null ? null : (map['hostType']! as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName']! as String).input(),
      migration: map['migration'] == null ? null : (Migration.fromMap((map['migration']! as Map).cast<String, dynamic>())).input(),
      monitoring: map['monitoring'] == null ? null : (Monitoring.fromMap((map['monitoring']! as Map).cast<String, dynamic>())).input(),
      serviceType: map['serviceType'] == null ? null : (map['serviceType']! as String).input(),
      upgradeLockedUntil: map['upgradeLockedUntil'] == null ? null : (map['upgradeLockedUntil']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

