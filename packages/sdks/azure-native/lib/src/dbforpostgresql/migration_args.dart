// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_secret_parameters.dart';

/// {@template pulumi_dbforpostgresql_migration_args_doc}
/// The set of arguments for Migration.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_migration_args_doc}
class MigrationArgs {
  /// Indicates if cancel must be triggered for the entire migration.
  final pulumi.Input<String>? cancel;
  /// When you want to trigger cancel for specific databases set 'triggerCutover' to 'True' and the names of the specific databases in this array.
  final pulumi.Input<List<String>>? dbsToCancelMigrationOn;
  /// Names of databases to migrate.
  final pulumi.Input<List<String>>? dbsToMigrate;
  /// When you want to trigger cutover for specific databases set 'triggerCutover' to 'True' and the names of the specific databases in this array.
  final pulumi.Input<List<String>>? dbsToTriggerCutoverOn;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Indicates if roles and permissions must be migrated.
  final pulumi.Input<String>? migrateRoles;
  /// Identifier of the private endpoint migration instance.
  final pulumi.Input<String>? migrationInstanceResourceId;
  /// Mode used to perform the migration: Online or Offline.
  final pulumi.Input<String>? migrationMode;
  /// Name of migration.
  final pulumi.Input<String>? migrationName;
  /// Supported option for a migration.
  final pulumi.Input<String>? migrationOption;
  /// End time (UTC) for migration window.
  final pulumi.Input<String>? migrationWindowEndTimeInUtc;
  /// Start time (UTC) for migration window.
  final pulumi.Input<String>? migrationWindowStartTimeInUtc;
  /// Indicates if databases on the target server can be overwritten when already present. If set to 'False', when the migration workflow detects that the database already exists on the target server, it will wait for a confirmation.
  final pulumi.Input<String>? overwriteDbsInTarget;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Migration secret parameters.
  final pulumi.Input<MigrationSecretParameters>? secretParameters;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// Indicates whether to setup logical replication on source server, if needed.
  final pulumi.Input<String>? setupLogicalReplicationOnSourceDbIfNeeded;
  /// Fully qualified domain name (FQDN) or IP address of the source server. This property is optional. When provided, the migration service will always use it to connect to the source server.
  final pulumi.Input<String>? sourceDbServerFullyQualifiedDomainName;
  /// Identifier of the source database server resource, when 'sourceType' is 'PostgreSQLSingleServer'. For other source types this must be set to ipaddress:port@username or hostname:port@username.
  final pulumi.Input<String>? sourceDbServerResourceId;
  /// Source server type used for the migration: ApsaraDB_RDS, AWS, AWS_AURORA, AWS_EC2, AWS_RDS, AzureVM, Crunchy_PostgreSQL, Digital_Ocean_Droplets, Digital_Ocean_PostgreSQL, EDB, EDB_Oracle_Server, EDB_PostgreSQL, GCP, GCP_AlloyDB, GCP_CloudSQL, GCP_Compute, Heroku_PostgreSQL, Huawei_Compute, Huawei_RDS, OnPremises, PostgreSQLCosmosDB, PostgreSQLFlexibleServer, PostgreSQLSingleServer, or Supabase_PostgreSQL
  final pulumi.Input<String>? sourceType;
  /// SSL mode used by a migration. Default SSL mode for 'PostgreSQLSingleServer' is 'VerifyFull'. Default SSL mode for other source types is 'Prefer'.
  final pulumi.Input<String>? sslMode;
  /// Indicates if data migration must start right away.
  final pulumi.Input<String>? startDataMigration;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Fully qualified domain name (FQDN) or IP address of the target server. This property is optional. When provided, the migration service will always use it to connect to the target server.
  final pulumi.Input<String>? targetDbServerFullyQualifiedDomainName;
  /// Indicates if cutover must be triggered for the entire migration.
  final pulumi.Input<String>? triggerCutover;

