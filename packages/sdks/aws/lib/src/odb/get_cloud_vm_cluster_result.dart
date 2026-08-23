// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_vm_cluster_data_collection_option.dart';
import 'get_cloud_vm_cluster_iorm_config_cache.dart';

/// Result data returned by getCloudVmCluster.
class GetCloudVmClusterResult {
  /// Amazon Resource Name (ARN) for the cloud vm cluster.
  final String arn;
  /// ARN of the Cloud Exadata Infrastructure.
  final String cloudExadataInfrastructureArn;
  /// ID of the Cloud Exadata Infrastructure.
  final String cloudExadataInfrastructureId;
  /// Name of the Grid Infrastructure (GI) cluster.
  final String clusterName;
  /// OCI model compute model used when you create or clone an instance: ECPU or OCPU. An ECPU is an abstracted measure of compute resources. ECPUs are based on the number of cores elastically allocated from a pool of compute and storage servers. An OCPU is a legacy physical measure of compute resources. OCPUs are based on the physical core of a processor with hyper-threading enabled.
  final String computeModel;
  /// Number of CPU cores enabled on the VM cluster.
  final int cpuCoreCount;
  /// Time when the VM cluster was created.
  final String createdAt;
  /// Set of diagnostic collection options enabled for the VM cluster.
  final List<GetCloudVmClusterDataCollectionOption> dataCollectionOptions;
  /// Size of the data disk group, in terabytes (TB), that's allocated for the VM cluster.
  final double dataStorageSizeInTbs;
  /// Amount of local node storage, in gigabytes (GB), that's allocated for the VM cluster.
  final int dbNodeStorageSizeInGbs;
  /// List of database servers for the VM cluster.
  final List<String> dbServers;
  /// Type of redundancy configured for the VM cluster. NORMAL is 2-way redundancy. HIGH is 3-way redundancy.
  final String diskRedundancy;
  /// Display name of the VM cluster.
  final String displayName;
  /// Domain name of the VM cluster.
  final String domain;
  /// Software version of the Oracle Grid Infrastructure (GI) for the VM cluster.
  final String giVersion;
  /// Computed hostname prefix for the VM cluster.
  final String hostnamePrefixComputed;
  final String id;
  /// ExadataIormConfig cache details for the VM cluster.
  final List<GetCloudVmClusterIormConfigCache> iormConfigCaches;
  /// Whether database backups to local Exadata storage is enabled for the VM cluster.
  final bool isLocalBackupEnabled;
  /// Whether the VM cluster is configured with a sparse disk group.
  final bool isSparseDiskGroupEnabled;
  /// Oracle Cloud ID (OCID) of the last maintenance update history entry.
  final String lastUpdateHistoryEntryId;
  /// Oracle license model applied to the VM cluster.
  final String licenseModel;
  /// Port number configured for the listener on the VM cluster.
  final int listenerPort;
  /// Amount of memory, in gigabytes (GB), that's allocated for the VM cluster.
  final int memorySizeInGbs;
  /// Number of nodes in the VM cluster.
  final int nodeCount;
  /// Name of the OCI Resource Anchor.
  final String ociResourceAnchorName;
  /// HTTPS link to the VM cluster in OCI.
  final String ociUrl;
  /// OCID of the VM cluster.
  final String ocid;
  /// ARN of the ODB network.
  final String odbNetworkArn;
  /// ID of the ODB network.
  final String odbNetworkId;
  /// Amount of progress made on the current operation on the VM cluster, expressed as a percentage.
  final double percentProgress;
  final String region;
  /// FQDN of the DNS record for the Single Client Access Name (SCAN) IP addresses that are associated with the VM cluster.
  final String scanDnsName;
  /// OCID of the DNS record for the SCAN IP addresses that are associated with the VM cluster.
  final String scanDnsRecordId;
  /// OCID of the SCAN IP addresses that are associated with the VM cluster.
  final List<String> scanIpIds;
  /// Hardware model name of the Exadata infrastructure that's running the VM cluster.
  final String shape;
  /// Public key portion of one or more key pairs used for SSH access to the VM cluster.
  final List<String> sshPublicKeys;
  /// Status of the VM cluster.
  final String status;
  /// Additional information about the status of the VM cluster.
  final String statusReason;
  /// Amount of local node storage, in gigabytes (GB), that's allocated to the VM cluster.
  final int storageSizeInGbs;
  /// Operating system version of the image chosen for the VM cluster.
  final String systemVersion;
  /// Map of tags assigned to the resource.
  final Map<String, String> tags;
  /// Time zone of the VM cluster.
  final String timezone;
  /// Virtual IP (VIP) addresses that are associated with the VM cluster. Oracle's Cluster Ready Services (CRS) creates and maintains one VIP address for each node in the VM cluster to enable failover. If one node fails, the VIP is reassigned to another active node in the cluster.
  final List<String> vipIds;

