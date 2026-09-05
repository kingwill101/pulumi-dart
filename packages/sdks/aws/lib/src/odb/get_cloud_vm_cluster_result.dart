// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_vm_cluster_data_collection_option.dart';
import 'get_cloud_vm_cluster_iorm_config_cache.dart';

/// Result data returned by getCloudVmCluster.
class GetCloudVmClusterResult {
  /// ARN for the cloud vm cluster.
  final String? arn;
  /// ARN of the Cloud Exadata Infrastructure.
  final String? cloudExadataInfrastructureArn;
  /// ID of the Cloud Exadata Infrastructure.
  final String? cloudExadataInfrastructureId;
  /// Name of the Grid Infrastructure (GI) cluster.
  final String? clusterName;
  /// OCI model compute model used when you create or clone an instance: ECPU or OCPU. An ECPU is an abstracted measure of compute resources. ECPUs are based on the number of cores elastically allocated from a pool of compute and storage servers. An OCPU is a legacy physical measure of compute resources. OCPUs are based on the physical core of a processor with hyper-threading enabled.
  final String? computeModel;
  /// Number of CPU cores enabled on the VM cluster.
  final int? cpuCoreCount;
  /// Time when the VM cluster was created.
  final String? createdAt;
  /// Set of diagnostic collection options enabled for the VM cluster.
  final List<GetCloudVmClusterDataCollectionOption>? dataCollectionOptions;
  /// Size of the data disk group, in terabytes (TB), that's allocated for the VM cluster.
  final double? dataStorageSizeInTbs;
  /// Amount of local node storage, in gigabytes (GB), that's allocated for the VM cluster.
  final int? dbNodeStorageSizeInGbs;
  /// List of database servers for the VM cluster.
  final List<String>? dbServers;
  /// Type of redundancy configured for the VM cluster. NORMAL is 2-way redundancy. HIGH is 3-way redundancy.
  final String? diskRedundancy;
  /// Display name of the VM cluster.
  final String? displayName;
  /// Domain name of the VM cluster.
  final String? domain;
  /// Software version of the Oracle Grid Infrastructure (GI) for the VM cluster.
  final String? giVersion;
  /// Computed hostname prefix for the VM cluster.
  final String? hostnamePrefixComputed;
  final String? id;
  /// ExadataIormConfig cache details for the VM cluster.
  final List<GetCloudVmClusterIormConfigCache>? iormConfigCaches;
  /// Whether database backups to local Exadata storage is enabled for the VM cluster.
  final bool? isLocalBackupEnabled;
  /// Whether the VM cluster is configured with a sparse disk group.
  final bool? isSparseDiskGroupEnabled;
  /// Oracle Cloud ID (OCID) of the last maintenance update history entry.
  final String? lastUpdateHistoryEntryId;
  /// Oracle license model applied to the VM cluster.
  final String? licenseModel;
  /// Port number configured for the listener on the VM cluster.
  final int? listenerPort;
  /// Amount of memory, in gigabytes (GB), that's allocated for the VM cluster.
  final int? memorySizeInGbs;
  /// Number of nodes in the VM cluster.
  final int? nodeCount;
  /// Name of the OCI Resource Anchor.
  final String? ociResourceAnchorName;
  /// HTTPS link to the VM cluster in OCI.
  final String? ociUrl;
  /// OCID of the VM cluster.
  final String? ocid;
  /// ARN of the ODB network.
  final String? odbNetworkArn;
  /// ID of the ODB network.
  final String? odbNetworkId;
  /// Amount of progress made on the current operation on the VM cluster, expressed as a percentage.
  final double? percentProgress;
  final String? region;
  /// FQDN of the DNS record for the Single Client Access Name (SCAN) IP addresses that are associated with the VM cluster.
  final String? scanDnsName;
  /// OCID of the DNS record for the SCAN IP addresses that are associated with the VM cluster.
  final String? scanDnsRecordId;
  /// OCID of the SCAN IP addresses that are associated with the VM cluster.
  final List<String>? scanIpIds;
  /// Hardware model name of the Exadata infrastructure that's running the VM cluster.
  final String? shape;
  /// Public key portion of one or more key pairs used for SSH access to the VM cluster.
  final List<String>? sshPublicKeys;
  /// Status of the VM cluster.
  final String? status;
  /// Additional information about the status of the VM cluster.
  final String? statusReason;
  /// Amount of local node storage, in gigabytes (GB), that's allocated to the VM cluster.
  final int? storageSizeInGbs;
  /// Operating system version of the image chosen for the VM cluster.
  final String? systemVersion;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;
  /// Time zone of the VM cluster.
  final String? timezone;
  /// Virtual IP (VIP) addresses that are associated with the VM cluster. Oracle's Cluster Ready Services (CRS) creates and maintains one VIP address for each node in the VM cluster to enable failover. If one node fails, the VIP is reassigned to another active node in the cluster.
  final List<String>? vipIds;

