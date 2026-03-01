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
    pulumi.Output<String>? cancel,
    pulumi.Output<List<String>>? dbsToCancelMigrationOn,
    pulumi.Output<List<String>>? dbsToMigrate,
    pulumi.Output<List<String>>? dbsToTriggerCutoverOn,
    pulumi.Output<String>? location,
    pulumi.Output<String>? migrateRoles,
    pulumi.Output<String>? migrationInstanceResourceId,
    pulumi.Output<String>? migrationMode,
    pulumi.Output<String>? migrationName,
    pulumi.Output<String>? migrationOption,
    pulumi.Output<String>? migrationWindowEndTimeInUtc,
    pulumi.Output<String>? migrationWindowStartTimeInUtc,
    pulumi.Output<String>? overwriteDbsInTarget,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<MigrationSecretParameters>? secretParameters,
    required pulumi.Output<String> serverName,
    pulumi.Output<String>? setupLogicalReplicationOnSourceDbIfNeeded,
    pulumi.Output<String>? sourceDbServerFullyQualifiedDomainName,
    pulumi.Output<String>? sourceDbServerResourceId,
    pulumi.Output<String>? sourceType,
    pulumi.Output<String>? sslMode,
    pulumi.Output<String>? startDataMigration,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? targetDbServerFullyQualifiedDomainName,
    pulumi.Output<String>? triggerCutover,
  }) :
      cancel = pulumi.Input.asOptionalInput<String>(cancel),
      dbsToCancelMigrationOn = pulumi.Input.asOptionalInput<List<String>>(dbsToCancelMigrationOn),
      dbsToMigrate = pulumi.Input.asOptionalInput<List<String>>(dbsToMigrate),
      dbsToTriggerCutoverOn = pulumi.Input.asOptionalInput<List<String>>(dbsToTriggerCutoverOn),
      location = pulumi.Input.asOptionalInput<String>(location),
      migrateRoles = pulumi.Input.asOptionalInput<String>(migrateRoles),
      migrationInstanceResourceId = pulumi.Input.asOptionalInput<String>(migrationInstanceResourceId),
      migrationMode = pulumi.Input.asOptionalInput<String>(migrationMode),
      migrationName = pulumi.Input.asOptionalInput<String>(migrationName),
      migrationOption = pulumi.Input.asOptionalInput<String>(migrationOption),
      migrationWindowEndTimeInUtc = pulumi.Input.asOptionalInput<String>(migrationWindowEndTimeInUtc),
      migrationWindowStartTimeInUtc = pulumi.Input.asOptionalInput<String>(migrationWindowStartTimeInUtc),
      overwriteDbsInTarget = pulumi.Input.asOptionalInput<String>(overwriteDbsInTarget),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      secretParameters = pulumi.Input.asOptionalInput<MigrationSecretParameters>(secretParameters),
      serverName = pulumi.Input.asInput<String>(serverName),
      setupLogicalReplicationOnSourceDbIfNeeded = pulumi.Input.asOptionalInput<String>(setupLogicalReplicationOnSourceDbIfNeeded),
      sourceDbServerFullyQualifiedDomainName = pulumi.Input.asOptionalInput<String>(sourceDbServerFullyQualifiedDomainName),
      sourceDbServerResourceId = pulumi.Input.asOptionalInput<String>(sourceDbServerResourceId),
      sourceType = pulumi.Input.asOptionalInput<String>(sourceType),
      sslMode = pulumi.Input.asOptionalInput<String>(sslMode),
      startDataMigration = pulumi.Input.asOptionalInput<String>(startDataMigration),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetDbServerFullyQualifiedDomainName = pulumi.Input.asOptionalInput<String>(targetDbServerFullyQualifiedDomainName),
      triggerCutover = pulumi.Input.asOptionalInput<String>(triggerCutover);

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
      cancel: map['cancel'] == null ? null : pulumi.Output.create<String>(map['cancel'] as String),
      dbsToCancelMigrationOn: map['dbsToCancelMigrationOn'] == null ? null : pulumi.Output.create<List<String>>((map['dbsToCancelMigrationOn'] as List).cast<String>()),
      dbsToMigrate: map['dbsToMigrate'] == null ? null : pulumi.Output.create<List<String>>((map['dbsToMigrate'] as List).cast<String>()),
      dbsToTriggerCutoverOn: map['dbsToTriggerCutoverOn'] == null ? null : pulumi.Output.create<List<String>>((map['dbsToTriggerCutoverOn'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      migrateRoles: map['migrateRoles'] == null ? null : pulumi.Output.create<String>(map['migrateRoles'] as String),
      migrationInstanceResourceId: map['migrationInstanceResourceId'] == null ? null : pulumi.Output.create<String>(map['migrationInstanceResourceId'] as String),
      migrationMode: map['migrationMode'] == null ? null : pulumi.Output.create<String>(map['migrationMode'] as String),
      migrationName: map['migrationName'] == null ? null : pulumi.Output.create<String>(map['migrationName'] as String),
      migrationOption: map['migrationOption'] == null ? null : pulumi.Output.create<String>(map['migrationOption'] as String),
      migrationWindowEndTimeInUtc: map['migrationWindowEndTimeInUtc'] == null ? null : pulumi.Output.create<String>(map['migrationWindowEndTimeInUtc'] as String),
      migrationWindowStartTimeInUtc: map['migrationWindowStartTimeInUtc'] == null ? null : pulumi.Output.create<String>(map['migrationWindowStartTimeInUtc'] as String),
      overwriteDbsInTarget: map['overwriteDbsInTarget'] == null ? null : pulumi.Output.create<String>(map['overwriteDbsInTarget'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secretParameters: map['secretParameters'] == null ? null : pulumi.Output.create<MigrationSecretParameters>(MigrationSecretParameters.fromMap((map['secretParameters'] as Map).cast<String, dynamic>())),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      setupLogicalReplicationOnSourceDbIfNeeded: map['setupLogicalReplicationOnSourceDbIfNeeded'] == null ? null : pulumi.Output.create<String>(map['setupLogicalReplicationOnSourceDbIfNeeded'] as String),
      sourceDbServerFullyQualifiedDomainName: map['sourceDbServerFullyQualifiedDomainName'] == null ? null : pulumi.Output.create<String>(map['sourceDbServerFullyQualifiedDomainName'] as String),
      sourceDbServerResourceId: map['sourceDbServerResourceId'] == null ? null : pulumi.Output.create<String>(map['sourceDbServerResourceId'] as String),
      sourceType: map['sourceType'] == null ? null : pulumi.Output.create<String>(map['sourceType'] as String),
      sslMode: map['sslMode'] == null ? null : pulumi.Output.create<String>(map['sslMode'] as String),
      startDataMigration: map['startDataMigration'] == null ? null : pulumi.Output.create<String>(map['startDataMigration'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetDbServerFullyQualifiedDomainName: map['targetDbServerFullyQualifiedDomainName'] == null ? null : pulumi.Output.create<String>(map['targetDbServerFullyQualifiedDomainName'] as String),
      triggerCutover: map['triggerCutover'] == null ? null : pulumi.Output.create<String>(map['triggerCutover'] as String),
    );
  }
}

