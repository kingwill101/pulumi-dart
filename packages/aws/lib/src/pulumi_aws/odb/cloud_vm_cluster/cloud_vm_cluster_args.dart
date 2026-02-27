// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cloud_vm_cluster_data_collection_options/cloud_vm_cluster_data_collection_options.dart';
import '../cloud_vm_cluster_timeouts/cloud_vm_cluster_timeouts.dart';

/// The set of arguments for CloudVmCluster.
class CloudVmClusterArgs {
  /// The ARN of the Exadata infrastructure for this VM cluster. Changing this will create a new resource. Either the combination of cloud_exadata_infrastructure_id and odb_network_id or cloud_exadata_infrastructure_arn and odb_network_arn must be used.
  final pulumi.Input<String>? cloudExadataInfrastructureArn;

  /// The unique identifier of the Exadata infrastructure for this VM cluster. Changing this will create a new resource. Either the combination of cloud_exadata_infrastructure_id and odb_network_id or cloud_exadata_infrastructure_arn and odb_network_arn must be used.
  final pulumi.Input<String>? cloudExadataInfrastructureId;

  /// The name of the Grid Infrastructure (GI) cluster. Changing this will create a new resource.
  final pulumi.Input<String>? clusterName;

  /// The number of CPU cores to enable on the VM cluster. Changing this will create a new resource.
  final pulumi.Input<int> cpuCoreCount;

  /// The set of preferences for the various diagnostic collection options for the VM cluster.
  final pulumi.Input<CloudVmClusterDataCollectionOptions> dataCollectionOptions;

  /// The size of the data disk group, in terabytes (TBs), to allocate for the VM cluster. Changing this will create a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<double> dataStorageSizeInTbs;

  /// The amount of local node storage, in gigabytes (GBs), to allocate for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<int>? dbNodeStorageSizeInGbs;

  /// The list of database servers for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<List<String>> dbServers;

  /// A user-friendly name for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<String> displayName;

  /// A valid software version of Oracle Grid Infrastructure (GI). To get the list of valid values, use the ListGiVersions operation and specify the shape of the Exadata infrastructure. Example: 19.0.0.0 Changing this will create a new resource.
  final pulumi.Input<String> giVersion;

  /// The host name prefix for the VM cluster. Constraints: - Can't be "localhost" or "hostname". - Can't contain "-version". - The maximum length of the combined hostname and domain is 63 characters. - The hostname must be unique within the subnet. Changing this will create a new resource.
  final pulumi.Input<String> hostnamePrefix;

  /// Specifies whether to enable database backups to local Exadata storage for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<bool>? isLocalBackupEnabled;

  /// Specifies whether to create a sparse disk group for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<bool>? isSparseDiskgroupEnabled;

  /// The Oracle license model to apply to the VM cluster. Default: LICENSE_INCLUDED. Changing this will create a new resource.
  final pulumi.Input<String>? licenseModel;

  /// The amount of memory, in gigabytes (GBs), to allocate for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<int>? memorySizeInGbs;

  /// The ARN of the ODB network for the VM cluster. Changing this will create a new resource. Either the combination of cloud_exadata_infrastructure_id and odb_network_id or cloud_exadata_infrastructure_arn and odb_network_arn must be used.
  final pulumi.Input<String>? odbNetworkArn;

  /// The unique identifier of the ODB network for the VM cluster. Changing this will create a new resource. Either the combination of cloud_exadata_infrastructure_id and odb_network_id or cloud_exadata_infrastructure_arn and odb_network_arn must be used.
  final pulumi.Input<String>? odbNetworkId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The port number for TCP connections to the single client access name (SCAN) listener. Valid values: 1024–8999, except 2484, 6100, 6200, 7060, 7070, 7085, and 7879. Default: 1521. Changing this will create a new resource.
  final pulumi.Input<int>? scanListenerPortTcp;

  /// The public key portion of one or more key pairs used for SSH access to the VM cluster. Changing this will create a new resource.
  final pulumi.Input<List<String>> sshPublicKeys;

  /// A map of tags to assign to the exadata infrastructure. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<CloudVmClusterTimeouts>? timeouts;

  /// The configured time zone of the VM cluster. Changing this will create a new resource.
  final pulumi.Input<String>? timezone;

