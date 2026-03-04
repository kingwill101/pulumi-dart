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
  final pulumi.Input<CloudVmClusterDataCollectionOptions>?
  dataCollectionOptions;

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
      'dataCollectionOptions':
          ?pulumi.Input.mapOptionalInputValue<
            CloudVmClusterDataCollectionOptions,
            Map<String, dynamic>
          >(dataCollectionOptions, (value) => value.toMap()),
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
      'iormConfigCaches':
          ?pulumi.Input.mapOptionalInputValue<
            List<CloudVmClusterIormConfigCache>,
            List<Map<String, dynamic>>
          >(
            iormConfigCaches,
            (value) =>
                pulumi.Input.encodeList<
                  CloudVmClusterIormConfigCache,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            CloudVmClusterTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'timezone': ?timezone,
      'vipIds': ?vipIds,
    };
  }

  factory CloudVmClusterState.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudExadataInfrastructureArn: (() {
        final guardedValue = map['cloudExadataInfrastructureArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudExadataInfrastructureId: (() {
        final guardedValue = map['cloudExadataInfrastructureId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterName: (() {
        final guardedValue = map['clusterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      computeModel: (() {
        final guardedValue = map['computeModel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cpuCoreCount: (() {
        final guardedValue = map['cpuCoreCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      createdAt: (() {
        final guardedValue = map['createdAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataCollectionOptions: (() {
        final guardedValue = map['dataCollectionOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CloudVmClusterDataCollectionOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dataStorageSizeInTbs: (() {
        final guardedValue = map['dataStorageSizeInTbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      dbNodeStorageSizeInGbs: (() {
        final guardedValue = map['dbNodeStorageSizeInGbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dbServers: (() {
        final guardedValue = map['dbServers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      diskRedundancy: (() {
        final guardedValue = map['diskRedundancy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domain: (() {
        final guardedValue = map['domain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      giVersion: (() {
        final guardedValue = map['giVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      giVersionComputed: (() {
        final guardedValue = map['giVersionComputed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostnamePrefix: (() {
        final guardedValue = map['hostnamePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostnamePrefixComputed: (() {
        final guardedValue = map['hostnamePrefixComputed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iormConfigCaches: (() {
        final guardedValue = map['iormConfigCaches'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CloudVmClusterIormConfigCache>(
            guardedValue,
            (value) => CloudVmClusterIormConfigCache.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      isLocalBackupEnabled: (() {
        final guardedValue = map['isLocalBackupEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      isSparseDiskgroupEnabled: (() {
        final guardedValue = map['isSparseDiskgroupEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      lastUpdateHistoryEntryId: (() {
        final guardedValue = map['lastUpdateHistoryEntryId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      licenseModel: (() {
        final guardedValue = map['licenseModel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      listenerPort: (() {
        final guardedValue = map['listenerPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      memorySizeInGbs: (() {
        final guardedValue = map['memorySizeInGbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      nodeCount: (() {
        final guardedValue = map['nodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ociResourceAnchorName: (() {
        final guardedValue = map['ociResourceAnchorName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ociUrl: (() {
        final guardedValue = map['ociUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ocid: (() {
        final guardedValue = map['ocid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      odbNetworkArn: (() {
        final guardedValue = map['odbNetworkArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      odbNetworkId: (() {
        final guardedValue = map['odbNetworkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      percentProgress: (() {
        final guardedValue = map['percentProgress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scanDnsName: (() {
        final guardedValue = map['scanDnsName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scanDnsRecordId: (() {
        final guardedValue = map['scanDnsRecordId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scanIpIds: (() {
        final guardedValue = map['scanIpIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      scanListenerPortTcp: (() {
        final guardedValue = map['scanListenerPortTcp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      shape: (() {
        final guardedValue = map['shape'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sshPublicKeys: (() {
        final guardedValue = map['sshPublicKeys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statusReason: (() {
        final guardedValue = map['statusReason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageSizeInGbs: (() {
        final guardedValue = map['storageSizeInGbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      systemVersion: (() {
        final guardedValue = map['systemVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CloudVmClusterTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      timezone: (() {
        final guardedValue = map['timezone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vipIds: (() {
        final guardedValue = map['vipIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
