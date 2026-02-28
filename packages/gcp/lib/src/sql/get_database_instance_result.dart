// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_instance_clone.dart';
import 'get_database_instance_dns_name.dart';
import 'get_database_instance_ip_address.dart';
import 'get_database_instance_point_in_time_restore_context.dart';
import 'get_database_instance_replica_configuration.dart';
import 'get_database_instance_replication_cluster.dart';
import 'get_database_instance_restore_backup_context.dart';
import 'get_database_instance_server_ca_cert.dart';
import 'get_database_instance_setting.dart';

/// Result data returned by getDatabaseInstance.
class GetDatabaseInstanceResult {
  final List<String> availableMaintenanceVersions;
  final String backupdrBackup;
  final List<GetDatabaseInstanceClone> clones;
  final String connectionName;
  final String databaseVersion;
  final bool deletionProtection;
  final String dnsName;
  final List<GetDatabaseInstanceDnsName> dnsNames;
  final String encryptionKeyName;
  final String finalBackupDescription;
  final String firstIpAddress;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceType;
  final List<GetDatabaseInstanceIpAddress> ipAddresses;
  final String maintenanceVersion;
  final String masterInstanceName;
  final String name;
  final int nodeCount;
  final List<GetDatabaseInstancePointInTimeRestoreContext>
      pointInTimeRestoreContexts;
  final String privateIpAddress;
  final String? project;
  final String pscServiceAttachmentLink;
  final String publicIpAddress;
  final String region;
  final List<GetDatabaseInstanceReplicaConfiguration> replicaConfigurations;
  final List<String> replicaNames;
  final List<GetDatabaseInstanceReplicationCluster> replicationClusters;
  final List<GetDatabaseInstanceRestoreBackupContext> restoreBackupContexts;
  final String rootPassword;
  final String rootPasswordWo;
  final String rootPasswordWoVersion;
  final String selfLink;
  final List<GetDatabaseInstanceServerCaCert> serverCaCerts;
  final String serviceAccountEmailAddress;
  final List<GetDatabaseInstanceSetting> settings;

