// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_vm_cluster_data_collection_options.dart';
import 'cloud_vm_cluster_iorm_config_cache.dart';
import 'cloud_vm_cluster_timeouts.dart';

/// Input properties used for looking up and filtering CloudVmCluster resources.
class CloudVmClusterState {
  /// Amazon Resource Name (ARN) for the cloud vm cluster.
  final pulumi.Input<String>? arn;
  /// ARN of the Exadata infrastructure for this VM cluster. Changing this will create a new resource. Either the combination of cloudExadataInfrastructureId and odbNetworkId or cloudExadataInfrastructureArn and odbNetworkArn must be used.
  final pulumi.Input<String>? cloudExadataInfrastructureArn;
  /// Unique identifier of the Exadata infrastructure for this VM cluster. Changing this will create a new resource. Either the combination of cloudExadataInfrastructureId and odbNetworkId or cloudExadataInfrastructureArn and odbNetworkArn must be used.
  final pulumi.Input<String>? cloudExadataInfrastructureId;
  /// Name of the Grid Infrastructure (GI) cluster. Changing this will create a new resource.
  final pulumi.Input<String>? clusterName;
  /// Compute model used when the instance is created or cloned — either ECPU or OCPU. ECPU is a virtualized compute unit; OCPU is a physical processor core with hyper-threading.
  final pulumi.Input<String>? computeModel;
  /// Number of CPU cores to enable on the VM cluster. Changing this will create a new resource.
  final pulumi.Input<int>? cpuCoreCount;
  /// Timestamp when the VM cluster was created.
  final pulumi.Input<String>? createdAt;
  /// Set of preferences for the various diagnostic collection options for the VM cluster. See `dataCollectionOptions` Block below. Changing this will create a new resource.
  final pulumi.Input<CloudVmClusterDataCollectionOptions>? dataCollectionOptions;
  /// Size of the data disk group, in terabytes (TBs), to allocate for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<double>? dataStorageSizeInTbs;
  /// Amount of local node storage, in gigabytes (GBs), to allocate for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<int>? dbNodeStorageSizeInGbs;
  /// List of database servers for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<List<String>>? dbServers;
  /// Type of redundancy for the VM cluster: NORMAL (2-way) or HIGH (3-way).
  final pulumi.Input<String>? diskRedundancy;
  /// User-friendly name for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<String>? displayName;
  /// Domain name associated with the VM cluster.
  final pulumi.Input<String>? domain;
  /// Valid Oracle Grid Infrastructure (GI) software version. To get valid values, use the ListGiVersions operation for the Exadata infrastructure shape. Example: `19.0.0.0`. Changing this creates a new resource. Prefer to provide `odb:input_gi_version` tag. If `odb:input_gi_version` tag is provided, its value must exactly match `giVersion`, otherwise Terraform returns an error. See the `With GI Version Tag` example above.
  final pulumi.Input<String>? giVersion;
  /// Complete software version of Oracle Grid Infrastructure (GI).
  final pulumi.Input<String>? giVersionComputed;
  /// Host name prefix for the VM cluster. Constraints: - Can't be "localhost" or "hostname". - Can't contain "-version". - Maximum length of the combined hostname and domain is 63 characters. - Hostname must be unique within the subnet. Changing this will create a new resource.
  final pulumi.Input<String>? hostnamePrefix;
  /// Host name for the VM cluster. Constraints: - Can't be "localhost" or "hostname". - Can't contain "-version". - Maximum length of the combined hostname and domain is 63 characters. - Hostname must be unique within the subnet.
  final pulumi.Input<String>? hostnamePrefixComputed;
  /// Exadata IORM (I/O Resource Manager) configuration cache details for the VM cluster. See `iormConfigCache` Block below.
  final pulumi.Input<List<CloudVmClusterIormConfigCache>>? iormConfigCaches;
  /// Whether to enable database backups to local Exadata storage for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<bool>? isLocalBackupEnabled;
  /// Whether to create a sparse disk group for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<bool>? isSparseDiskgroupEnabled;
  /// OCID of the most recent maintenance update history entry.
  final pulumi.Input<String>? lastUpdateHistoryEntryId;
  /// Oracle license model to apply to the VM cluster. Default: LICENSE_INCLUDED. Changing this will create a new resource.
  final pulumi.Input<String>? licenseModel;
  /// Listener port number configured on the VM cluster.
  final pulumi.Input<int>? listenerPort;
  /// Amount of memory, in gigabytes (GBs), to allocate for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<int>? memorySizeInGbs;
  /// Total number of nodes in the VM cluster.
  final pulumi.Input<int>? nodeCount;
  /// Name of the OCI resource anchor associated with the VM cluster.
  final pulumi.Input<String>? ociResourceAnchorName;
  /// HTTPS link to the VM cluster resource in OCI.
  final pulumi.Input<String>? ociUrl;
  /// OCID (Oracle Cloud Identifier) of the VM cluster.
  final pulumi.Input<String>? ocid;
  /// ARN of the ODB network for the VM cluster. Changing this will create a new resource. Either the combination of cloudExadataInfrastructureId and odbNetworkId or cloudExadataInfrastructureArn and odbNetworkArn must be used.
  final pulumi.Input<String>? odbNetworkArn;
  /// Unique identifier of the ODB network for the VM cluster. Changing this will create a new resource. Either the combination of cloudExadataInfrastructureId and odbNetworkId or cloudExadataInfrastructureArn and odbNetworkArn must be used.
  final pulumi.Input<String>? odbNetworkId;
  /// Percentage of progress made on the current operation for the VM cluster.
  final pulumi.Input<double>? percentProgress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Fully qualified domain name (FQDN) for the SCAN IP addresses associated with the VM cluster.
  final pulumi.Input<String>? scanDnsName;
  /// OCID of the DNS record for the SCAN IPs linked to the VM cluster.
  final pulumi.Input<String>? scanDnsRecordId;
  /// List of OCIDs for SCAN IP addresses associated with the VM cluster.
  final pulumi.Input<List<String>>? scanIpIds;
  /// Port number for TCP connections to the single client access name (SCAN) listener. Valid values: 1024–8999, except 2484, 6100, 6200, 7060, 7070, 7085, and 7879. Default: 1521. Changing this will create a new resource.
  final pulumi.Input<int>? scanListenerPortTcp;
  /// Hardware model name of the Exadata infrastructure running the VM cluster.
  final pulumi.Input<String>? shape;
  /// Public key portion of one or more key pairs used for SSH access to the VM cluster. Changing this will create a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>>? sshPublicKeys;
  /// Current lifecycle status of the VM cluster.
  final pulumi.Input<String>? status;
  /// Additional information regarding the current status of the VM cluster.
  final pulumi.Input<String>? statusReason;
  /// Local node storage allocated to the VM cluster, in gigabytes (GB).
  final pulumi.Input<int>? storageSizeInGbs;
  /// Operating system version of the image chosen for the VM cluster.
  final pulumi.Input<String>? systemVersion;
  /// Map of tags to assign to the exadata infrastructure. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Combined set of user-defined and provider-defined tags.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<CloudVmClusterTimeouts>? timeouts;
  /// Configured time zone of the VM cluster. Changing this will create a new resource.
  final pulumi.Input<String>? timezone;
  /// Virtual IP (VIP) addresses assigned to the VM cluster. CRS assigns one VIP per node for failover support.
  final pulumi.Input<List<String>>? vipIds;

