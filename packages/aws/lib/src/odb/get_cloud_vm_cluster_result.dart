// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_vm_cluster_data_collection_option.dart';
import 'get_cloud_vm_cluster_iorm_config_cache.dart';

/// Result data returned by getCloudVmCluster.
class GetCloudVmClusterResult {
  /// The Amazon Resource Name (ARN) for the cloud vm cluster.
  final String arn;
  final String cloudExadataInfrastructureArn;
  /// The ID of the Cloud Exadata Infrastructure.
  final String cloudExadataInfrastructureId;
  /// The name of the Grid Infrastructure (GI) cluster.
  final String clusterName;
  /// The OCI model compute model used when you create or clone an instance: ECPU or OCPU. An ECPU is an abstracted measure of compute resources. ECPUs are based on the number of cores elastically allocated from a pool of compute and storage servers. An OCPU is a legacy physical measure of compute resources. OCPUs are based on the physical core of a processor with hyper-threading enabled.
  final String computeModel;
  /// The number of CPU cores enabled on the VM cluster.
  final int cpuCoreCount;
  /// The time when the VM cluster was created.
  final String createdAt;
  /// The set of diagnostic collection options enabled for the VM cluster.
  final List<GetCloudVmClusterDataCollectionOption> dataCollectionOptions;
  /// The size of the data disk group, in terabytes (TB), that's allocated for the VM cluster.
  final double dataStorageSizeInTbs;
  /// The amount of local node storage, in gigabytes (GB), that's allocated for the VM cluster.
  final int dbNodeStorageSizeInGbs;
  /// The list of database servers for the VM cluster.
  final List<String> dbServers;
  /// The type of redundancy configured for the VM cluster. NORMAL is 2-way redundancy. HIGH is 3-way redundancy.
  final String diskRedundancy;
  /// The display name of the VM cluster.
  final String displayName;
  /// The domain name of the VM cluster.
  final String domain;
  /// The software version of the Oracle Grid Infrastructure (GI) for the VM cluster.
  final String giVersion;
  /// The computed hostname prefix for the VM cluster.
  final String hostnamePrefixComputed;
  final String id;
  /// The ExadataIormConfig cache details for the VM cluster.
  final List<GetCloudVmClusterIormConfigCache> iormConfigCaches;
  /// Indicates whether database backups to local Exadata storage is enabled for the VM cluster.
  final bool isLocalBackupEnabled;
  /// Indicates whether the VM cluster is configured with a sparse disk group.
  final bool isSparseDiskGroupEnabled;
  /// The Oracle Cloud ID (OCID) of the last maintenance update history entry.
  final String lastUpdateHistoryEntryId;
  /// The Oracle license model applied to the VM cluster.
  final String licenseModel;
  /// The port number configured for the listener on the VM cluster.
  final int listenerPort;
  /// The amount of memory, in gigabytes (GB), that's allocated for the VM cluster.
  final int memorySizeInGbs;
  /// The number of nodes in the VM cluster.
  final int nodeCount;
  /// The name of the OCI Resource Anchor.
  final String ociResourceAnchorName;
  /// The HTTPS link to the VM cluster in OCI.
  final String ociUrl;
  /// The OCID of the VM cluster.
  final String ocid;
  final String odbNetworkArn;
  /// The ID of the ODB network.
  final String odbNetworkId;
  /// The amount of progress made on the current operation on the VM cluster, expressed as a percentage.
  final double percentProgress;
  final String region;
  /// The FQDN of the DNS record for the Single Client Access Name (SCAN) IP addresses that are associated with the VM cluster.
  final String scanDnsName;
  /// The OCID of the DNS record for the SCAN IP addresses that are associated with the VM cluster.
  final String scanDnsRecordId;
  /// The OCID of the SCAN IP addresses that are associated with the VM cluster.
  final List<String> scanIpIds;
  /// The hardware model name of the Exadata infrastructure that's running the VM cluster.
  final String shape;
  /// The public key portion of one or more key pairs used for SSH access to the VM cluster.
  final List<String> sshPublicKeys;
  /// The status of the VM cluster.
  final String status;
  /// Additional information about the status of the VM cluster.
  final String statusReason;
  /// The amount of local node storage, in gigabytes (GB), that's allocated to the VM cluster.
  final int storageSizeInGbs;
  /// The operating system version of the image chosen for the VM cluster.
  final String systemVersion;
  final Map<String, String> tags;
  /// The time zone of the VM cluster.
  final String timezone;
  /// The virtual IP (VIP) addresses that are associated with the VM cluster. Oracle's Cluster Ready Services (CRS) creates and maintains one VIP address for each node in the VM cluster to enable failover. If one node fails, the VIP is reassigned to another active node in the cluster.
  final List<String> vipIds;