  /// Creates a new [GetDatabaseInstanceResult].
  /// [availableMaintenanceVersions] Required.
  /// [backupdrBackup] Required.
  /// [clones] Required.
  /// [connectionName] Required.
  /// [databaseVersion] Required.
  /// [deletionProtection] Required.
  /// [dnsName] Required.
  /// [dnsNames] Required.
  /// [encryptionKeyName] Required.
  /// [finalBackupDescription] Required.
  /// [firstIpAddress] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceType] Required.
  /// [ipAddresses] Required.
  /// [maintenanceVersion] Required.
  /// [masterInstanceName] Required.
  /// [name] Required.
  /// [nodeCount] Required.
  /// [pointInTimeRestoreContexts] Required.
  /// [privateIpAddress] Required.
  /// [project] Optional.
  /// [pscServiceAttachmentLink] Required.
  /// [publicIpAddress] Required.
  /// [region] Required.
  /// [replicaConfigurations] Required.
  /// [replicaNames] Required.
  /// [replicationClusters] Required.
  /// [restoreBackupContexts] Required.
  /// [rootPassword] Required.
  /// [rootPasswordWo] Required.
  /// [rootPasswordWoVersion] Required.
  /// [selfLink] Required.
  /// [serverCaCerts] Required.
  /// [serviceAccountEmailAddress] Required.
  /// [settings] Required.
  GetDatabaseInstanceResult({
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
    required this.id,
    required this.instanceType,
    required this.ipAddresses,
    required this.maintenanceVersion,
    required this.masterInstanceName,
    required this.name,
    required this.nodeCount,
    required this.pointInTimeRestoreContexts,
    required this.privateIpAddress,
    this.project,
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
    final map = <String, dynamic>{};
    map['availableMaintenanceVersions'] = availableMaintenanceVersions;
    map['backupdrBackup'] = backupdrBackup;
    map['clones'] =
        pulumi.Input.encodeList<GetDatabaseInstanceClone, Map<String, dynamic>>(
            clones, (value) => value.toMap());
    map['connectionName'] = connectionName;
    map['databaseVersion'] = databaseVersion;
    map['deletionProtection'] = deletionProtection;
    map['dnsName'] = dnsName;
    map['dnsNames'] = pulumi.Input.encodeList<GetDatabaseInstanceDnsName,
        Map<String, dynamic>>(dnsNames, (value) => value.toMap());
    map['encryptionKeyName'] = encryptionKeyName;
    map['finalBackupDescription'] = finalBackupDescription;
    map['firstIpAddress'] = firstIpAddress;
    map['id'] = id;
    map['instanceType'] = instanceType;
    map['ipAddresses'] = pulumi.Input.encodeList<GetDatabaseInstanceIpAddress,
        Map<String, dynamic>>(ipAddresses, (value) => value.toMap());
    map['maintenanceVersion'] = maintenanceVersion;
    map['masterInstanceName'] = masterInstanceName;
    map['name'] = name;
    map['nodeCount'] = nodeCount;
    map['pointInTimeRestoreContexts'] = pulumi.Input.encodeList<
            GetDatabaseInstancePointInTimeRestoreContext, Map<String, dynamic>>(
        pointInTimeRestoreContexts, (value) => value.toMap());
    map['privateIpAddress'] = privateIpAddress;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pscServiceAttachmentLink'] = pscServiceAttachmentLink;
    map['publicIpAddress'] = publicIpAddress;
    map['region'] = region;
    map['replicaConfigurations'] = pulumi.Input.encodeList<
        GetDatabaseInstanceReplicaConfiguration,
        Map<String, dynamic>>(replicaConfigurations, (value) => value.toMap());
    map['replicaNames'] = replicaNames;
    map['replicationClusters'] = pulumi.Input.encodeList<
        GetDatabaseInstanceReplicationCluster,
        Map<String, dynamic>>(replicationClusters, (value) => value.toMap());
    map['restoreBackupContexts'] = pulumi.Input.encodeList<
        GetDatabaseInstanceRestoreBackupContext,
        Map<String, dynamic>>(restoreBackupContexts, (value) => value.toMap());
    map['rootPassword'] = rootPassword;
    map['rootPasswordWo'] = rootPasswordWo;
    map['rootPasswordWoVersion'] = rootPasswordWoVersion;
    map['selfLink'] = selfLink;
    map['serverCaCerts'] = pulumi.Input.encodeList<
        GetDatabaseInstanceServerCaCert,
        Map<String, dynamic>>(serverCaCerts, (value) => value.toMap());
    map['serviceAccountEmailAddress'] = serviceAccountEmailAddress;
    map['settings'] = pulumi.Input.encodeList<GetDatabaseInstanceSetting,
        Map<String, dynamic>>(settings, (value) => value.toMap());
    return map;
  }

  factory GetDatabaseInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceResult(
      availableMaintenanceVersions:
          (map['availableMaintenanceVersions'] as List).cast<String>(),
      backupdrBackup: map['backupdrBackup'] as String,
      clones: pulumi.Input.decodeList<GetDatabaseInstanceClone>(
          map['clones'],
          (value) => GetDatabaseInstanceClone.fromMap(
              (value as Map).cast<String, dynamic>())),
      connectionName: map['connectionName'] as String,
      databaseVersion: map['databaseVersion'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      dnsName: map['dnsName'] as String,
      dnsNames: pulumi.Input.decodeList<GetDatabaseInstanceDnsName>(
          map['dnsNames'],
          (value) => GetDatabaseInstanceDnsName.fromMap(
              (value as Map).cast<String, dynamic>())),
      encryptionKeyName: map['encryptionKeyName'] as String,
      finalBackupDescription: map['finalBackupDescription'] as String,
      firstIpAddress: map['firstIpAddress'] as String,
      id: map['id'] as String,
      instanceType: map['instanceType'] as String,
      ipAddresses: pulumi.Input.decodeList<GetDatabaseInstanceIpAddress>(
          map['ipAddresses'],
          (value) => GetDatabaseInstanceIpAddress.fromMap(
              (value as Map).cast<String, dynamic>())),
      maintenanceVersion: map['maintenanceVersion'] as String,
      masterInstanceName: map['masterInstanceName'] as String,
      name: map['name'] as String,
      nodeCount: map['nodeCount'] as int,
      pointInTimeRestoreContexts:
          pulumi.Input.decodeList<GetDatabaseInstancePointInTimeRestoreContext>(
              map['pointInTimeRestoreContexts'],
              (value) => GetDatabaseInstancePointInTimeRestoreContext.fromMap(
                  (value as Map).cast<String, dynamic>())),
      privateIpAddress: map['privateIpAddress'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pscServiceAttachmentLink: map['pscServiceAttachmentLink'] as String,
      publicIpAddress: map['publicIpAddress'] as String,
      region: map['region'] as String,
      replicaConfigurations:
          pulumi.Input.decodeList<GetDatabaseInstanceReplicaConfiguration>(
              map['replicaConfigurations'],
              (value) => GetDatabaseInstanceReplicaConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      replicaNames: (map['replicaNames'] as List).cast<String>(),
      replicationClusters:
          pulumi.Input.decodeList<GetDatabaseInstanceReplicationCluster>(
              map['replicationClusters'],
              (value) => GetDatabaseInstanceReplicationCluster.fromMap(
                  (value as Map).cast<String, dynamic>())),
      restoreBackupContexts:
          pulumi.Input.decodeList<GetDatabaseInstanceRestoreBackupContext>(
              map['restoreBackupContexts'],
              (value) => GetDatabaseInstanceRestoreBackupContext.fromMap(
                  (value as Map).cast<String, dynamic>())),
      rootPassword: map['rootPassword'] as String,
      rootPasswordWo: map['rootPasswordWo'] as String,
      rootPasswordWoVersion: map['rootPasswordWoVersion'] as String,
      selfLink: map['selfLink'] as String,
      serverCaCerts: pulumi.Input.decodeList<GetDatabaseInstanceServerCaCert>(
          map['serverCaCerts'],
          (value) => GetDatabaseInstanceServerCaCert.fromMap(
              (value as Map).cast<String, dynamic>())),
      serviceAccountEmailAddress: map['serviceAccountEmailAddress'] as String,
      settings: pulumi.Input.decodeList<GetDatabaseInstanceSetting>(
          map['settings'],
          (value) => GetDatabaseInstanceSetting.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