  /// Creates a new [GetCloudVmClusterResult].
  /// [arn] ARN for the cloud vm cluster.
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
  /// [id] Optional.
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
  /// [region] Optional.
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
    this.arn,
    this.cloudExadataInfrastructureArn,
    this.cloudExadataInfrastructureId,
    this.clusterName,
    this.computeModel,
    this.cpuCoreCount,
    this.createdAt,
    this.dataCollectionOptions,
    this.dataStorageSizeInTbs,
    this.dbNodeStorageSizeInGbs,
    this.dbServers,
    this.diskRedundancy,
    this.displayName,
    this.domain,
    this.giVersion,
    this.hostnamePrefixComputed,
    this.id,
    this.iormConfigCaches,
    this.isLocalBackupEnabled,
    this.isSparseDiskGroupEnabled,
    this.lastUpdateHistoryEntryId,
    this.licenseModel,
    this.listenerPort,
    this.memorySizeInGbs,
    this.nodeCount,
    this.ociResourceAnchorName,
    this.ociUrl,
    this.ocid,
    this.odbNetworkArn,
    this.odbNetworkId,
    this.percentProgress,
    this.region,
    this.scanDnsName,
    this.scanDnsRecordId,
    this.scanIpIds,
    this.shape,
    this.sshPublicKeys,
    this.status,
    this.statusReason,
    this.storageSizeInGbs,
    this.systemVersion,
    this.tags,
    this.timezone,
    this.vipIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cloudExadataInfrastructureArn': ?cloudExadataInfrastructureArn,
      'cloudExadataInfrastructureId': ?cloudExadataInfrastructureId,
      'clusterName': ?clusterName,
      'computeModel': ?computeModel,
      'cpuCoreCount': ?cpuCoreCount,
      'createdAt': ?createdAt,
      'dataCollectionOptions': ?(() { final guardedValue = dataCollectionOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCloudVmClusterDataCollectionOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dataStorageSizeInTbs': ?dataStorageSizeInTbs,
      'dbNodeStorageSizeInGbs': ?dbNodeStorageSizeInGbs,
      'dbServers': ?dbServers,
      'diskRedundancy': ?diskRedundancy,
      'displayName': ?displayName,
      'domain': ?domain,
      'giVersion': ?giVersion,
      'hostnamePrefixComputed': ?hostnamePrefixComputed,
      'id': ?id,
      'iormConfigCaches': ?(() { final guardedValue = iormConfigCaches; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCloudVmClusterIormConfigCache, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'isLocalBackupEnabled': ?isLocalBackupEnabled,
      'isSparseDiskGroupEnabled': ?isSparseDiskGroupEnabled,
      'lastUpdateHistoryEntryId': ?lastUpdateHistoryEntryId,
      'licenseModel': ?licenseModel,
      'listenerPort': ?listenerPort,
      'memorySizeInGbs': ?memorySizeInGbs,
      'nodeCount': ?nodeCount,
      'ociResourceAnchorName': ?ociResourceAnchorName,
      'ociUrl': ?ociUrl,
      'ocid': ?ocid,
      'odbNetworkArn': ?odbNetworkArn,
      'odbNetworkId': ?odbNetworkId,
      'percentProgress': ?percentProgress,
      'region': ?region,
      'scanDnsName': ?scanDnsName,
      'scanDnsRecordId': ?scanDnsRecordId,
      'scanIpIds': ?scanIpIds,
      'shape': ?shape,
      'sshPublicKeys': ?sshPublicKeys,
      'status': ?status,
      'statusReason': ?statusReason,
      'storageSizeInGbs': ?storageSizeInGbs,
      'systemVersion': ?systemVersion,
      'tags': ?tags,
      'timezone': ?timezone,
      'vipIds': ?vipIds,
    };
  }

  factory GetCloudVmClusterResult.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClusterResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudExadataInfrastructureArn: (() { final guardedValue = map['cloudExadataInfrastructureArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudExadataInfrastructureId: (() { final guardedValue = map['cloudExadataInfrastructureId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      computeModel: (() { final guardedValue = map['computeModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cpuCoreCount: (() { final guardedValue = map['cpuCoreCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataCollectionOptions: (() { final guardedValue = map['dataCollectionOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCloudVmClusterDataCollectionOption>(guardedValue, (value) => GetCloudVmClusterDataCollectionOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      dataStorageSizeInTbs: (() { final guardedValue = map['dataStorageSizeInTbs']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      dbNodeStorageSizeInGbs: (() { final guardedValue = map['dbNodeStorageSizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      dbServers: (() { final guardedValue = map['dbServers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      diskRedundancy: (() { final guardedValue = map['diskRedundancy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      giVersion: (() { final guardedValue = map['giVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostnamePrefixComputed: (() { final guardedValue = map['hostnamePrefixComputed']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iormConfigCaches: (() { final guardedValue = map['iormConfigCaches']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCloudVmClusterIormConfigCache>(guardedValue, (value) => GetCloudVmClusterIormConfigCache.fromMap((value as Map).cast<String, dynamic>())); })(),
      isLocalBackupEnabled: (() { final guardedValue = map['isLocalBackupEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isSparseDiskGroupEnabled: (() { final guardedValue = map['isSparseDiskGroupEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastUpdateHistoryEntryId: (() { final guardedValue = map['lastUpdateHistoryEntryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseModel: (() { final guardedValue = map['licenseModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      listenerPort: (() { final guardedValue = map['listenerPort']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      memorySizeInGbs: (() { final guardedValue = map['memorySizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      ociResourceAnchorName: (() { final guardedValue = map['ociResourceAnchorName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ociUrl: (() { final guardedValue = map['ociUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ocid: (() { final guardedValue = map['ocid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      odbNetworkArn: (() { final guardedValue = map['odbNetworkArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      odbNetworkId: (() { final guardedValue = map['odbNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      percentProgress: (() { final guardedValue = map['percentProgress']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scanDnsName: (() { final guardedValue = map['scanDnsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scanDnsRecordId: (() { final guardedValue = map['scanDnsRecordId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scanIpIds: (() { final guardedValue = map['scanIpIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      shape: (() { final guardedValue = map['shape']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sshPublicKeys: (() { final guardedValue = map['sshPublicKeys']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageSizeInGbs: (() { final guardedValue = map['storageSizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      systemVersion: (() { final guardedValue = map['systemVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timezone: (() { final guardedValue = map['timezone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vipIds: (() { final guardedValue = map['vipIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