  /// Creates a new [MigrationArgs].
  /// [cancel] Indicates if cancel must be triggered for the entire migration.
  /// [dbsToCancelMigrationOn] When you want to trigger cancel for specific databases set 'triggerCutover' to 'True' and the names of the specific databases in this array.
  /// [dbsToMigrate] Names of databases to migrate.
  /// [dbsToTriggerCutoverOn] When you want to trigger cutover for specific databases set 'triggerCutover' to 'True' and the names of the specific databases in this array.
  /// [location] The geo-location where the resource lives
  /// [migrateRoles] Indicates if roles and permissions must be migrated.
  /// [migrationInstanceResourceId] Identifier of the private endpoint migration instance.
  /// [migrationMode] Mode used to perform the migration: Online or Offline.
  /// [migrationName] Name of migration.
  /// [migrationOption] Supported option for a migration.
  /// [migrationWindowEndTimeInUtc] End time (UTC) for migration window.
  /// [migrationWindowStartTimeInUtc] Start time (UTC) for migration window.
  /// [overwriteDbsInTarget] Indicates if databases on the target server can be overwritten when already present. If set to 'False', when the migration workflow detects that the database already exists on the target server, it will wait for a confirmation.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [secretParameters] Migration secret parameters.
  /// [serverName] The name of the server.
  /// [setupLogicalReplicationOnSourceDbIfNeeded] Indicates whether to setup logical replication on source server, if needed.
  /// [sourceDbServerFullyQualifiedDomainName] Fully qualified domain name (FQDN) or IP address of the source server. This property is optional. When provided, the migration service will always use it to connect to the source server.
  /// [sourceDbServerResourceId] Identifier of the source database server resource, when 'sourceType' is 'PostgreSQLSingleServer'. For other source types this must be set to ipaddress:port@username or hostname:port@username.
  /// [sourceType] Source server type used for the migration: ApsaraDB_RDS, AWS, AWS_AURORA, AWS_EC2, AWS_RDS, AzureVM, Crunchy_PostgreSQL, Digital_Ocean_Droplets, Digital_Ocean_PostgreSQL, EDB, EDB_Oracle_Server, EDB_PostgreSQL, GCP, GCP_AlloyDB, GCP_CloudSQL, GCP_Compute, Heroku_PostgreSQL, Huawei_Compute, Huawei_RDS, OnPremises, PostgreSQLCosmosDB, PostgreSQLFlexibleServer, PostgreSQLSingleServer, or Supabase_PostgreSQL
  /// [sslMode] SSL mode used by a migration. Default SSL mode for 'PostgreSQLSingleServer' is 'VerifyFull'. Default SSL mode for other source types is 'Prefer'.
  /// [startDataMigration] Indicates if data migration must start right away.
  /// [tags] Resource tags.
  /// [targetDbServerFullyQualifiedDomainName] Fully qualified domain name (FQDN) or IP address of the target server. This property is optional. When provided, the migration service will always use it to connect to the target server.
  /// [triggerCutover] Indicates if cutover must be triggered for the entire migration.
  MigrationArgs({
    this.cancel,
    this.dbsToCancelMigrationOn,
    this.dbsToMigrate,
    this.dbsToTriggerCutoverOn,
    this.location,
    this.migrateRoles,
    this.migrationInstanceResourceId,
    this.migrationMode,
    this.migrationName,
    this.migrationOption,
    this.migrationWindowEndTimeInUtc,
    this.migrationWindowStartTimeInUtc,
    this.overwriteDbsInTarget,
    required this.resourceGroupName,
    this.secretParameters,
    required this.serverName,
    this.setupLogicalReplicationOnSourceDbIfNeeded,
    this.sourceDbServerFullyQualifiedDomainName,
    this.sourceDbServerResourceId,
    this.sourceType,
    this.sslMode,
    this.startDataMigration,
    this.tags,
    this.targetDbServerFullyQualifiedDomainName,
    this.triggerCutover,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cancel': ?cancel,
      'dbsToCancelMigrationOn': ?dbsToCancelMigrationOn,
      'dbsToMigrate': ?dbsToMigrate,
      'dbsToTriggerCutoverOn': ?dbsToTriggerCutoverOn,
      'location': ?location,
      'migrateRoles': ?migrateRoles,
      'migrationInstanceResourceId': ?migrationInstanceResourceId,
      'migrationMode': ?migrationMode,
      'migrationName': ?migrationName,
      'migrationOption': ?migrationOption,
      'migrationWindowEndTimeInUtc': ?migrationWindowEndTimeInUtc,
      'migrationWindowStartTimeInUtc': ?migrationWindowStartTimeInUtc,
      'overwriteDbsInTarget': ?overwriteDbsInTarget,
      'resourceGroupName': resourceGroupName,
      'secretParameters': ?pulumi.Input.mapOptionalInputValue<MigrationSecretParameters, Map<String, dynamic>>(secretParameters, (value) => value.toMap()),
      'serverName': serverName,
      'setupLogicalReplicationOnSourceDbIfNeeded': ?setupLogicalReplicationOnSourceDbIfNeeded,
      'sourceDbServerFullyQualifiedDomainName': ?sourceDbServerFullyQualifiedDomainName,
      'sourceDbServerResourceId': ?sourceDbServerResourceId,
      'sourceType': ?sourceType,
      'sslMode': ?sslMode,
      'startDataMigration': ?startDataMigration,
      'tags': ?tags,
      'targetDbServerFullyQualifiedDomainName': ?targetDbServerFullyQualifiedDomainName,
      'triggerCutover': ?triggerCutover,
    };
  }

