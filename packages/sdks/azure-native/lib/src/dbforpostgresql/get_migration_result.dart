// ignore_for_file: unused_element, unnecessary_cast

import 'db_server_metadata_response.dart';
import 'migration_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMigration.
class GetMigrationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Indicates if cancel must be triggered for the entire migration.
  final String? cancel;
  /// Current status of a migration.
  final MigrationStatusResponse currentStatus;
  /// When you want to trigger cancel for specific databases set 'triggerCutover' to 'True' and the names of the specific databases in this array.
  final List<String>? dbsToCancelMigrationOn;
  /// Names of databases to migrate.
  final List<String>? dbsToMigrate;
  /// When you want to trigger cutover for specific databases set 'triggerCutover' to 'True' and the names of the specific databases in this array.
  final List<String>? dbsToTriggerCutoverOn;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// Indicates if roles and permissions must be migrated.
  final String? migrateRoles;
  /// Identifier of a migration.
  final String migrationId;
  /// Identifier of the private endpoint migration instance.
  final String? migrationInstanceResourceId;
  /// Mode used to perform the migration: Online or Offline.
  final String? migrationMode;
  /// Supported option for a migration.
  final String? migrationOption;
  /// End time (UTC) for migration window.
  final String? migrationWindowEndTimeInUtc;
  /// Start time (UTC) for migration window.
  final String? migrationWindowStartTimeInUtc;
  /// The name of the resource
  final String name;
  /// Indicates if databases on the target server can be overwritten when already present. If set to 'False', when the migration workflow detects that the database already exists on the target server, it will wait for a confirmation.
  final String? overwriteDbsInTarget;
  /// Indicates whether to setup logical replication on source server, if needed.
  final String? setupLogicalReplicationOnSourceDbIfNeeded;
  /// Fully qualified domain name (FQDN) or IP address of the source server. This property is optional. When provided, the migration service will always use it to connect to the source server.
  final String? sourceDbServerFullyQualifiedDomainName;
  /// Metadata of source database server.
  final DbServerMetadataResponse sourceDbServerMetadata;
  /// Identifier of the source database server resource, when 'sourceType' is 'PostgreSQLSingleServer'. For other source types this must be set to ipaddress:port@username or hostname:port@username.
  final String? sourceDbServerResourceId;
  /// Source server type used for the migration: ApsaraDB_RDS, AWS, AWS_AURORA, AWS_EC2, AWS_RDS, AzureVM, Crunchy_PostgreSQL, Digital_Ocean_Droplets, Digital_Ocean_PostgreSQL, EDB, EDB_Oracle_Server, EDB_PostgreSQL, GCP, GCP_AlloyDB, GCP_CloudSQL, GCP_Compute, Heroku_PostgreSQL, Huawei_Compute, Huawei_RDS, OnPremises, PostgreSQLCosmosDB, PostgreSQLFlexibleServer, PostgreSQLSingleServer, or Supabase_PostgreSQL
  final String? sourceType;
  /// SSL mode used by a migration. Default SSL mode for 'PostgreSQLSingleServer' is 'VerifyFull'. Default SSL mode for other source types is 'Prefer'.
  final String? sslMode;
  /// Indicates if data migration must start right away.
  final String? startDataMigration;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Fully qualified domain name (FQDN) or IP address of the target server. This property is optional. When provided, the migration service will always use it to connect to the target server.
  final String? targetDbServerFullyQualifiedDomainName;
  /// Metadata of target database server.
  final DbServerMetadataResponse targetDbServerMetadata;
  /// Identifier of the target database server resource.
  final String targetDbServerResourceId;
  /// Indicates if cutover must be triggered for the entire migration.
  final String? triggerCutover;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetMigrationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cancel] Indicates if cancel must be triggered for the entire migration.
  /// [currentStatus] Current status of a migration.
  /// [dbsToCancelMigrationOn] When you want to trigger cancel for specific databases set 'triggerCutover' to 'True' and the names of the specific databases in this array.
  /// [dbsToMigrate] Names of databases to migrate.
  /// [dbsToTriggerCutoverOn] When you want to trigger cutover for specific databases set 'triggerCutover' to 'True' and the names of the specific databases in this array.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [migrateRoles] Indicates if roles and permissions must be migrated.
  /// [migrationId] Identifier of a migration.
  /// [migrationInstanceResourceId] Identifier of the private endpoint migration instance.
  /// [migrationMode] Mode used to perform the migration: Online or Offline.
  /// [migrationOption] Supported option for a migration.
  /// [migrationWindowEndTimeInUtc] End time (UTC) for migration window.
  /// [migrationWindowStartTimeInUtc] Start time (UTC) for migration window.
  /// [name] The name of the resource
  /// [overwriteDbsInTarget] Indicates if databases on the target server can be overwritten when already present. If set to 'False', when the migration workflow detects that the database already exists on the target server, it will wait for a confirmation.
  /// [setupLogicalReplicationOnSourceDbIfNeeded] Indicates whether to setup logical replication on source server, if needed.
  /// [sourceDbServerFullyQualifiedDomainName] Fully qualified domain name (FQDN) or IP address of the source server. This property is optional. When provided, the migration service will always use it to connect to the source server.
  /// [sourceDbServerMetadata] Metadata of source database server.
  /// [sourceDbServerResourceId] Identifier of the source database server resource, when 'sourceType' is 'PostgreSQLSingleServer'. For other source types this must be set to ipaddress:port@username or hostname:port@username.
  /// [sourceType] Source server type used for the migration: ApsaraDB_RDS, AWS, AWS_AURORA, AWS_EC2, AWS_RDS, AzureVM, Crunchy_PostgreSQL, Digital_Ocean_Droplets, Digital_Ocean_PostgreSQL, EDB, EDB_Oracle_Server, EDB_PostgreSQL, GCP, GCP_AlloyDB, GCP_CloudSQL, GCP_Compute, Heroku_PostgreSQL, Huawei_Compute, Huawei_RDS, OnPremises, PostgreSQLCosmosDB, PostgreSQLFlexibleServer, PostgreSQLSingleServer, or Supabase_PostgreSQL
  /// [sslMode] SSL mode used by a migration. Default SSL mode for 'PostgreSQLSingleServer' is 'VerifyFull'. Default SSL mode for other source types is 'Prefer'.
  /// [startDataMigration] Indicates if data migration must start right away.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [targetDbServerFullyQualifiedDomainName] Fully qualified domain name (FQDN) or IP address of the target server. This property is optional. When provided, the migration service will always use it to connect to the target server.
  /// [targetDbServerMetadata] Metadata of target database server.
  /// [targetDbServerResourceId] Identifier of the target database server resource.
  /// [triggerCutover] Indicates if cutover must be triggered for the entire migration.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetMigrationResult({
    required this.azureApiVersion,
    this.cancel,
    required this.currentStatus,
    this.dbsToCancelMigrationOn,
    this.dbsToMigrate,
    this.dbsToTriggerCutoverOn,
    required this.id,
    required this.location,
    this.migrateRoles,
    required this.migrationId,
    this.migrationInstanceResourceId,
    this.migrationMode,
    this.migrationOption,
    this.migrationWindowEndTimeInUtc,
    this.migrationWindowStartTimeInUtc,
    required this.name,
    this.overwriteDbsInTarget,
    this.setupLogicalReplicationOnSourceDbIfNeeded,
    this.sourceDbServerFullyQualifiedDomainName,
    required this.sourceDbServerMetadata,
    this.sourceDbServerResourceId,
    this.sourceType,
    this.sslMode,
    this.startDataMigration,
    required this.systemData,
    this.tags,
    this.targetDbServerFullyQualifiedDomainName,
    required this.targetDbServerMetadata,
    required this.targetDbServerResourceId,
    this.triggerCutover,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'cancel': ?cancel,
      'currentStatus': currentStatus.toMap(),
      'dbsToCancelMigrationOn': ?dbsToCancelMigrationOn,
      'dbsToMigrate': ?dbsToMigrate,
      'dbsToTriggerCutoverOn': ?dbsToTriggerCutoverOn,
      'id': id,
      'location': location,
      'migrateRoles': ?migrateRoles,
      'migrationId': migrationId,
      'migrationInstanceResourceId': ?migrationInstanceResourceId,
      'migrationMode': ?migrationMode,
      'migrationOption': ?migrationOption,
      'migrationWindowEndTimeInUtc': ?migrationWindowEndTimeInUtc,
      'migrationWindowStartTimeInUtc': ?migrationWindowStartTimeInUtc,
      'name': name,
      'overwriteDbsInTarget': ?overwriteDbsInTarget,
      'setupLogicalReplicationOnSourceDbIfNeeded': ?setupLogicalReplicationOnSourceDbIfNeeded,
      'sourceDbServerFullyQualifiedDomainName': ?sourceDbServerFullyQualifiedDomainName,
      'sourceDbServerMetadata': sourceDbServerMetadata.toMap(),
      'sourceDbServerResourceId': ?sourceDbServerResourceId,
      'sourceType': ?sourceType,
      'sslMode': ?sslMode,
      'startDataMigration': ?startDataMigration,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'targetDbServerFullyQualifiedDomainName': ?targetDbServerFullyQualifiedDomainName,
      'targetDbServerMetadata': targetDbServerMetadata.toMap(),
      'targetDbServerResourceId': targetDbServerResourceId,
      'triggerCutover': ?triggerCutover,
      'type': type,
    };
  }

  factory GetMigrationResult.fromMap(Map<String, dynamic> map) {
    return GetMigrationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      cancel: (() { final guardedValue = map['cancel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      currentStatus: MigrationStatusResponse.fromMap((map['currentStatus']! as Map).cast<String, dynamic>()),
      dbsToCancelMigrationOn: (() { final guardedValue = map['dbsToCancelMigrationOn']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      dbsToMigrate: (() { final guardedValue = map['dbsToMigrate']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      dbsToTriggerCutoverOn: (() { final guardedValue = map['dbsToTriggerCutoverOn']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: map['id'] as String,
      location: map['location'] as String,
      migrateRoles: (() { final guardedValue = map['migrateRoles']; if (guardedValue == null) return null; return guardedValue as String; })(),
      migrationId: map['migrationId'] as String,
      migrationInstanceResourceId: (() { final guardedValue = map['migrationInstanceResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      migrationMode: (() { final guardedValue = map['migrationMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      migrationOption: (() { final guardedValue = map['migrationOption']; if (guardedValue == null) return null; return guardedValue as String; })(),
      migrationWindowEndTimeInUtc: (() { final guardedValue = map['migrationWindowEndTimeInUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      migrationWindowStartTimeInUtc: (() { final guardedValue = map['migrationWindowStartTimeInUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      overwriteDbsInTarget: (() { final guardedValue = map['overwriteDbsInTarget']; if (guardedValue == null) return null; return guardedValue as String; })(),
      setupLogicalReplicationOnSourceDbIfNeeded: (() { final guardedValue = map['setupLogicalReplicationOnSourceDbIfNeeded']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceDbServerFullyQualifiedDomainName: (() { final guardedValue = map['sourceDbServerFullyQualifiedDomainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceDbServerMetadata: DbServerMetadataResponse.fromMap((map['sourceDbServerMetadata']! as Map).cast<String, dynamic>()),
      sourceDbServerResourceId: (() { final guardedValue = map['sourceDbServerResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sslMode: (() { final guardedValue = map['sslMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startDataMigration: (() { final guardedValue = map['startDataMigration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetDbServerFullyQualifiedDomainName: (() { final guardedValue = map['targetDbServerFullyQualifiedDomainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetDbServerMetadata: DbServerMetadataResponse.fromMap((map['targetDbServerMetadata']! as Map).cast<String, dynamic>()),
      targetDbServerResourceId: map['targetDbServerResourceId'] as String,
      triggerCutover: (() { final guardedValue = map['triggerCutover']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

