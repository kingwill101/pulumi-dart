// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_vm_cluster_data_collection_options.dart';
import 'cloud_vm_cluster_timeouts.dart';

/// {@template pulumi_odb_cloud_vm_cluster_cloud_vm_cluster_args_doc}
/// The set of arguments for CloudVmCluster.
/// {@endtemplate}
/// {@macro pulumi_odb_cloud_vm_cluster_cloud_vm_cluster_args_doc}
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

  /// Creates a new [CloudVmClusterArgs].
  /// [cloudExadataInfrastructureArn] The ARN of the Exadata infrastructure for this VM cluster. Changing this will create a new resource. Either the combination of cloud_exadata_infrastructure_id and odb_network_id or cloud_exadata_infrastructure_arn and odb_network_arn must be used.
  /// [cloudExadataInfrastructureId] The unique identifier of the Exadata infrastructure for this VM cluster. Changing this will create a new resource. Either the combination of cloud_exadata_infrastructure_id and odb_network_id or cloud_exadata_infrastructure_arn and odb_network_arn must be used.
  /// [clusterName] The name of the Grid Infrastructure (GI) cluster. Changing this will create a new resource.
  /// [cpuCoreCount] The number of CPU cores to enable on the VM cluster. Changing this will create a new resource.
  /// [dataCollectionOptions] The set of preferences for the various diagnostic collection options for the VM cluster.
  /// [dataStorageSizeInTbs] The size of the data disk group, in terabytes (TBs), to allocate for the VM cluster. Changing this will create a new resource.
  /// [dbNodeStorageSizeInGbs] The amount of local node storage, in gigabytes (GBs), to allocate for the VM cluster. Changing this will create a new resource.
  /// [dbServers] The list of database servers for the VM cluster. Changing this will create a new resource.
  /// [displayName] A user-friendly name for the VM cluster. Changing this will create a new resource.
  /// [giVersion] A valid software version of Oracle Grid Infrastructure (GI). To get the list of valid values, use the ListGiVersions operation and specify the shape of the Exadata infrastructure. Example: 19.0.0.0 Changing this will create a new resource.
  /// [hostnamePrefix] The host name prefix for the VM cluster. Constraints: - Can't be "localhost" or "hostname". - Can't contain "-version". - The maximum length of the combined hostname and domain is 63 characters. - The hostname must be unique within the subnet. Changing this will create a new resource.
  /// [isLocalBackupEnabled] Specifies whether to enable database backups to local Exadata storage for the VM cluster. Changing this will create a new resource.
  /// [isSparseDiskgroupEnabled] Specifies whether to create a sparse disk group for the VM cluster. Changing this will create a new resource.
  /// [licenseModel] The Oracle license model to apply to the VM cluster. Default: LICENSE_INCLUDED. Changing this will create a new resource.
  /// [memorySizeInGbs] The amount of memory, in gigabytes (GBs), to allocate for the VM cluster. Changing this will create a new resource.
  /// [odbNetworkArn] The ARN of the ODB network for the VM cluster. Changing this will create a new resource. Either the combination of cloud_exadata_infrastructure_id and odb_network_id or cloud_exadata_infrastructure_arn and odb_network_arn must be used.
  /// [odbNetworkId] The unique identifier of the ODB network for the VM cluster. Changing this will create a new resource. Either the combination of cloud_exadata_infrastructure_id and odb_network_id or cloud_exadata_infrastructure_arn and odb_network_arn must be used.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scanListenerPortTcp] The port number for TCP connections to the single client access name (SCAN) listener. Valid values: 1024–8999, except 2484, 6100, 6200, 7060, 7070, 7085, and 7879. Default: 1521. Changing this will create a new resource.
  /// [sshPublicKeys] The public key portion of one or more key pairs used for SSH access to the VM cluster. Changing this will create a new resource.
  /// [tags] A map of tags to assign to the exadata infrastructure. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [timezone] The configured time zone of the VM cluster. Changing this will create a new resource.
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
    return <String, dynamic>{
      'cloudExadataInfrastructureArn': ?cloudExadataInfrastructureArn,
      'cloudExadataInfrastructureId': ?cloudExadataInfrastructureId,
      'clusterName': ?clusterName,
      'cpuCoreCount': cpuCoreCount,
      'dataCollectionOptions': pulumi.Input.mapInputValue<CloudVmClusterDataCollectionOptions, Map<String, dynamic>>(dataCollectionOptions, (value) => value.toMap()),
      'dataStorageSizeInTbs': dataStorageSizeInTbs,
      'dbNodeStorageSizeInGbs': ?dbNodeStorageSizeInGbs,
      'dbServers': dbServers,
      'displayName': displayName,
      'giVersion': giVersion,
      'hostnamePrefix': hostnamePrefix,
      'isLocalBackupEnabled': ?isLocalBackupEnabled,
      'isSparseDiskgroupEnabled': ?isSparseDiskgroupEnabled,
      'licenseModel': ?licenseModel,
      'memorySizeInGbs': ?memorySizeInGbs,
      'odbNetworkArn': ?odbNetworkArn,
      'odbNetworkId': ?odbNetworkId,
      'region': ?region,
      'scanListenerPortTcp': ?scanListenerPortTcp,
      'sshPublicKeys': sshPublicKeys,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CloudVmClusterTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'timezone': ?timezone,
    };
  }

  factory CloudVmClusterArgs.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterArgs(
      cloudExadataInfrastructureArn: map['cloudExadataInfrastructureArn'] == null ? null : ((map['cloudExadataInfrastructureArn'] as String).input()).input(),
      cloudExadataInfrastructureId: map['cloudExadataInfrastructureId'] == null ? null : ((map['cloudExadataInfrastructureId'] as String).input()).input(),
      clusterName: map['clusterName'] == null ? null : ((map['clusterName'] as String).input()).input(),
      cpuCoreCount: (map['cpuCoreCount'] as int).input(),
      dataCollectionOptions: (CloudVmClusterDataCollectionOptions.fromMap((map['dataCollectionOptions']! as Map).cast<String, dynamic>())).input(),
      dataStorageSizeInTbs: (map['dataStorageSizeInTbs'] as double).input(),
      dbNodeStorageSizeInGbs: map['dbNodeStorageSizeInGbs'] == null ? null : ((map['dbNodeStorageSizeInGbs'] as int).input()).input(),
      dbServers: ((map['dbServers'] as List).cast<String>()).input(),
      displayName: (map['displayName'] as String).input(),
      giVersion: (map['giVersion'] as String).input(),
      hostnamePrefix: (map['hostnamePrefix'] as String).input(),
      isLocalBackupEnabled: map['isLocalBackupEnabled'] == null ? null : ((map['isLocalBackupEnabled'] as bool).input()).input(),
      isSparseDiskgroupEnabled: map['isSparseDiskgroupEnabled'] == null ? null : ((map['isSparseDiskgroupEnabled'] as bool).input()).input(),
      licenseModel: map['licenseModel'] == null ? null : ((map['licenseModel'] as String).input()).input(),
      memorySizeInGbs: map['memorySizeInGbs'] == null ? null : ((map['memorySizeInGbs'] as int).input()).input(),
      odbNetworkArn: map['odbNetworkArn'] == null ? null : ((map['odbNetworkArn'] as String).input()).input(),
      odbNetworkId: map['odbNetworkId'] == null ? null : ((map['odbNetworkId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      scanListenerPortTcp: map['scanListenerPortTcp'] == null ? null : ((map['scanListenerPortTcp'] as int).input()).input(),
      sshPublicKeys: ((map['sshPublicKeys'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((CloudVmClusterTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      timezone: map['timezone'] == null ? null : ((map['timezone'] as String).input()).input(),
    );
  }
}

