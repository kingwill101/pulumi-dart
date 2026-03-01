// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_instances_instance_clone.dart';
import 'get_database_instances_instance_dns_name.dart';
import 'get_database_instances_instance_ip_address.dart';
import 'get_database_instances_instance_point_in_time_restore_context.dart';
import 'get_database_instances_instance_replica_configuration.dart';
import 'get_database_instances_instance_replication_cluster.dart';
import 'get_database_instances_instance_restore_backup_context.dart';
import 'get_database_instances_instance_server_ca_cert.dart';
import 'get_database_instances_instance_setting.dart';

class GetDatabaseInstancesInstance {
  /// Available Maintenance versions.
  final List<String> availableMaintenanceVersions;

  /// The name of the BackupDR backup to restore from.
  final String backupdrBackup;

  /// Configuration for creating a new instance as a clone of another instance.
  final List<GetDatabaseInstancesInstanceClone> clones;

  /// The connection name of the instance to be used in connection strings. For example, when connecting with Cloud SQL Proxy.
  final String connectionName;

  /// To filter out the Cloud SQL instances which are of the specified database version.
  final String databaseVersion;
  final bool deletionProtection;

  /// The instance-level dns name of the instance for PSC instances or public IP CAS instances.
  final String dnsName;

  /// The list of DNS names used by this instance. Different connection types for an instance may have different DNS names. DNS names can apply to an individual instance or a cluster of instances.
  final List<GetDatabaseInstancesInstanceDnsName> dnsNames;
  final String encryptionKeyName;

  /// The description of final backup if instance enable create final backup during instance deletion.
  final String finalBackupDescription;
  final String firstIpAddress;

  /// The type of the instance. See https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1/instances#SqlInstanceType for supported values.
  final String instanceType;
  final List<GetDatabaseInstancesInstanceIpAddress> ipAddresses;

  /// Maintenance version.
  final String maintenanceVersion;

  /// The name of the instance that will act as the master in the replication setup. Note, this requires the master to have binary_log_enabled set, as well as existing backups.
  final String masterInstanceName;
  final String name;

  /// For a read pool instance, the number of nodes in the read pool. For read pools with auto scaling enabled, this field is read only.
  final int nodeCount;

  /// Configuration for creating a new instance using point-in-time-restore from backupdr backup.
  final List<GetDatabaseInstancesInstancePointInTimeRestoreContext>
  pointInTimeRestoreContexts;
  final String privateIpAddress;

  /// The ID of the project in which the resources belong. If it is not provided, the provider project is used.
  final String project;

  /// The link to service attachment of PSC instance.
  final String pscServiceAttachmentLink;
  final String publicIpAddress;

  /// To filter out the Cloud SQL instances which are located in the specified region.
  final String region;

  /// The configuration for replication.
  final List<GetDatabaseInstancesInstanceReplicaConfiguration>
  replicaConfigurations;

  /// The replicas of the instance.
  final List<String> replicaNames;

  /// A primary instance and disaster recovery replica pair. Applicable to MySQL and PostgreSQL. This field can be set if the primary has psa_write_endpoint set or both the primary and replica are created.
  final List<GetDatabaseInstancesInstanceReplicationCluster>
  replicationClusters;
  final List<GetDatabaseInstancesInstanceRestoreBackupContext>
  restoreBackupContexts;

  /// Initial root password. Required for MS SQL Server.
  final String rootPassword;

  /// Initial root password. Required for MS SQL Server.
  /// Note: This property is write-only and will not be read from the API. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final String rootPasswordWo;

  /// Triggers update of root_password_wo write-only. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final String rootPasswordWoVersion;

  /// The URI of the created resource.
  final String selfLink;
  final List<GetDatabaseInstancesInstanceServerCaCert> serverCaCerts;

  /// The service account email address assigned to the instance.
  final String serviceAccountEmailAddress;

  /// The settings to use for the database. The configuration is detailed below.
  final List<GetDatabaseInstancesInstanceSetting> settings;