  CloudVmClusterArgs({
    this.cloudExadataInfrastructureArn,
    this.cloudExadataInfrastructureId,
    this.clusterName,
    required this.cpuCoreCount,
    required this.dataCollectionOptions,
    required this.dataStorageSizeInTbs,
    this.dbNodeStorageSizeInGbs,
    required this.dbServers,
    required this.displayName,
    required this.giVersion,
    required this.hostnamePrefix,
    this.isLocalBackupEnabled,
    this.isSparseDiskgroupEnabled,
    this.licenseModel,
    this.memorySizeInGbs,
    this.odbNetworkArn,
    this.odbNetworkId,
    this.region,
    this.scanListenerPortTcp,
    required this.sshPublicKeys,
    this.tags,
    this.timeouts,
    this.timezone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudExadataInfrastructureArnValue = cloudExadataInfrastructureArn;
    if (cloudExadataInfrastructureArnValue != null) {
      map['cloudExadataInfrastructureArn'] = cloudExadataInfrastructureArnValue;
    }
    final cloudExadataInfrastructureIdValue = cloudExadataInfrastructureId;
    if (cloudExadataInfrastructureIdValue != null) {
      map['cloudExadataInfrastructureId'] = cloudExadataInfrastructureIdValue;
    }
    final clusterNameValue = clusterName;
    if (clusterNameValue != null) {
      map['clusterName'] = clusterNameValue;
    }
    map['cpuCoreCount'] = cpuCoreCount;
    map['dataCollectionOptions'] = pulumi.Input.mapInputValue<
        CloudVmClusterDataCollectionOptions,
        Map<String, dynamic>>(dataCollectionOptions, (value) => value.toMap());
    map['dataStorageSizeInTbs'] = dataStorageSizeInTbs;
    final dbNodeStorageSizeInGbsValue = dbNodeStorageSizeInGbs;
    if (dbNodeStorageSizeInGbsValue != null) {
      map['dbNodeStorageSizeInGbs'] = dbNodeStorageSizeInGbsValue;
    }
    map['dbServers'] = dbServers;
    map['displayName'] = displayName;
    map['giVersion'] = giVersion;
    map['hostnamePrefix'] = hostnamePrefix;
    final isLocalBackupEnabledValue = isLocalBackupEnabled;
    if (isLocalBackupEnabledValue != null) {
      map['isLocalBackupEnabled'] = isLocalBackupEnabledValue;
    }
    final isSparseDiskgroupEnabledValue = isSparseDiskgroupEnabled;
    if (isSparseDiskgroupEnabledValue != null) {
      map['isSparseDiskgroupEnabled'] = isSparseDiskgroupEnabledValue;
    }
    final licenseModelValue = licenseModel;
    if (licenseModelValue != null) {
      map['licenseModel'] = licenseModelValue;
    }
    final memorySizeInGbsValue = memorySizeInGbs;
    if (memorySizeInGbsValue != null) {
      map['memorySizeInGbs'] = memorySizeInGbsValue;
    }
    final odbNetworkArnValue = odbNetworkArn;
    if (odbNetworkArnValue != null) {
      map['odbNetworkArn'] = odbNetworkArnValue;
    }
    final odbNetworkIdValue = odbNetworkId;
    if (odbNetworkIdValue != null) {
      map['odbNetworkId'] = odbNetworkIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scanListenerPortTcpValue = scanListenerPortTcp;
    if (scanListenerPortTcpValue != null) {
      map['scanListenerPortTcp'] = scanListenerPortTcpValue;
    }
    map['sshPublicKeys'] = sshPublicKeys;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          CloudVmClusterTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final timezoneValue = timezone;
    if (timezoneValue != null) {
      map['timezone'] = timezoneValue;
    }
    return map;
  }

  factory CloudVmClusterArgs.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterArgs(
      cloudExadataInfrastructureArn: pulumi.Input.asOptionalInput<String>(
          map['cloudExadataInfrastructureArn']),
      cloudExadataInfrastructureId: pulumi.Input.asOptionalInput<String>(
          map['cloudExadataInfrastructureId']),
      clusterName: pulumi.Input.asOptionalInput<String>(map['clusterName']),
      cpuCoreCount: pulumi.Input.asInput<int>(map['cpuCoreCount']),
      dataCollectionOptions:
          pulumi.Input.asInput<CloudVmClusterDataCollectionOptions>(
              map['dataCollectionOptions']),
      dataStorageSizeInTbs:
          pulumi.Input.asInput<double>(map['dataStorageSizeInTbs']),
      dbNodeStorageSizeInGbs:
          pulumi.Input.asOptionalInput<int>(map['dbNodeStorageSizeInGbs']),
      dbServers: pulumi.Input.asInput<List<String>>(map['dbServers']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      giVersion: pulumi.Input.asInput<String>(map['giVersion']),
      hostnamePrefix: pulumi.Input.asInput<String>(map['hostnamePrefix']),
      isLocalBackupEnabled:
          pulumi.Input.asOptionalInput<bool>(map['isLocalBackupEnabled']),
      isSparseDiskgroupEnabled:
          pulumi.Input.asOptionalInput<bool>(map['isSparseDiskgroupEnabled']),
      licenseModel: pulumi.Input.asOptionalInput<String>(map['licenseModel']),
      memorySizeInGbs:
          pulumi.Input.asOptionalInput<int>(map['memorySizeInGbs']),
      odbNetworkArn: pulumi.Input.asOptionalInput<String>(map['odbNetworkArn']),
      odbNetworkId: pulumi.Input.asOptionalInput<String>(map['odbNetworkId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scanListenerPortTcp:
          pulumi.Input.asOptionalInput<int>(map['scanListenerPortTcp']),
      sshPublicKeys: pulumi.Input.asInput<List<String>>(map['sshPublicKeys']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<CloudVmClusterTimeouts>(map['timeouts']),
      timezone: pulumi.Input.asOptionalInput<String>(map['timezone']),
    );
  }
}