  /// Creates a new [GetCloudVmClusterResult].
  /// [arn] The Amazon Resource Name (ARN) for the cloud vm cluster.
  /// [cloudExadataInfrastructureArn] Required.
  /// [cloudExadataInfrastructureId] The ID of the Cloud Exadata Infrastructure.
  /// [clusterName] The name of the Grid Infrastructure (GI) cluster.
  /// [computeModel] The OCI model compute model used when you create or clone an instance: ECPU or OCPU. An ECPU is an abstracted measure of compute resources. ECPUs are based on the number of cores elastically allocated from a pool of compute and storage servers. An OCPU is a legacy physical measure of compute resources. OCPUs are based on the physical core of a processor with hyper-threading enabled.
  /// [cpuCoreCount] The number of CPU cores enabled on the VM cluster.
  /// [createdAt] The time when the VM cluster was created.
  /// [dataCollectionOptions] The set of diagnostic collection options enabled for the VM cluster.
  /// [dataStorageSizeInTbs] The size of the data disk group, in terabytes (TB), that's allocated for the VM cluster.
  /// [dbNodeStorageSizeInGbs] The amount of local node storage, in gigabytes (GB), that's allocated for the VM cluster.
  /// [dbServers] The list of database servers for the VM cluster.
  /// [diskRedundancy] The type of redundancy configured for the VM cluster. NORMAL is 2-way redundancy. HIGH is 3-way redundancy.
  /// [displayName] The display name of the VM cluster.
  /// [domain] The domain name of the VM cluster.
  /// [giVersion] The software version of the Oracle Grid Infrastructure (GI) for the VM cluster.
  /// [hostnamePrefixComputed] The computed hostname prefix for the VM cluster.
  /// [id] Required.
  /// [iormConfigCaches] The ExadataIormConfig cache details for the VM cluster.
  /// [isLocalBackupEnabled] Indicates whether database backups to local Exadata storage is enabled for the VM cluster.
  /// [isSparseDiskGroupEnabled] Indicates whether the VM cluster is configured with a sparse disk group.
  /// [lastUpdateHistoryEntryId] The Oracle Cloud ID (OCID) of the last maintenance update history entry.
  /// [licenseModel] The Oracle license model applied to the VM cluster.
  /// [listenerPort] The port number configured for the listener on the VM cluster.
  /// [memorySizeInGbs] The amount of memory, in gigabytes (GB), that's allocated for the VM cluster.
  /// [nodeCount] The number of nodes in the VM cluster.
  /// [ociResourceAnchorName] The name of the OCI Resource Anchor.
  /// [ociUrl] The HTTPS link to the VM cluster in OCI.
  /// [ocid] The OCID of the VM cluster.
  /// [odbNetworkArn] Required.
  /// [odbNetworkId] The ID of the ODB network.
  /// [percentProgress] The amount of progress made on the current operation on the VM cluster, expressed as a percentage.
  /// [region] Required.
  /// [scanDnsName] The FQDN of the DNS record for the Single Client Access Name (SCAN) IP addresses that are associated with the VM cluster.
  /// [scanDnsRecordId] The OCID of the DNS record for the SCAN IP addresses that are associated with the VM cluster.
  /// [scanIpIds] The OCID of the SCAN IP addresses that are associated with the VM cluster.
  /// [shape] The hardware model name of the Exadata infrastructure that's running the VM cluster.
  /// [sshPublicKeys] The public key portion of one or more key pairs used for SSH access to the VM cluster.
  /// [status] The status of the VM cluster.
  /// [statusReason] Additional information about the status of the VM cluster.
  /// [storageSizeInGbs] The amount of local node storage, in gigabytes (GB), that's allocated to the VM cluster.
  /// [systemVersion] The operating system version of the image chosen for the VM cluster.
  /// [tags] Required.
  /// [timezone] The time zone of the VM cluster.
  /// [vipIds] The virtual IP (VIP) addresses that are associated with the VM cluster. Oracle's Cluster Ready Services (CRS) creates and maintains one VIP address for each node in the VM cluster to enable failover. If one node fails, the VIP is reassigned to another active node in the cluster.
  GetCloudVmClusterResult({
    required this.arn,
    required this.cloudExadataInfrastructureArn,
    required this.cloudExadataInfrastructureId,
    required this.clusterName,
    required this.computeModel,
    required this.cpuCoreCount,
    required this.createdAt,
    required this.dataCollectionOptions,
    required this.dataStorageSizeInTbs,
    required this.dbNodeStorageSizeInGbs,
    required this.dbServers,
    required this.diskRedundancy,
    required this.displayName,
    required this.domain,
    required this.giVersion,
    required this.hostnamePrefixComputed,
    required this.id,
    required this.iormConfigCaches,
    required this.isLocalBackupEnabled,
    required this.isSparseDiskGroupEnabled,
    required this.lastUpdateHistoryEntryId,
    required this.licenseModel,
    required this.listenerPort,
    required this.memorySizeInGbs,
    required this.nodeCount,
    required this.ociResourceAnchorName,
    required this.ociUrl,
    required this.ocid,
    required this.odbNetworkArn,
    required this.odbNetworkId,
    required this.percentProgress,
    required this.region,
    required this.scanDnsName,
    required this.scanDnsRecordId,
    required this.scanIpIds,
    required this.shape,
    required this.sshPublicKeys,
    required this.status,
    required this.statusReason,
    required this.storageSizeInGbs,
    required this.systemVersion,
    required this.tags,
    required this.timezone,
    required this.vipIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'cloudExadataInfrastructureArn': cloudExadataInfrastructureArn,
      'cloudExadataInfrastructureId': cloudExadataInfrastructureId,
      'clusterName': clusterName,
      'computeModel': computeModel,
      'cpuCoreCount': cpuCoreCount,
      'createdAt': createdAt,
      'dataCollectionOptions': pulumi.Input.encodeList<GetCloudVmClusterDataCollectionOption, Map<String, dynamic>>(dataCollectionOptions, (value) => value.toMap()),
      'dataStorageSizeInTbs': dataStorageSizeInTbs,
      'dbNodeStorageSizeInGbs': dbNodeStorageSizeInGbs,
      'dbServers': dbServers,
      'diskRedundancy': diskRedundancy,
      'displayName': displayName,
      'domain': domain,
      'giVersion': giVersion,
      'hostnamePrefixComputed': hostnamePrefixComputed,
      'id': id,
      'iormConfigCaches': pulumi.Input.encodeList<GetCloudVmClusterIormConfigCache, Map<String, dynamic>>(iormConfigCaches, (value) => value.toMap()),
      'isLocalBackupEnabled': isLocalBackupEnabled,
      'isSparseDiskGroupEnabled': isSparseDiskGroupEnabled,
      'lastUpdateHistoryEntryId': lastUpdateHistoryEntryId,
      'licenseModel': licenseModel,
      'listenerPort': listenerPort,
      'memorySizeInGbs': memorySizeInGbs,
      'nodeCount': nodeCount,
      'ociResourceAnchorName': ociResourceAnchorName,
      'ociUrl': ociUrl,
      'ocid': ocid,
      'odbNetworkArn': odbNetworkArn,
      'odbNetworkId': odbNetworkId,
      'percentProgress': percentProgress,
      'region': region,
      'scanDnsName': scanDnsName,
      'scanDnsRecordId': scanDnsRecordId,
      'scanIpIds': scanIpIds,
      'shape': shape,
      'sshPublicKeys': sshPublicKeys,
      'status': status,
      'statusReason': statusReason,
      'storageSizeInGbs': storageSizeInGbs,
      'systemVersion': systemVersion,
      'tags': tags,
      'timezone': timezone,
      'vipIds': vipIds,
    };
  }

