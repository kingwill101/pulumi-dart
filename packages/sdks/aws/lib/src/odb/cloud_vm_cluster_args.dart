// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_vm_cluster_data_collection_options.dart';
import 'cloud_vm_cluster_timeouts.dart';

/// {@template pulumi_odb_cloud_vm_cluster_cloud_vm_cluster_args_doc}
/// The set of arguments for CloudVmCluster.
/// {@endtemplate}
/// {@macro pulumi_odb_cloud_vm_cluster_cloud_vm_cluster_args_doc}
class CloudVmClusterArgs {
  /// ARN of the Exadata infrastructure for this VM cluster. Changing this will create a new resource. Either the combination of cloudExadataInfrastructureId and odbNetworkId or cloudExadataInfrastructureArn and odbNetworkArn must be used.
  final pulumi.Input<String>? cloudExadataInfrastructureArn;
  /// Unique identifier of the Exadata infrastructure for this VM cluster. Changing this will create a new resource. Either the combination of cloudExadataInfrastructureId and odbNetworkId or cloudExadataInfrastructureArn and odbNetworkArn must be used.
  final pulumi.Input<String>? cloudExadataInfrastructureId;
  /// Name of the Grid Infrastructure (GI) cluster. Changing this will create a new resource.
  final pulumi.Input<String>? clusterName;
  /// Number of CPU cores to enable on the VM cluster. Changing this will create a new resource.
  final pulumi.Input<int> cpuCoreCount;
  /// Set of preferences for the various diagnostic collection options for the VM cluster. See `dataCollectionOptions` Block below. Changing this will create a new resource.
  final pulumi.Input<CloudVmClusterDataCollectionOptions> dataCollectionOptions;
  /// Size of the data disk group, in terabytes (TBs), to allocate for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<double> dataStorageSizeInTbs;
  /// Amount of local node storage, in gigabytes (GBs), to allocate for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<int>? dbNodeStorageSizeInGbs;
  /// List of database servers for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<List<String>> dbServers;
  /// User-friendly name for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<String> displayName;
  /// Valid Oracle Grid Infrastructure (GI) software version. To get valid values, use the ListGiVersions operation for the Exadata infrastructure shape. Example: `19.0.0.0`. Changing this creates a new resource. Prefer to provide `odb:input_gi_version` tag. If `odb:input_gi_version` tag is provided, its value must exactly match `giVersion`, otherwise Terraform returns an error. See the `With GI Version Tag` example above.
  final pulumi.Input<String> giVersion;
  /// Host name prefix for the VM cluster. Constraints: - Can't be "localhost" or "hostname". - Can't contain "-version". - Maximum length of the combined hostname and domain is 63 characters. - Hostname must be unique within the subnet. Changing this will create a new resource.
  final pulumi.Input<String> hostnamePrefix;
  /// Whether to enable database backups to local Exadata storage for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<bool>? isLocalBackupEnabled;
  /// Whether to create a sparse disk group for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<bool>? isSparseDiskgroupEnabled;
  /// Oracle license model to apply to the VM cluster. Default: LICENSE_INCLUDED. Changing this will create a new resource.
  final pulumi.Input<String>? licenseModel;
  /// Amount of memory, in gigabytes (GBs), to allocate for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<int>? memorySizeInGbs;
  /// ARN of the ODB network for the VM cluster. Changing this will create a new resource. Either the combination of cloudExadataInfrastructureId and odbNetworkId or cloudExadataInfrastructureArn and odbNetworkArn must be used.
  final pulumi.Input<String>? odbNetworkArn;
  /// Unique identifier of the ODB network for the VM cluster. Changing this will create a new resource. Either the combination of cloudExadataInfrastructureId and odbNetworkId or cloudExadataInfrastructureArn and odbNetworkArn must be used.
  final pulumi.Input<String>? odbNetworkId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Port number for TCP connections to the single client access name (SCAN) listener. Valid values: 1024–8999, except 2484, 6100, 6200, 7060, 7070, 7085, and 7879. Default: 1521. Changing this will create a new resource.
  final pulumi.Input<int>? scanListenerPortTcp;
  /// Public key portion of one or more key pairs used for SSH access to the VM cluster. Changing this will create a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>> sshPublicKeys;
  /// Map of tags to assign to the exadata infrastructure. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<CloudVmClusterTimeouts>? timeouts;
  /// Configured time zone of the VM cluster. Changing this will create a new resource.
  final pulumi.Input<String>? timezone;