  /// Creates a new [GetDatabaseInstancesInstance].
  /// [availableMaintenanceVersions] Available Maintenance versions.
  /// [backupdrBackup] The name of the BackupDR backup to restore from.
  /// [clones] Configuration for creating a new instance as a clone of another instance.
  /// [connectionName] The connection name of the instance to be used in connection strings. For example, when connecting with Cloud SQL Proxy.
  /// [databaseVersion] To filter out the Cloud SQL instances which are of the specified database version.
  /// [deletionProtection] Required.
  /// [dnsName] The instance-level dns name of the instance for PSC instances or public IP CAS instances.
  /// [dnsNames] The list of DNS names used by this instance. Different connection types for an instance may have different DNS names. DNS names can apply to an individual instance or a cluster of instances.
  /// [encryptionKeyName] Required.
  /// [finalBackupDescription] The description of final backup if instance enable create final backup during instance deletion.
  /// [firstIpAddress] Required.
  /// [instanceType] The type of the instance. See https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1/instances#SqlInstanceType for supported values.
  /// [ipAddresses] Required.
  /// [maintenanceVersion] Maintenance version.
  /// [masterInstanceName] The name of the instance that will act as the master in the replication setup. Note, this requires the master to have binary_log_enabled set, as well as existing backups.
  /// [name] Required.
  /// [nodeCount] For a read pool instance, the number of nodes in the read pool. For read pools with auto scaling enabled, this field is read only.
  /// [pointInTimeRestoreContexts] Configuration for creating a new instance using point-in-time-restore from backupdr backup.
  /// [privateIpAddress] Required.
  /// [project] The ID of the project in which the resources belong. If it is not provided, the provider project is used.
  /// [pscServiceAttachmentLink] The link to service attachment of PSC instance.
  /// [publicIpAddress] Required.
  /// [region] To filter out the Cloud SQL instances which are located in the specified region.
  /// [replicaConfigurations] The configuration for replication.
  /// [replicaNames] The replicas of the instance.
  /// [replicationClusters] A primary instance and disaster recovery replica pair. Applicable to MySQL and PostgreSQL. This field can be set if the primary has psa_write_endpoint set or both the primary and replica are created.
  /// [restoreBackupContexts] Required.
  /// [rootPassword] Initial root password. Required for MS SQL Server.
  /// [rootPasswordWo] Initial root password. Required for MS SQL Server.
  /// [rootPasswordWoVersion] Triggers update of root_password_wo write-only. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [selfLink] The URI of the created resource.
  /// [serverCaCerts] Required.
  /// [serviceAccountEmailAddress] The service account email address assigned to the instance.
  /// [settings] The settings to use for the database. The configuration is detailed below.
  GetDatabaseInstancesInstance({
    required this.availableMaintenanceVersions,
    required this.backupdrBackup,
    required this.clones,
    required this.connectionName,
    required this.databaseVersion,
    required this.deletionProtection,
    required this.dnsName,
    required this.dnsNames,
    required this.encryptionKeyName,
    required this.finalBackupDescription,
    required this.firstIpAddress,
    required this.instanceType,
    required this.ipAddresses,
    required this.maintenanceVersion,
    required this.masterInstanceName,
    required this.name,
    required this.nodeCount,
    required this.pointInTimeRestoreContexts,
    required this.privateIpAddress,
    required this.project,
    required this.pscServiceAttachmentLink,
    required this.publicIpAddress,
    required this.region,
    required this.replicaConfigurations,
    required this.replicaNames,
    required this.replicationClusters,
    required this.restoreBackupContexts,
    required this.rootPassword,
    required this.rootPasswordWo,
    required this.rootPasswordWoVersion,
    required this.selfLink,
    required this.serverCaCerts,
    required this.serviceAccountEmailAddress,
    required this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableMaintenanceVersions': availableMaintenanceVersions,
      'backupdrBackup': backupdrBackup,
      'clones':
          pulumi.Input.encodeList<
            GetDatabaseInstancesInstanceClone,
            Map<String, dynamic>
          >(clones, (value) => value.toMap()),
      'connectionName': connectionName,
      'databaseVersion': databaseVersion,
      'deletionProtection': deletionProtection,
      'dnsName': dnsName,
      'dnsNames':
          pulumi.Input.encodeList<
            GetDatabaseInstancesInstanceDnsName,
            Map<String, dynamic>
          >(dnsNames, (value) => value.toMap()),
      'encryptionKeyName': encryptionKeyName,
      'finalBackupDescription': finalBackupDescription,
      'firstIpAddress': firstIpAddress,
      'instanceType': instanceType,
      'ipAddresses':
          pulumi.Input.encodeList<
            GetDatabaseInstancesInstanceIpAddress,
            Map<String, dynamic>
          >(ipAddresses, (value) => value.toMap()),
      'maintenanceVersion': maintenanceVersion,
      'masterInstanceName': masterInstanceName,
      'name': name,
      'nodeCount': nodeCount,
      'pointInTimeRestoreContexts':
          pulumi.Input.encodeList<
            GetDatabaseInstancesInstancePointInTimeRestoreContext,
            Map<String, dynamic>
          >(pointInTimeRestoreContexts, (value) => value.toMap()),
      'privateIpAddress': privateIpAddress,
      'project': project,
      'pscServiceAttachmentLink': pscServiceAttachmentLink,
      'publicIpAddress': publicIpAddress,
      'region': region,
      'replicaConfigurations':
          pulumi.Input.encodeList<
            GetDatabaseInstancesInstanceReplicaConfiguration,
            Map<String, dynamic>
          >(replicaConfigurations, (value) => value.toMap()),
      'replicaNames': replicaNames,
      'replicationClusters':
          pulumi.Input.encodeList<
            GetDatabaseInstancesInstanceReplicationCluster,
            Map<String, dynamic>
          >(replicationClusters, (value) => value.toMap()),
      'restoreBackupContexts':
          pulumi.Input.encodeList<
            GetDatabaseInstancesInstanceRestoreBackupContext,
            Map<String, dynamic>
          >(restoreBackupContexts, (value) => value.toMap()),
      'rootPassword': rootPassword,
      'rootPasswordWo': rootPasswordWo,
      'rootPasswordWoVersion': rootPasswordWoVersion,
      'selfLink': selfLink,
      'serverCaCerts':
          pulumi.Input.encodeList<
            GetDatabaseInstancesInstanceServerCaCert,
            Map<String, dynamic>
          >(serverCaCerts, (value) => value.toMap()),
      'serviceAccountEmailAddress': serviceAccountEmailAddress,
      'settings':
          pulumi.Input.encodeList<
            GetDatabaseInstancesInstanceSetting,
            Map<String, dynamic>
          >(settings, (value) => value.toMap()),
    };
  }

