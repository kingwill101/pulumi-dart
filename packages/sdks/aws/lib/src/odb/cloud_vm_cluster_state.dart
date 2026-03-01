// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_vm_cluster_data_collection_options.dart';
import 'cloud_vm_cluster_iorm_config_cache.dart';
import 'cloud_vm_cluster_timeouts.dart';

/// Input properties used for looking up and filtering CloudVmCluster resources.
class CloudVmClusterState {
  /// The Amazon Resource Name (ARN) for the cloud vm cluster.
  final pulumi.Input<String>? arn;
  /// The ARN of the Exadata infrastructure for this VM cluster. Changing this will create a new resource. Either the combination of cloud_exadata_infrastructure_id and odb_network_id or cloud_exadata_infrastructure_arn and odb_network_arn must be used.
  final pulumi.Input<String>? cloudExadataInfrastructureArn;
  /// The unique identifier of the Exadata infrastructure for this VM cluster. Changing this will create a new resource. Either the combination of cloud_exadata_infrastructure_id and odb_network_id or cloud_exadata_infrastructure_arn and odb_network_arn must be used.
  final pulumi.Input<String>? cloudExadataInfrastructureId;
  /// The name of the Grid Infrastructure (GI) cluster. Changing this will create a new resource.
  final pulumi.Input<String>? clusterName;
  /// The compute model used when the instance is created or cloned — either ECPU or OCPU. ECPU is a virtualized compute unit; OCPU is a physical processor core with hyper-threading.
  final pulumi.Input<String>? computeModel;
  /// The number of CPU cores to enable on the VM cluster. Changing this will create a new resource.
  final pulumi.Input<int>? cpuCoreCount;
  /// The timestamp when the VM cluster was created.
  final pulumi.Input<String>? createdAt;
  /// The set of preferences for the various diagnostic collection options for the VM cluster.
  final pulumi.Input<CloudVmClusterDataCollectionOptions>? dataCollectionOptions;
  /// The size of the data disk group, in terabytes (TBs), to allocate for the VM cluster. Changing this will create a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<double>? dataStorageSizeInTbs;
  /// The amount of local node storage, in gigabytes (GBs), to allocate for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<int>? dbNodeStorageSizeInGbs;
  /// The list of database servers for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<List<String>>? dbServers;
  /// The type of redundancy for the VM cluster: NORMAL (2-way) or HIGH (3-way).
  /// * `AttrDomain` - The domain name associated with the VM cluster.
  final pulumi.Input<String>? diskRedundancy;
  /// A user-friendly name for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<String>? displayName;
  /// The domain name associated with the VM cluster.
  final pulumi.Input<String>? domain;
  /// A valid software version of Oracle Grid Infrastructure (GI). To get the list of valid values, use the ListGiVersions operation and specify the shape of the Exadata infrastructure. Example: 19.0.0.0 Changing this will create a new resource.
  final pulumi.Input<String>? giVersion;
  /// A complete software version of Oracle Grid Infrastructure (GI).
  final pulumi.Input<String>? giVersionComputed;
  /// The host name prefix for the VM cluster. Constraints: - Can't be "localhost" or "hostname". - Can't contain "-version". - The maximum length of the combined hostname and domain is 63 characters. - The hostname must be unique within the subnet. Changing this will create a new resource.
  final pulumi.Input<String>? hostnamePrefix;
  /// The host name for the VM cluster. Constraints: - Can't be "localhost" or "hostname". - Can't contain "-version". - The maximum length of the combined hostname and domain is 63 characters. - The hostname must be unique within the subnet. This member is required. Changing this will create a new resource.
  final pulumi.Input<String>? hostnamePrefixComputed;
  /// The Exadata IORM (I/O Resource Manager) configuration cache details for the VM cluster.
  final pulumi.Input<List<CloudVmClusterIormConfigCache>>? iormConfigCaches;
  /// Specifies whether to enable database backups to local Exadata storage for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<bool>? isLocalBackupEnabled;
  /// Specifies whether to create a sparse disk group for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<bool>? isSparseDiskgroupEnabled;
  /// The OCID of the most recent maintenance update history entry.
  final pulumi.Input<String>? lastUpdateHistoryEntryId;
  /// The Oracle license model to apply to the VM cluster. Default: LICENSE_INCLUDED. Changing this will create a new resource.
  final pulumi.Input<String>? licenseModel;
  /// The listener port number configured on the VM cluster.
  final pulumi.Input<int>? listenerPort;
  /// The amount of memory, in gigabytes (GBs), to allocate for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<int>? memorySizeInGbs;
  /// The total number of nodes in the VM cluster.
  final pulumi.Input<int>? nodeCount;
  /// The name of the OCI resource anchor associated with the VM cluster.
  final pulumi.Input<String>? ociResourceAnchorName;
  /// The HTTPS link to the VM cluster resource in OCI.
  final pulumi.Input<String>? ociUrl;
  /// The OCID (Oracle Cloud Identifier) of the VM cluster.
  final pulumi.Input<String>? ocid;
  /// The ARN of the ODB network for the VM cluster. Changing this will create a new resource. Either the combination of cloud_exadata_infrastructure_id and odb_network_id or cloud_exadata_infrastructure_arn and odb_network_arn must be used.
  final pulumi.Input<String>? odbNetworkArn;
  /// The unique identifier of the ODB network for the VM cluster. Changing this will create a new resource. Either the combination of cloud_exadata_infrastructure_id and odb_network_id or cloud_exadata_infrastructure_arn and odb_network_arn must be used.
  final pulumi.Input<String>? odbNetworkId;
  /// The percentage of progress made on the current operation for the VM cluster.
  final pulumi.Input<double>? percentProgress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The fully qualified domain name (FQDN) for the SCAN IP addresses associated with the VM cluster.
  final pulumi.Input<String>? scanDnsName;
  /// The OCID of the DNS record for the SCAN IPs linked to the VM cluster.
  final pulumi.Input<String>? scanDnsRecordId;
  /// The list of OCIDs for SCAN IP addresses associated with the VM cluster.
  final pulumi.Input<List<String>>? scanIpIds;
  /// The port number for TCP connections to the single client access name (SCAN) listener. Valid values: 1024–8999, except 2484, 6100, 6200, 7060, 7070, 7085, and 7879. Default: 1521. Changing this will create a new resource.
  final pulumi.Input<int>? scanListenerPortTcp;
  /// The hardware model name of the Exadata infrastructure running the VM cluster.
  final pulumi.Input<String>? shape;
  /// The public key portion of one or more key pairs used for SSH access to the VM cluster. Changing this will create a new resource.
  final pulumi.Input<List<String>>? sshPublicKeys;
  /// The current lifecycle status of the VM cluster.
  final pulumi.Input<String>? status;
  /// Additional information regarding the current status of the VM cluster.
  final pulumi.Input<String>? statusReason;
  /// The local node storage allocated to the VM cluster, in gigabytes (GB).
  final pulumi.Input<int>? storageSizeInGbs;
  /// The operating system version of the image chosen for the VM cluster.
  final pulumi.Input<String>? systemVersion;
  /// A map of tags to assign to the exadata infrastructure. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The combined set of user-defined and provider-defined tags.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<CloudVmClusterTimeouts>? timeouts;
  /// The configured time zone of the VM cluster. Changing this will create a new resource.
  final pulumi.Input<String>? timezone;
  /// The virtual IP (VIP) addresses assigned to the VM cluster. CRS assigns one VIP per node for failover support.
  final pulumi.Input<List<String>>? vipIds;