  /// Creates a new [GetCloudVmClusterResult].
  /// [arn] Amazon Resource Name (ARN) for the cloud vm cluster.
  /// [cloudExadataInfrastructureArn] ARN of the Cloud Exadata Infrastructure.
  /// [cloudExadataInfrastructureId] ID of the Cloud Exadata Infrastructure.
  /// [clusterName] Name of the Grid Infrastructure (GI) cluster.
  /// [computeModel] OCI model compute model used when you create or clone an instance: ECPU or OCPU. An ECPU is an abstracted measure of compute resources. ECPUs are based on the number of cores elastically allocated from a pool of compute and storage servers. An OCPU is a legacy physical measure of compute resources. OCPUs are based on the physical core of a processor with hyper-threading enabled.
  /// [cpuCoreCount] Number of CPU cores enabled on the VM cluster.
  /// [createdAt] Time when the VM cluster was created.
  /// [dataCollectionOptions] Set of diagnostic collection options enabled for the VM cluster.
  /// [dataStorageSizeInTbs] Size of the data disk group, in terabytes (TB), that's allocated for the VM cluster.
  /// [dbNodeStorageSizeInGbs] Amount of local node storage, in gigabytes (GB), that's allocated for the VM cluster.
  /// [dbServers] List of database servers for the VM cluster.
  /// [diskRedundancy] Type of redundancy configured for the VM cluster. NORMAL is 2-way redundancy. HIGH is 3-way redundancy.
  /// [displayName] Display name of the VM cluster.
  /// [domain] Domain name of the VM cluster.
  /// [giVersion] Software version of the Oracle Grid Infrastructure (GI) for the VM cluster.
  /// [hostnamePrefixComputed] Computed hostname prefix for the VM cluster.
  /// [id] Required.
  /// [iormConfigCaches] ExadataIormConfig cache details for the VM cluster.
  /// [isLocalBackupEnabled] Whether database backups to local Exadata storage is enabled for the VM cluster.
  /// [isSparseDiskGroupEnabled] Whether the VM cluster is configured with a sparse disk group.
  /// [lastUpdateHistoryEntryId] Oracle Cloud ID (OCID) of the last maintenance update history entry.
  /// [licenseModel] Oracle license model applied to the VM cluster.
  /// [listenerPort] Port number configured for the listener on the VM cluster.
  /// [memorySizeInGbs] Amount of memory, in gigabytes (GB), that's allocated for the VM cluster.
  /// [nodeCount] Number of nodes in the VM cluster.
  /// [ociResourceAnchorName] Name of the OCI Resource Anchor.
  /// [ociUrl] HTTPS link to the VM cluster in OCI.
  /// [ocid] OCID of the VM cluster.
  /// [odbNetworkArn] ARN of the ODB network.
  /// [odbNetworkId] ID of the ODB network.
  /// [percentProgress] Amount of progress made on the current operation on the VM cluster, expressed as a percentage.
  /// [region] Required.
  /// [scanDnsName] FQDN of the DNS record for the Single Client Access Name (SCAN) IP addresses that are associated with the VM cluster.
  /// [scanDnsRecordId] OCID of the DNS record for the SCAN IP addresses that are associated with the VM cluster.
  /// [scanIpIds] OCID of the SCAN IP addresses that are associated with the VM cluster.
  /// [shape] Hardware model name of the Exadata infrastructure that's running the VM cluster.
  /// [sshPublicKeys] Public key portion of one or more key pairs used for SSH access to the VM cluster.
  /// [status] Status of the VM cluster.
  /// [statusReason] Additional information about the status of the VM cluster.
  /// [storageSizeInGbs] Amount of local node storage, in gigabytes (GB), that's allocated to the VM cluster.
  /// [systemVersion] Operating system version of the image chosen for the VM cluster.
  /// [tags] Map of tags assigned to the resource.
  /// [timezone] Time zone of the VM cluster.
  /// [vipIds] Virtual IP (VIP) addresses that are associated with the VM cluster. Oracle's Cluster Ready Services (CRS) creates and maintains one VIP address for each node in the VM cluster to enable failover. If one node fails, the VIP is reassigned to another active node in the cluster.
  const GetCloudVmClusterResult({
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
      dataCollectionOptions: pulumi.Input.decodeList<GetCloudVmClusterDataCollectionOption>(map['dataCollectionOptions']!, (value) => GetCloudVmClusterDataCollectionOption.fromMap((value as Map).cast<String, dynamic>())),
      dataStorageSizeInTbs: map['dataStorageSizeInTbs'] as double,
      dbNodeStorageSizeInGbs: map['dbNodeStorageSizeInGbs'] as int,
      dbServers: (map['dbServers'] as List).cast<String>(),
      diskRedundancy: map['diskRedundancy'] as String,
      displayName: map['displayName'] as String,
      domain: map['domain'] as String,
      giVersion: map['giVersion'] as String,
      hostnamePrefixComputed: map['hostnamePrefixComputed'] as String,
      id: map['id'] as String,
      iormConfigCaches: pulumi.Input.decodeList<GetCloudVmClusterIormConfigCache>(map['iormConfigCaches']!, (value) => GetCloudVmClusterIormConfigCache.fromMap((value as Map).cast<String, dynamic>())),
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