  factory GetDatabaseInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstance(
      availableMaintenanceVersions:
          (map['availableMaintenanceVersions'] as List).cast<String>(),
      backupdrBackup: map['backupdrBackup'] as String,
      clones: pulumi.Input.decodeList<GetDatabaseInstancesInstanceClone>(
        map['clones'],
        (value) => GetDatabaseInstancesInstanceClone.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      connectionName: map['connectionName'] as String,
      databaseVersion: map['databaseVersion'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      dnsName: map['dnsName'] as String,
      dnsNames: pulumi.Input.decodeList<GetDatabaseInstancesInstanceDnsName>(
        map['dnsNames'],
        (value) => GetDatabaseInstancesInstanceDnsName.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      encryptionKeyName: map['encryptionKeyName'] as String,
      finalBackupDescription: map['finalBackupDescription'] as String,
      firstIpAddress: map['firstIpAddress'] as String,
      instanceType: map['instanceType'] as String,
      ipAddresses:
          pulumi.Input.decodeList<GetDatabaseInstancesInstanceIpAddress>(
            map['ipAddresses'],
            (value) => GetDatabaseInstancesInstanceIpAddress.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      maintenanceVersion: map['maintenanceVersion'] as String,
      masterInstanceName: map['masterInstanceName'] as String,
      name: map['name'] as String,
      nodeCount: map['nodeCount'] as int,
      pointInTimeRestoreContexts:
          pulumi.Input.decodeList<
            GetDatabaseInstancesInstancePointInTimeRestoreContext
          >(
            map['pointInTimeRestoreContexts'],
            (value) =>
                GetDatabaseInstancesInstancePointInTimeRestoreContext.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      privateIpAddress: map['privateIpAddress'] as String,
      project: map['project'] as String,
      pscServiceAttachmentLink: map['pscServiceAttachmentLink'] as String,
      publicIpAddress: map['publicIpAddress'] as String,
      region: map['region'] as String,
      replicaConfigurations:
          pulumi.Input.decodeList<
            GetDatabaseInstancesInstanceReplicaConfiguration
          >(
            map['replicaConfigurations'],
            (value) => GetDatabaseInstancesInstanceReplicaConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      replicaNames: (map['replicaNames'] as List).cast<String>(),
      replicationClusters:
          pulumi
              .Input.decodeList<GetDatabaseInstancesInstanceReplicationCluster>(
            map['replicationClusters'],
            (value) => GetDatabaseInstancesInstanceReplicationCluster.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      restoreBackupContexts:
          pulumi.Input.decodeList<
            GetDatabaseInstancesInstanceRestoreBackupContext
          >(
            map['restoreBackupContexts'],
            (value) => GetDatabaseInstancesInstanceRestoreBackupContext.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      rootPassword: map['rootPassword'] as String,
      rootPasswordWo: map['rootPasswordWo'] as String,
      rootPasswordWoVersion: map['rootPasswordWoVersion'] as String,
      selfLink: map['selfLink'] as String,
      serverCaCerts:
          pulumi.Input.decodeList<GetDatabaseInstancesInstanceServerCaCert>(
            map['serverCaCerts'],
            (value) => GetDatabaseInstancesInstanceServerCaCert.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      serviceAccountEmailAddress: map['serviceAccountEmailAddress'] as String,
      settings: pulumi.Input.decodeList<GetDatabaseInstancesInstanceSetting>(
        map['settings'],
        (value) => GetDatabaseInstancesInstanceSetting.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