  /// Creates a new [CloudVmClusterArgs].
  /// [cloudExadataInfrastructureArn] ARN of the Exadata infrastructure for this VM cluster. Changing this will create a new resource. Either the combination of cloudExadataInfrastructureId and odbNetworkId or cloudExadataInfrastructureArn and odbNetworkArn must be used.
  /// [cloudExadataInfrastructureId] Unique identifier of the Exadata infrastructure for this VM cluster. Changing this will create a new resource. Either the combination of cloudExadataInfrastructureId and odbNetworkId or cloudExadataInfrastructureArn and odbNetworkArn must be used.
  /// [clusterName] Name of the Grid Infrastructure (GI) cluster. Changing this will create a new resource.
  /// [cpuCoreCount] Number of CPU cores to enable on the VM cluster. Changing this will create a new resource.
  /// [dataCollectionOptions] Set of preferences for the various diagnostic collection options for the VM cluster. See `dataCollectionOptions` Block below. Changing this will create a new resource.
  /// [dataStorageSizeInTbs] Size of the data disk group, in terabytes (TBs), to allocate for the VM cluster. Changing this will create a new resource.
  /// [dbNodeStorageSizeInGbs] Amount of local node storage, in gigabytes (GBs), to allocate for the VM cluster. Changing this will create a new resource.
  /// [dbServers] List of database servers for the VM cluster. Changing this will create a new resource.
  /// [displayName] User-friendly name for the VM cluster. Changing this will create a new resource.
  /// [giVersion] Valid Oracle Grid Infrastructure (GI) software version. To get valid values, use the ListGiVersions operation for the Exadata infrastructure shape. Example: `19.0.0.0`. Changing this creates a new resource. Prefer to provide `odb:input_gi_version` tag. If `odb:input_gi_version` tag is provided, its value must exactly match `giVersion`, otherwise Terraform returns an error. See the `With GI Version Tag` example above.
  /// [hostnamePrefix] Host name prefix for the VM cluster. Constraints: - Can't be "localhost" or "hostname". - Can't contain "-version". - Maximum length of the combined hostname and domain is 63 characters. - Hostname must be unique within the subnet. Changing this will create a new resource.
  /// [isLocalBackupEnabled] Whether to enable database backups to local Exadata storage for the VM cluster. Changing this will create a new resource.
  /// [isSparseDiskgroupEnabled] Whether to create a sparse disk group for the VM cluster. Changing this will create a new resource.
  /// [licenseModel] Oracle license model to apply to the VM cluster. Default: LICENSE_INCLUDED. Changing this will create a new resource.
  /// [memorySizeInGbs] Amount of memory, in gigabytes (GBs), to allocate for the VM cluster. Changing this will create a new resource.
  /// [odbNetworkArn] ARN of the ODB network for the VM cluster. Changing this will create a new resource. Either the combination of cloudExadataInfrastructureId and odbNetworkId or cloudExadataInfrastructureArn and odbNetworkArn must be used.
  /// [odbNetworkId] Unique identifier of the ODB network for the VM cluster. Changing this will create a new resource. Either the combination of cloudExadataInfrastructureId and odbNetworkId or cloudExadataInfrastructureArn and odbNetworkArn must be used.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scanListenerPortTcp] Port number for TCP connections to the single client access name (SCAN) listener. Valid values: 1024–8999, except 2484, 6100, 6200, 7060, 7070, 7085, and 7879. Default: 1521. Changing this will create a new resource.
  /// [sshPublicKeys] Public key portion of one or more key pairs used for SSH access to the VM cluster. Changing this will create a new resource.
  /// [tags] Map of tags to assign to the exadata infrastructure. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [timezone] Configured time zone of the VM cluster. Changing this will create a new resource.
  const CloudVmClusterArgs({
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
      cloudExadataInfrastructureArn: (() { final guardedValue = map['cloudExadataInfrastructureArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudExadataInfrastructureId: (() { final guardedValue = map['cloudExadataInfrastructureId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuCoreCount: pulumi.Input.fromValue(map['cpuCoreCount'] as int),
      dataCollectionOptions: pulumi.Input.fromValue(CloudVmClusterDataCollectionOptions.fromMap((map['dataCollectionOptions']! as Map).cast<String, dynamic>())),
      dataStorageSizeInTbs: pulumi.Input.fromValue(map['dataStorageSizeInTbs'] as double),
      dbNodeStorageSizeInGbs: (() { final guardedValue = map['dbNodeStorageSizeInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dbServers: pulumi.Input.fromValue((map['dbServers'] as List).cast<String>()),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      giVersion: pulumi.Input.fromValue(map['giVersion'] as String),
      hostnamePrefix: pulumi.Input.fromValue(map['hostnamePrefix'] as String),
      isLocalBackupEnabled: (() { final guardedValue = map['isLocalBackupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isSparseDiskgroupEnabled: (() { final guardedValue = map['isSparseDiskgroupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      licenseModel: (() { final guardedValue = map['licenseModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memorySizeInGbs: (() { final guardedValue = map['memorySizeInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      odbNetworkArn: (() { final guardedValue = map['odbNetworkArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbNetworkId: (() { final guardedValue = map['odbNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanListenerPortTcp: (() { final guardedValue = map['scanListenerPortTcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sshPublicKeys: pulumi.Input.fromValue((map['sshPublicKeys'] as List).cast<String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudVmClusterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timezone: (() { final guardedValue = map['timezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