  /// Creates a new [CloudVmClusterState].
  /// [arn] The Amazon Resource Name (ARN) for the cloud vm cluster.
  /// [cloudExadataInfrastructureArn] The ARN of the Exadata infrastructure for this VM cluster. Changing this will create a new resource. Either the combination of cloud_exadata_infrastructure_id and odb_network_id or cloud_exadata_infrastructure_arn and odb_network_arn must be used.
  /// [cloudExadataInfrastructureId] The unique identifier of the Exadata infrastructure for this VM cluster. Changing this will create a new resource. Either the combination of cloud_exadata_infrastructure_id and odb_network_id or cloud_exadata_infrastructure_arn and odb_network_arn must be used.
  /// [clusterName] The name of the Grid Infrastructure (GI) cluster. Changing this will create a new resource.
  /// [computeModel] The compute model used when the instance is created or cloned — either ECPU or OCPU. ECPU is a virtualized compute unit; OCPU is a physical processor core with hyper-threading.
  /// [cpuCoreCount] The number of CPU cores to enable on the VM cluster. Changing this will create a new resource.
  /// [createdAt] The timestamp when the VM cluster was created.
  /// [dataCollectionOptions] The set of preferences for the various diagnostic collection options for the VM cluster.
  /// [dataStorageSizeInTbs] The size of the data disk group, in terabytes (TBs), to allocate for the VM cluster. Changing this will create a new resource.
  /// [dbNodeStorageSizeInGbs] The amount of local node storage, in gigabytes (GBs), to allocate for the VM cluster. Changing this will create a new resource.
  /// [dbServers] The list of database servers for the VM cluster. Changing this will create a new resource.
  /// [diskRedundancy] The type of redundancy for the VM cluster: NORMAL (2-way) or HIGH (3-way).
  /// [displayName] A user-friendly name for the VM cluster. Changing this will create a new resource.
  /// [domain] The domain name associated with the VM cluster.
  /// [giVersion] A valid software version of Oracle Grid Infrastructure (GI). To get the list of valid values, use the ListGiVersions operation and specify the shape of the Exadata infrastructure. Example: 19.0.0.0 Changing this will create a new resource.
  /// [giVersionComputed] A complete software version of Oracle Grid Infrastructure (GI).
  /// [hostnamePrefix] The host name prefix for the VM cluster. Constraints: - Can't be "localhost" or "hostname". - Can't contain "-version". - The maximum length of the combined hostname and domain is 63 characters. - The hostname must be unique within the subnet. Changing this will create a new resource.
  /// [hostnamePrefixComputed] The host name for the VM cluster. Constraints: - Can't be "localhost" or "hostname". - Can't contain "-version". - The maximum length of the combined hostname and domain is 63 characters. - The hostname must be unique within the subnet. This member is required. Changing this will create a new resource.
  /// [iormConfigCaches] The Exadata IORM (I/O Resource Manager) configuration cache details for the VM cluster.
  /// [isLocalBackupEnabled] Specifies whether to enable database backups to local Exadata storage for the VM cluster. Changing this will create a new resource.
  /// [isSparseDiskgroupEnabled] Specifies whether to create a sparse disk group for the VM cluster. Changing this will create a new resource.
  /// [lastUpdateHistoryEntryId] The OCID of the most recent maintenance update history entry.
  /// [licenseModel] The Oracle license model to apply to the VM cluster. Default: LICENSE_INCLUDED. Changing this will create a new resource.
  /// [listenerPort] The listener port number configured on the VM cluster.
  /// [memorySizeInGbs] The amount of memory, in gigabytes (GBs), to allocate for the VM cluster. Changing this will create a new resource.
  /// [nodeCount] The total number of nodes in the VM cluster.
  /// [ociResourceAnchorName] The name of the OCI resource anchor associated with the VM cluster.
  /// [ociUrl] The HTTPS link to the VM cluster resource in OCI.
  /// [ocid] The OCID (Oracle Cloud Identifier) of the VM cluster.
  /// [odbNetworkArn] The ARN of the ODB network for the VM cluster. Changing this will create a new resource. Either the combination of cloud_exadata_infrastructure_id and odb_network_id or cloud_exadata_infrastructure_arn and odb_network_arn must be used.
  /// [odbNetworkId] The unique identifier of the ODB network for the VM cluster. Changing this will create a new resource. Either the combination of cloud_exadata_infrastructure_id and odb_network_id or cloud_exadata_infrastructure_arn and odb_network_arn must be used.
  /// [percentProgress] The percentage of progress made on the current operation for the VM cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scanDnsName] The fully qualified domain name (FQDN) for the SCAN IP addresses associated with the VM cluster.
  /// [scanDnsRecordId] The OCID of the DNS record for the SCAN IPs linked to the VM cluster.
  /// [scanIpIds] The list of OCIDs for SCAN IP addresses associated with the VM cluster.
  /// [scanListenerPortTcp] The port number for TCP connections to the single client access name (SCAN) listener. Valid values: 1024–8999, except 2484, 6100, 6200, 7060, 7070, 7085, and 7879. Default: 1521. Changing this will create a new resource.
  /// [shape] The hardware model name of the Exadata infrastructure running the VM cluster.
  /// [sshPublicKeys] The public key portion of one or more key pairs used for SSH access to the VM cluster. Changing this will create a new resource.
  /// [status] The current lifecycle status of the VM cluster.
  /// [statusReason] Additional information regarding the current status of the VM cluster.
  /// [storageSizeInGbs] The local node storage allocated to the VM cluster, in gigabytes (GB).
  /// [systemVersion] The operating system version of the image chosen for the VM cluster.
  /// [tags] A map of tags to assign to the exadata infrastructure. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] The combined set of user-defined and provider-defined tags.
  /// [timeouts] Optional.
  /// [timezone] The configured time zone of the VM cluster. Changing this will create a new resource.
  /// [vipIds] The virtual IP (VIP) addresses assigned to the VM cluster. CRS assigns one VIP per node for failover support.
  CloudVmClusterState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? cloudExadataInfrastructureArn,
    pulumi.Output<String>? cloudExadataInfrastructureId,
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? computeModel,
    pulumi.Output<int>? cpuCoreCount,
    pulumi.Output<String>? createdAt,
    pulumi.Output<CloudVmClusterDataCollectionOptions>? dataCollectionOptions,
    pulumi.Output<double>? dataStorageSizeInTbs,
    pulumi.Output<int>? dbNodeStorageSizeInGbs,
    pulumi.Output<List<String>>? dbServers,
    pulumi.Output<String>? diskRedundancy,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? domain,
    pulumi.Output<String>? giVersion,
    pulumi.Output<String>? giVersionComputed,
    pulumi.Output<String>? hostnamePrefix,
    pulumi.Output<String>? hostnamePrefixComputed,
    pulumi.Output<List<CloudVmClusterIormConfigCache>>? iormConfigCaches,
    pulumi.Output<bool>? isLocalBackupEnabled,
    pulumi.Output<bool>? isSparseDiskgroupEnabled,
    pulumi.Output<String>? lastUpdateHistoryEntryId,
    pulumi.Output<String>? licenseModel,
    pulumi.Output<int>? listenerPort,
    pulumi.Output<int>? memorySizeInGbs,
    pulumi.Output<int>? nodeCount,
    pulumi.Output<String>? ociResourceAnchorName,
    pulumi.Output<String>? ociUrl,
    pulumi.Output<String>? ocid,
    pulumi.Output<String>? odbNetworkArn,
    pulumi.Output<String>? odbNetworkId,
    pulumi.Output<double>? percentProgress,
    pulumi.Output<String>? region,
    pulumi.Output<String>? scanDnsName,
    pulumi.Output<String>? scanDnsRecordId,
    pulumi.Output<List<String>>? scanIpIds,
    pulumi.Output<int>? scanListenerPortTcp,
    pulumi.Output<String>? shape,
    pulumi.Output<List<String>>? sshPublicKeys,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusReason,
    pulumi.Output<int>? storageSizeInGbs,
    pulumi.Output<String>? systemVersion,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<CloudVmClusterTimeouts>? timeouts,
    pulumi.Output<String>? timezone,
    pulumi.Output<List<String>>? vipIds,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      cloudExadataInfrastructureArn = pulumi.Input.asOptionalInput<String>(cloudExadataInfrastructureArn),
      cloudExadataInfrastructureId = pulumi.Input.asOptionalInput<String>(cloudExadataInfrastructureId),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      computeModel = pulumi.Input.asOptionalInput<String>(computeModel),
      cpuCoreCount = pulumi.Input.asOptionalInput<int>(cpuCoreCount),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      dataCollectionOptions = pulumi.Input.asOptionalInput<CloudVmClusterDataCollectionOptions>(dataCollectionOptions),
      dataStorageSizeInTbs = pulumi.Input.asOptionalInput<double>(dataStorageSizeInTbs),
      dbNodeStorageSizeInGbs = pulumi.Input.asOptionalInput<int>(dbNodeStorageSizeInGbs),
      dbServers = pulumi.Input.asOptionalInput<List<String>>(dbServers),
      diskRedundancy = pulumi.Input.asOptionalInput<String>(diskRedundancy),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      giVersion = pulumi.Input.asOptionalInput<String>(giVersion),
      giVersionComputed = pulumi.Input.asOptionalInput<String>(giVersionComputed),
      hostnamePrefix = pulumi.Input.asOptionalInput<String>(hostnamePrefix),
      hostnamePrefixComputed = pulumi.Input.asOptionalInput<String>(hostnamePrefixComputed),
      iormConfigCaches = pulumi.Input.asOptionalInput<List<CloudVmClusterIormConfigCache>>(iormConfigCaches),
      isLocalBackupEnabled = pulumi.Input.asOptionalInput<bool>(isLocalBackupEnabled),
      isSparseDiskgroupEnabled = pulumi.Input.asOptionalInput<bool>(isSparseDiskgroupEnabled),
      lastUpdateHistoryEntryId = pulumi.Input.asOptionalInput<String>(lastUpdateHistoryEntryId),
      licenseModel = pulumi.Input.asOptionalInput<String>(licenseModel),
      listenerPort = pulumi.Input.asOptionalInput<int>(listenerPort),
      memorySizeInGbs = pulumi.Input.asOptionalInput<int>(memorySizeInGbs),
      nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
      ociResourceAnchorName = pulumi.Input.asOptionalInput<String>(ociResourceAnchorName),
      ociUrl = pulumi.Input.asOptionalInput<String>(ociUrl),
      ocid = pulumi.Input.asOptionalInput<String>(ocid),
      odbNetworkArn = pulumi.Input.asOptionalInput<String>(odbNetworkArn),
      odbNetworkId = pulumi.Input.asOptionalInput<String>(odbNetworkId),
      percentProgress = pulumi.Input.asOptionalInput<double>(percentProgress),
      region = pulumi.Input.asOptionalInput<String>(region),
      scanDnsName = pulumi.Input.asOptionalInput<String>(scanDnsName),
      scanDnsRecordId = pulumi.Input.asOptionalInput<String>(scanDnsRecordId),
      scanIpIds = pulumi.Input.asOptionalInput<List<String>>(scanIpIds),
      scanListenerPortTcp = pulumi.Input.asOptionalInput<int>(scanListenerPortTcp),
      shape = pulumi.Input.asOptionalInput<String>(shape),
      sshPublicKeys = pulumi.Input.asOptionalInput<List<String>>(sshPublicKeys),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusReason = pulumi.Input.asOptionalInput<String>(statusReason),
      storageSizeInGbs = pulumi.Input.asOptionalInput<int>(storageSizeInGbs),
      systemVersion = pulumi.Input.asOptionalInput<String>(systemVersion),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<CloudVmClusterTimeouts>(timeouts),
      timezone = pulumi.Input.asOptionalInput<String>(timezone),
      vipIds = pulumi.Input.asOptionalInput<List<String>>(vipIds);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      cloudExadataInfrastructureArn: map['cloudExadataInfrastructureArn'] == null ? null : pulumi.Output.create<String>(map['cloudExadataInfrastructureArn'] as String),
      cloudExadataInfrastructureId: map['cloudExadataInfrastructureId'] == null ? null : pulumi.Output.create<String>(map['cloudExadataInfrastructureId'] as String),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      computeModel: map['computeModel'] == null ? null : pulumi.Output.create<String>(map['computeModel'] as String),
      cpuCoreCount: map['cpuCoreCount'] == null ? null : pulumi.Output.create<int>(map['cpuCoreCount'] as int),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      dataCollectionOptions: map['dataCollectionOptions'] == null ? null : pulumi.Output.create<CloudVmClusterDataCollectionOptions>(CloudVmClusterDataCollectionOptions.fromMap((map['dataCollectionOptions'] as Map).cast<String, dynamic>())),
      dataStorageSizeInTbs: map['dataStorageSizeInTbs'] == null ? null : pulumi.Output.create<double>(map['dataStorageSizeInTbs'] as double),
      dbNodeStorageSizeInGbs: map['dbNodeStorageSizeInGbs'] == null ? null : pulumi.Output.create<int>(map['dbNodeStorageSizeInGbs'] as int),
      dbServers: map['dbServers'] == null ? null : pulumi.Output.create<List<String>>((map['dbServers'] as List).cast<String>()),
      diskRedundancy: map['diskRedundancy'] == null ? null : pulumi.Output.create<String>(map['diskRedundancy'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      giVersion: map['giVersion'] == null ? null : pulumi.Output.create<String>(map['giVersion'] as String),
      giVersionComputed: map['giVersionComputed'] == null ? null : pulumi.Output.create<String>(map['giVersionComputed'] as String),
      hostnamePrefix: map['hostnamePrefix'] == null ? null : pulumi.Output.create<String>(map['hostnamePrefix'] as String),
      hostnamePrefixComputed: map['hostnamePrefixComputed'] == null ? null : pulumi.Output.create<String>(map['hostnamePrefixComputed'] as String),
      iormConfigCaches: map['iormConfigCaches'] == null ? null : pulumi.Output.create<List<CloudVmClusterIormConfigCache>>(pulumi.Input.decodeList<CloudVmClusterIormConfigCache>(map['iormConfigCaches'], (value) => CloudVmClusterIormConfigCache.fromMap((value as Map).cast<String, dynamic>()))),
      isLocalBackupEnabled: map['isLocalBackupEnabled'] == null ? null : pulumi.Output.create<bool>(map['isLocalBackupEnabled'] as bool),
      isSparseDiskgroupEnabled: map['isSparseDiskgroupEnabled'] == null ? null : pulumi.Output.create<bool>(map['isSparseDiskgroupEnabled'] as bool),
      lastUpdateHistoryEntryId: map['lastUpdateHistoryEntryId'] == null ? null : pulumi.Output.create<String>(map['lastUpdateHistoryEntryId'] as String),
      licenseModel: map['licenseModel'] == null ? null : pulumi.Output.create<String>(map['licenseModel'] as String),
      listenerPort: map['listenerPort'] == null ? null : pulumi.Output.create<int>(map['listenerPort'] as int),
      memorySizeInGbs: map['memorySizeInGbs'] == null ? null : pulumi.Output.create<int>(map['memorySizeInGbs'] as int),
      nodeCount: map['nodeCount'] == null ? null : pulumi.Output.create<int>(map['nodeCount'] as int),
      ociResourceAnchorName: map['ociResourceAnchorName'] == null ? null : pulumi.Output.create<String>(map['ociResourceAnchorName'] as String),
      ociUrl: map['ociUrl'] == null ? null : pulumi.Output.create<String>(map['ociUrl'] as String),
      ocid: map['ocid'] == null ? null : pulumi.Output.create<String>(map['ocid'] as String),
      odbNetworkArn: map['odbNetworkArn'] == null ? null : pulumi.Output.create<String>(map['odbNetworkArn'] as String),
      odbNetworkId: map['odbNetworkId'] == null ? null : pulumi.Output.create<String>(map['odbNetworkId'] as String),
      percentProgress: map['percentProgress'] == null ? null : pulumi.Output.create<double>(map['percentProgress'] as double),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scanDnsName: map['scanDnsName'] == null ? null : pulumi.Output.create<String>(map['scanDnsName'] as String),
      scanDnsRecordId: map['scanDnsRecordId'] == null ? null : pulumi.Output.create<String>(map['scanDnsRecordId'] as String),
      scanIpIds: map['scanIpIds'] == null ? null : pulumi.Output.create<List<String>>((map['scanIpIds'] as List).cast<String>()),
      scanListenerPortTcp: map['scanListenerPortTcp'] == null ? null : pulumi.Output.create<int>(map['scanListenerPortTcp'] as int),
      shape: map['shape'] == null ? null : pulumi.Output.create<String>(map['shape'] as String),
      sshPublicKeys: map['sshPublicKeys'] == null ? null : pulumi.Output.create<List<String>>((map['sshPublicKeys'] as List).cast<String>()),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusReason: map['statusReason'] == null ? null : pulumi.Output.create<String>(map['statusReason'] as String),
      storageSizeInGbs: map['storageSizeInGbs'] == null ? null : pulumi.Output.create<int>(map['storageSizeInGbs'] as int),
      systemVersion: map['systemVersion'] == null ? null : pulumi.Output.create<String>(map['systemVersion'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<CloudVmClusterTimeouts>(CloudVmClusterTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      timezone: map['timezone'] == null ? null : pulumi.Output.create<String>(map['timezone'] as String),
      vipIds: map['vipIds'] == null ? null : pulumi.Output.create<List<String>>((map['vipIds'] as List).cast<String>()),
    );
  }
}