  /// Creates a new [CloudVmClusterState].
  /// [arn] Amazon Resource Name (ARN) for the cloud vm cluster.
  /// [cloudExadataInfrastructureArn] ARN of the Exadata infrastructure for this VM cluster. Changing this will create a new resource. Either the combination of cloudExadataInfrastructureId and odbNetworkId or cloudExadataInfrastructureArn and odbNetworkArn must be used.
  /// [cloudExadataInfrastructureId] Unique identifier of the Exadata infrastructure for this VM cluster. Changing this will create a new resource. Either the combination of cloudExadataInfrastructureId and odbNetworkId or cloudExadataInfrastructureArn and odbNetworkArn must be used.
  /// [clusterName] Name of the Grid Infrastructure (GI) cluster. Changing this will create a new resource.
  /// [computeModel] Compute model used when the instance is created or cloned — either ECPU or OCPU. ECPU is a virtualized compute unit; OCPU is a physical processor core with hyper-threading.
  /// [cpuCoreCount] Number of CPU cores to enable on the VM cluster. Changing this will create a new resource.
  /// [createdAt] Timestamp when the VM cluster was created.
  /// [dataCollectionOptions] Set of preferences for the various diagnostic collection options for the VM cluster. See `dataCollectionOptions` Block below. Changing this will create a new resource.
  /// [dataStorageSizeInTbs] Size of the data disk group, in terabytes (TBs), to allocate for the VM cluster. Changing this will create a new resource.
  /// [dbNodeStorageSizeInGbs] Amount of local node storage, in gigabytes (GBs), to allocate for the VM cluster. Changing this will create a new resource.
  /// [dbServers] List of database servers for the VM cluster. Changing this will create a new resource.
  /// [diskRedundancy] Type of redundancy for the VM cluster: NORMAL (2-way) or HIGH (3-way).
  /// [displayName] User-friendly name for the VM cluster. Changing this will create a new resource.
  /// [domain] Domain name associated with the VM cluster.
  /// [giVersion] Valid Oracle Grid Infrastructure (GI) software version. To get valid values, use the ListGiVersions operation for the Exadata infrastructure shape. Example: `19.0.0.0`. Changing this creates a new resource. Prefer to provide `odb:input_gi_version` tag. If `odb:input_gi_version` tag is provided, its value must exactly match `giVersion`, otherwise Terraform returns an error. See the `With GI Version Tag` example above.
  /// [giVersionComputed] Complete software version of Oracle Grid Infrastructure (GI).
  /// [hostnamePrefix] Host name prefix for the VM cluster. Constraints: - Can't be "localhost" or "hostname". - Can't contain "-version". - Maximum length of the combined hostname and domain is 63 characters. - Hostname must be unique within the subnet. Changing this will create a new resource.
  /// [hostnamePrefixComputed] Host name for the VM cluster. Constraints: - Can't be "localhost" or "hostname". - Can't contain "-version". - Maximum length of the combined hostname and domain is 63 characters. - Hostname must be unique within the subnet.
  /// [iormConfigCaches] Exadata IORM (I/O Resource Manager) configuration cache details for the VM cluster. See `iormConfigCache` Block below.
  /// [isLocalBackupEnabled] Whether to enable database backups to local Exadata storage for the VM cluster. Changing this will create a new resource.
  /// [isSparseDiskgroupEnabled] Whether to create a sparse disk group for the VM cluster. Changing this will create a new resource.
  /// [lastUpdateHistoryEntryId] OCID of the most recent maintenance update history entry.
  /// [licenseModel] Oracle license model to apply to the VM cluster. Default: LICENSE_INCLUDED. Changing this will create a new resource.
  /// [listenerPort] Listener port number configured on the VM cluster.
  /// [memorySizeInGbs] Amount of memory, in gigabytes (GBs), to allocate for the VM cluster. Changing this will create a new resource.
  /// [nodeCount] Total number of nodes in the VM cluster.
  /// [ociResourceAnchorName] Name of the OCI resource anchor associated with the VM cluster.
  /// [ociUrl] HTTPS link to the VM cluster resource in OCI.
  /// [ocid] OCID (Oracle Cloud Identifier) of the VM cluster.
  /// [odbNetworkArn] ARN of the ODB network for the VM cluster. Changing this will create a new resource. Either the combination of cloudExadataInfrastructureId and odbNetworkId or cloudExadataInfrastructureArn and odbNetworkArn must be used.
  /// [odbNetworkId] Unique identifier of the ODB network for the VM cluster. Changing this will create a new resource. Either the combination of cloudExadataInfrastructureId and odbNetworkId or cloudExadataInfrastructureArn and odbNetworkArn must be used.
  /// [percentProgress] Percentage of progress made on the current operation for the VM cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scanDnsName] Fully qualified domain name (FQDN) for the SCAN IP addresses associated with the VM cluster.
  /// [scanDnsRecordId] OCID of the DNS record for the SCAN IPs linked to the VM cluster.
  /// [scanIpIds] List of OCIDs for SCAN IP addresses associated with the VM cluster.
  /// [scanListenerPortTcp] Port number for TCP connections to the single client access name (SCAN) listener. Valid values: 1024–8999, except 2484, 6100, 6200, 7060, 7070, 7085, and 7879. Default: 1521. Changing this will create a new resource.
  /// [shape] Hardware model name of the Exadata infrastructure running the VM cluster.
  /// [sshPublicKeys] Public key portion of one or more key pairs used for SSH access to the VM cluster. Changing this will create a new resource.
  /// [status] Current lifecycle status of the VM cluster.
  /// [statusReason] Additional information regarding the current status of the VM cluster.
  /// [storageSizeInGbs] Local node storage allocated to the VM cluster, in gigabytes (GB).
  /// [systemVersion] Operating system version of the image chosen for the VM cluster.
  /// [tags] Map of tags to assign to the exadata infrastructure. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Combined set of user-defined and provider-defined tags.
  /// [timeouts] Optional.
  /// [timezone] Configured time zone of the VM cluster. Changing this will create a new resource.
  /// [vipIds] Virtual IP (VIP) addresses assigned to the VM cluster. CRS assigns one VIP per node for failover support.
  const CloudVmClusterState({
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
    this.giVersionComputed,
    this.hostnamePrefix,
    this.hostnamePrefixComputed,
    this.iormConfigCaches,
    this.isLocalBackupEnabled,
    this.isSparseDiskgroupEnabled,
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
    this.scanListenerPortTcp,
    this.shape,
    this.sshPublicKeys,
    this.status,
    this.statusReason,
    this.storageSizeInGbs,
    this.systemVersion,
    this.tags,
    this.tagsAll,
    this.timeouts,
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
      'dataCollectionOptions': ?pulumi.Input.mapOptionalInputValue<CloudVmClusterDataCollectionOptions, Map<String, dynamic>>(dataCollectionOptions, (value) => value.toMap()),
      'dataStorageSizeInTbs': ?dataStorageSizeInTbs,
      'dbNodeStorageSizeInGbs': ?dbNodeStorageSizeInGbs,
      'dbServers': ?dbServers,
      'diskRedundancy': ?diskRedundancy,
      'displayName': ?displayName,
      'domain': ?domain,
      'giVersion': ?giVersion,
      'giVersionComputed': ?giVersionComputed,
      'hostnamePrefix': ?hostnamePrefix,
      'hostnamePrefixComputed': ?hostnamePrefixComputed,
      'iormConfigCaches': ?pulumi.Input.mapOptionalInputValue<List<CloudVmClusterIormConfigCache>, List<Map<String, dynamic>>>(iormConfigCaches, (value) => pulumi.Input.encodeList<CloudVmClusterIormConfigCache, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isLocalBackupEnabled': ?isLocalBackupEnabled,
      'isSparseDiskgroupEnabled': ?isSparseDiskgroupEnabled,
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
      'scanListenerPortTcp': ?scanListenerPortTcp,
      'shape': ?shape,
      'sshPublicKeys': ?sshPublicKeys,
      'status': ?status,
      'statusReason': ?statusReason,
      'storageSizeInGbs': ?storageSizeInGbs,
      'systemVersion': ?systemVersion,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CloudVmClusterTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'timezone': ?timezone,
      'vipIds': ?vipIds,
    };
  }

  factory CloudVmClusterState.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudExadataInfrastructureArn: (() { final guardedValue = map['cloudExadataInfrastructureArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudExadataInfrastructureId: (() { final guardedValue = map['cloudExadataInfrastructureId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeModel: (() { final guardedValue = map['computeModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuCoreCount: (() { final guardedValue = map['cpuCoreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataCollectionOptions: (() { final guardedValue = map['dataCollectionOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudVmClusterDataCollectionOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataStorageSizeInTbs: (() { final guardedValue = map['dataStorageSizeInTbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      dbNodeStorageSizeInGbs: (() { final guardedValue = map['dbNodeStorageSizeInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dbServers: (() { final guardedValue = map['dbServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      diskRedundancy: (() { final guardedValue = map['diskRedundancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      giVersion: (() { final guardedValue = map['giVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      giVersionComputed: (() { final guardedValue = map['giVersionComputed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostnamePrefix: (() { final guardedValue = map['hostnamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostnamePrefixComputed: (() { final guardedValue = map['hostnamePrefixComputed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iormConfigCaches: (() { final guardedValue = map['iormConfigCaches']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CloudVmClusterIormConfigCache>(guardedValue, (value) => CloudVmClusterIormConfigCache.fromMap((value as Map).cast<String, dynamic>()))); })(),
      isLocalBackupEnabled: (() { final guardedValue = map['isLocalBackupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isSparseDiskgroupEnabled: (() { final guardedValue = map['isSparseDiskgroupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastUpdateHistoryEntryId: (() { final guardedValue = map['lastUpdateHistoryEntryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseModel: (() { final guardedValue = map['licenseModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listenerPort: (() { final guardedValue = map['listenerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      memorySizeInGbs: (() { final guardedValue = map['memorySizeInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ociResourceAnchorName: (() { final guardedValue = map['ociResourceAnchorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociUrl: (() { final guardedValue = map['ociUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ocid: (() { final guardedValue = map['ocid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbNetworkArn: (() { final guardedValue = map['odbNetworkArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbNetworkId: (() { final guardedValue = map['odbNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      percentProgress: (() { final guardedValue = map['percentProgress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanDnsName: (() { final guardedValue = map['scanDnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanDnsRecordId: (() { final guardedValue = map['scanDnsRecordId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanIpIds: (() { final guardedValue = map['scanIpIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scanListenerPortTcp: (() { final guardedValue = map['scanListenerPortTcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      shape: (() { final guardedValue = map['shape']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sshPublicKeys: (() { final guardedValue = map['sshPublicKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageSizeInGbs: (() { final guardedValue = map['storageSizeInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      systemVersion: (() { final guardedValue = map['systemVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudVmClusterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timezone: (() { final guardedValue = map['timezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vipIds: (() { final guardedValue = map['vipIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