  factory GetCloudVmClusterResult.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClusterResult(
      arn: map['arn'] as String,
      cloudExadataInfrastructureArn: map['cloudExadataInfrastructureArn'] as String,
      cloudExadataInfrastructureId: map['cloudExadataInfrastructureId'] as String,
      clusterName: map['clusterName'] as String,
      computeModel: map['computeModel'] as String,
      cpuCoreCount: map['cpuCoreCount'] as int,
      createdAt: map['createdAt'] as String,
      dataCollectionOptions: pulumi.Input.decodeList<GetCloudVmClusterDataCollectionOption>(map['dataCollectionOptions'], (value) => GetCloudVmClusterDataCollectionOption.fromMap((value as Map).cast<String, dynamic>())),
      dataStorageSizeInTbs: map['dataStorageSizeInTbs'] as double,
      dbNodeStorageSizeInGbs: map['dbNodeStorageSizeInGbs'] as int,
      dbServers: (map['dbServers'] as List).cast<String>(),
      diskRedundancy: map['diskRedundancy'] as String,
      displayName: map['displayName'] as String,
      domain: map['domain'] as String,
      giVersion: map['giVersion'] as String,
      hostnamePrefixComputed: map['hostnamePrefixComputed'] as String,
      id: map['id'] as String,
      iormConfigCaches: pulumi.Input.decodeList<GetCloudVmClusterIormConfigCache>(map['iormConfigCaches'], (value) => GetCloudVmClusterIormConfigCache.fromMap((value as Map).cast<String, dynamic>())),
      isLocalBackupEnabled: map['isLocalBackupEnabled'] as bool,
      isSparseDiskGroupEnabled: map['isSparseDiskGroupEnabled'] as bool,
      lastUpdateHistoryEntryId: map['lastUpdateHistoryEntryId'] as String,
      licenseModel: map['licenseModel'] as String,
      listenerPort: map['listenerPort'] as int,
      memorySizeInGbs: map['memorySizeInGbs'] as int,
      nodeCount: map['nodeCount'] as int,
      ociResourceAnchorName: map['ociResourceAnchorName'] as String,
      ociUrl: map['ociUrl'] as String,
      ocid: map['ocid'] as String,
      odbNetworkArn: map['odbNetworkArn'] as String,
      odbNetworkId: map['odbNetworkId'] as String,
      percentProgress: map['percentProgress'] as double,
      region: map['region'] as String,
      scanDnsName: map['scanDnsName'] as String,
      scanDnsRecordId: map['scanDnsRecordId'] as String,
      scanIpIds: (map['scanIpIds'] as List).cast<String>(),
      shape: map['shape'] as String,
      sshPublicKeys: (map['sshPublicKeys'] as List).cast<String>(),
      status: map['status'] as String,
      statusReason: map['statusReason'] as String,
      storageSizeInGbs: map['storageSizeInGbs'] as int,
      systemVersion: map['systemVersion'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      timezone: map['timezone'] as String,
      vipIds: (map['vipIds'] as List).cast<String>(),
    );
  }
}