  factory MigrationArgs.fromMap(Map<String, dynamic> map) {
    return MigrationArgs(
      cancel: map['cancel'] == null ? null : (map['cancel'] as String).input(),
      dbsToCancelMigrationOn: map['dbsToCancelMigrationOn'] == null ? null : ((map['dbsToCancelMigrationOn'] as List).cast<String>()).input(),
      dbsToMigrate: map['dbsToMigrate'] == null ? null : ((map['dbsToMigrate'] as List).cast<String>()).input(),
      dbsToTriggerCutoverOn: map['dbsToTriggerCutoverOn'] == null ? null : ((map['dbsToTriggerCutoverOn'] as List).cast<String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      migrateRoles: map['migrateRoles'] == null ? null : (map['migrateRoles'] as String).input(),
      migrationInstanceResourceId: map['migrationInstanceResourceId'] == null ? null : (map['migrationInstanceResourceId'] as String).input(),
      migrationMode: map['migrationMode'] == null ? null : (map['migrationMode'] as String).input(),
      migrationName: map['migrationName'] == null ? null : (map['migrationName'] as String).input(),
      migrationOption: map['migrationOption'] == null ? null : (map['migrationOption'] as String).input(),
      migrationWindowEndTimeInUtc: map['migrationWindowEndTimeInUtc'] == null ? null : (map['migrationWindowEndTimeInUtc'] as String).input(),
      migrationWindowStartTimeInUtc: map['migrationWindowStartTimeInUtc'] == null ? null : (map['migrationWindowStartTimeInUtc'] as String).input(),
      overwriteDbsInTarget: map['overwriteDbsInTarget'] == null ? null : (map['overwriteDbsInTarget'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      secretParameters: map['secretParameters'] == null ? null : (MigrationSecretParameters.fromMap((map['secretParameters'] as Map).cast<String, dynamic>())).input(),
      serverName: (map['serverName'] as String).input(),
      setupLogicalReplicationOnSourceDbIfNeeded: map['setupLogicalReplicationOnSourceDbIfNeeded'] == null ? null : (map['setupLogicalReplicationOnSourceDbIfNeeded'] as String).input(),
      sourceDbServerFullyQualifiedDomainName: map['sourceDbServerFullyQualifiedDomainName'] == null ? null : (map['sourceDbServerFullyQualifiedDomainName'] as String).input(),
      sourceDbServerResourceId: map['sourceDbServerResourceId'] == null ? null : (map['sourceDbServerResourceId'] as String).input(),
      sourceType: map['sourceType'] == null ? null : (map['sourceType'] as String).input(),
      sslMode: map['sslMode'] == null ? null : (map['sslMode'] as String).input(),
      startDataMigration: map['startDataMigration'] == null ? null : (map['startDataMigration'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      targetDbServerFullyQualifiedDomainName: map['targetDbServerFullyQualifiedDomainName'] == null ? null : (map['targetDbServerFullyQualifiedDomainName'] as String).input(),
      triggerCutover: map['triggerCutover'] == null ? null : (map['triggerCutover'] as String).input(),
    );
  }
}

