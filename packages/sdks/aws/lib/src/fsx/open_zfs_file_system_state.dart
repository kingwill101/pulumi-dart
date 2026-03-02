// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_zfs_file_system_disk_iops_configuration.dart';
import 'open_zfs_file_system_read_cache_configuration.dart';
import 'open_zfs_file_system_root_volume_configuration.dart';

/// Input properties used for looking up and filtering OpenZfsFileSystem resources.
class OpenZfsFileSystemState {
  /// Amazon Resource Name of the file system.
  final pulumi.Input<String>? arn;
  /// The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days.
  final pulumi.Input<int>? automaticBackupRetentionDays;
  /// The ID of the source backup to create the filesystem from.
  final pulumi.Input<String>? backupId;
  /// A boolean flag indicating whether tags for the file system should be copied to backups. The default value is false.
  final pulumi.Input<bool>? copyTagsToBackups;
  /// A boolean flag indicating whether tags for the file system should be copied to snapshots. The default value is false.
  final pulumi.Input<bool>? copyTagsToVolumes;
  /// A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires `automatic_backup_retention_days` to be set.
  final pulumi.Input<String>? dailyAutomaticBackupStartTime;
  /// List of delete options, which at present supports only one value that specifies whether to delete all child volumes and snapshots when the file system is deleted. Valid values: `DELETE_CHILD_VOLUMES_AND_SNAPSHOTS`.
  final pulumi.Input<List<String>>? deleteOptions;
  /// Filesystem deployment type. See the [AWS API documentation](https://docs.aws.amazon.com/fsx/latest/APIReference/API_CreateFileSystemOpenZFSConfiguration.html#FSx-Type-CreateFileSystemOpenZFSConfiguration-DeploymentType) for a list of valid values.
  final pulumi.Input<String>? deploymentType;
  /// The SSD IOPS configuration for the Amazon FSx for OpenZFS file system. See `disk_iops_configuration` Block for details.
  final pulumi.Input<OpenZfsFileSystemDiskIopsConfiguration>? diskIopsConfiguration;
  /// DNS name for the file system, e.g., `fs-12345678.fsx.us-west-2.amazonaws.com`
  final pulumi.Input<String>? dnsName;
  /// IP address of the endpoint that is used to access data or to manage the file system.
  final pulumi.Input<String>? endpointIpAddress;
  /// (Multi-AZ only) Specifies the IP address range in which the endpoints to access your file system will be created.
  final pulumi.Input<String>? endpointIpAddressRange;
  /// A map of tags to apply to the file system's final backup.
  final pulumi.Input<Map<String, String>>? finalBackupTags;
  /// ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key.
  final pulumi.Input<String>? kmsKeyId;
  /// Set of Elastic Network Interface identifiers from which the file system is accessible The first network interface returned is the primary network interface.
  final pulumi.Input<List<String>>? networkInterfaceIds;
  /// AWS account identifier that created the file system.
  final pulumi.Input<String>? ownerId;
  /// (Multi-AZ only) Required when `deployment_type` is set to `MULTI_AZ_1`. This specifies the subnet in which you want the preferred file server to be located.
  final pulumi.Input<String>? preferredSubnetId;
  /// Configuration block for optional provisioned SSD read cache on file systems that use the Intelligent-Tiering storage class. Required when `storage_type` is set to `INTELLIGENT_TIERING`. See `read_cache_configuration` Block for details.
  final pulumi.Input<OpenZfsFileSystemReadCacheConfiguration>? readCacheConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The configuration for the root volume of the file system. All other volumes are children or the root volume. See `root_volume_configuration` Block for details.
  final pulumi.Input<OpenZfsFileSystemRootVolumeConfiguration>? rootVolumeConfiguration;
  /// Identifier of the root volume, e.g., `fsvol-12345678`
  final pulumi.Input<String>? rootVolumeId;
  /// (Multi-AZ only) Specifies the route tables in which Amazon FSx creates the rules for routing traffic to the correct file server. You should specify all virtual private cloud (VPC) route tables associated with the subnets in which your clients are located. By default, Amazon FSx selects your VPC's default route table.
  final pulumi.Input<List<String>>? routeTableIds;
  /// A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  final pulumi.Input<bool>? skipFinalBackup;
  /// The storage capacity (GiB) of the file system. Valid values between `64` and `524288`. Required when `storage_type` is set to `SSD`. Must not be set when `storage_type` is set to `INTELLIGENT_TIERING`.
  final pulumi.Input<int>? storageCapacity;
  /// The filesystem storage type. Valid values are `SSD` and `INTELLIGENT_TIERING`. `INTELLIGENT_TIERING` requires `deployment_type` to be `MULTI_AZ_1`.
  final pulumi.Input<String>? storageType;
  /// A list of IDs for the subnets that the file system will be accessible from.
  final pulumi.Input<List<String>>? subnetIds;
  /// A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Throughput (MB/s) of the file system. Valid values depend on `deployment_type`. Must be one of `64`, `128`, `256`, `512`, `1024`, `2048`, `3072`, `4096` for `SINGLE_AZ_1`. Must be one of `160`, `320`, `640`, `1280`, `2560`, `3840`, `5120`, `7680`, `10240` for `SINGLE_AZ_2`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int>? throughputCapacity;
  /// Identifier of the Virtual Private Cloud for the file system.
  final pulumi.Input<String>? vpcId;
  /// The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  final pulumi.Input<String>? weeklyMaintenanceStartTime;

  /// Creates a new [OpenZfsFileSystemState].
  /// [arn] Amazon Resource Name of the file system.
  /// [automaticBackupRetentionDays] The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days.
  /// [backupId] The ID of the source backup to create the filesystem from.
  /// [copyTagsToBackups] A boolean flag indicating whether tags for the file system should be copied to backups. The default value is false.
  /// [copyTagsToVolumes] A boolean flag indicating whether tags for the file system should be copied to snapshots. The default value is false.
  /// [dailyAutomaticBackupStartTime] A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires `automatic_backup_retention_days` to be set.
  /// [deleteOptions] List of delete options, which at present supports only one value that specifies whether to delete all child volumes and snapshots when the file system is deleted. Valid values: `DELETE_CHILD_VOLUMES_AND_SNAPSHOTS`.
  /// [deploymentType] Filesystem deployment type. See the [AWS API documentation](https://docs.aws.amazon.com/fsx/latest/APIReference/API_CreateFileSystemOpenZFSConfiguration.html#FSx-Type-CreateFileSystemOpenZFSConfiguration-DeploymentType) for a list of valid values.
  /// [diskIopsConfiguration] The SSD IOPS configuration for the Amazon FSx for OpenZFS file system. See `disk_iops_configuration` Block for details.
  /// [dnsName] DNS name for the file system, e.g., `fs-12345678.fsx.us-west-2.amazonaws.com`
  /// [endpointIpAddress] IP address of the endpoint that is used to access data or to manage the file system.
  /// [endpointIpAddressRange] (Multi-AZ only) Specifies the IP address range in which the endpoints to access your file system will be created.
  /// [finalBackupTags] A map of tags to apply to the file system's final backup.
  /// [kmsKeyId] ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key.
  /// [networkInterfaceIds] Set of Elastic Network Interface identifiers from which the file system is accessible The first network interface returned is the primary network interface.
  /// [ownerId] AWS account identifier that created the file system.
  /// [preferredSubnetId] (Multi-AZ only) Required when `deployment_type` is set to `MULTI_AZ_1`. This specifies the subnet in which you want the preferred file server to be located.
  /// [readCacheConfiguration] Configuration block for optional provisioned SSD read cache on file systems that use the Intelligent-Tiering storage class. Required when `storage_type` is set to `INTELLIGENT_TIERING`. See `read_cache_configuration` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootVolumeConfiguration] The configuration for the root volume of the file system. All other volumes are children or the root volume. See `root_volume_configuration` Block for details.
  /// [rootVolumeId] Identifier of the root volume, e.g., `fsvol-12345678`
  /// [routeTableIds] (Multi-AZ only) Specifies the route tables in which Amazon FSx creates the rules for routing traffic to the correct file server. You should specify all virtual private cloud (VPC) route tables associated with the subnets in which your clients are located. By default, Amazon FSx selects your VPC's default route table.
  /// [securityGroupIds] A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  /// [skipFinalBackup] When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  /// [storageCapacity] The storage capacity (GiB) of the file system. Valid values between `64` and `524288`. Required when `storage_type` is set to `SSD`. Must not be set when `storage_type` is set to `INTELLIGENT_TIERING`.
  /// [storageType] The filesystem storage type. Valid values are `SSD` and `INTELLIGENT_TIERING`. `INTELLIGENT_TIERING` requires `deployment_type` to be `MULTI_AZ_1`.
  /// [subnetIds] A list of IDs for the subnets that the file system will be accessible from.
  /// [tags] A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [throughputCapacity] Throughput (MB/s) of the file system. Valid values depend on `deployment_type`. Must be one of `64`, `128`, `256`, `512`, `1024`, `2048`, `3072`, `4096` for `SINGLE_AZ_1`. Must be one of `160`, `320`, `640`, `1280`, `2560`, `3840`, `5120`, `7680`, `10240` for `SINGLE_AZ_2`.
  /// [vpcId] Identifier of the Virtual Private Cloud for the file system.
  /// [weeklyMaintenanceStartTime] The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  OpenZfsFileSystemState({
    this.arn,
    this.automaticBackupRetentionDays,
    this.backupId,
    this.copyTagsToBackups,
    this.copyTagsToVolumes,
    this.dailyAutomaticBackupStartTime,
    this.deleteOptions,
    this.deploymentType,
    this.diskIopsConfiguration,
    this.dnsName,
    this.endpointIpAddress,
    this.endpointIpAddressRange,
    this.finalBackupTags,
    this.kmsKeyId,
    this.networkInterfaceIds,
    this.ownerId,
    this.preferredSubnetId,
    this.readCacheConfiguration,
    this.region,
    this.rootVolumeConfiguration,
    this.rootVolumeId,
    this.routeTableIds,
    this.securityGroupIds,
    this.skipFinalBackup,
    this.storageCapacity,
    this.storageType,
    this.subnetIds,
    this.tags,
    this.tagsAll,
    this.throughputCapacity,
    this.vpcId,
    this.weeklyMaintenanceStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'automaticBackupRetentionDays': ?automaticBackupRetentionDays,
      'backupId': ?backupId,
      'copyTagsToBackups': ?copyTagsToBackups,
      'copyTagsToVolumes': ?copyTagsToVolumes,
      'dailyAutomaticBackupStartTime': ?dailyAutomaticBackupStartTime,
      'deleteOptions': ?deleteOptions,
      'deploymentType': ?deploymentType,
      'diskIopsConfiguration': ?pulumi.Input.mapOptionalInputValue<OpenZfsFileSystemDiskIopsConfiguration, Map<String, dynamic>>(diskIopsConfiguration, (value) => value.toMap()),
      'dnsName': ?dnsName,
      'endpointIpAddress': ?endpointIpAddress,
      'endpointIpAddressRange': ?endpointIpAddressRange,
      'finalBackupTags': ?finalBackupTags,
      'kmsKeyId': ?kmsKeyId,
      'networkInterfaceIds': ?networkInterfaceIds,
      'ownerId': ?ownerId,
      'preferredSubnetId': ?preferredSubnetId,
      'readCacheConfiguration': ?pulumi.Input.mapOptionalInputValue<OpenZfsFileSystemReadCacheConfiguration, Map<String, dynamic>>(readCacheConfiguration, (value) => value.toMap()),
      'region': ?region,
      'rootVolumeConfiguration': ?pulumi.Input.mapOptionalInputValue<OpenZfsFileSystemRootVolumeConfiguration, Map<String, dynamic>>(rootVolumeConfiguration, (value) => value.toMap()),
      'rootVolumeId': ?rootVolumeId,
      'routeTableIds': ?routeTableIds,
      'securityGroupIds': ?securityGroupIds,
      'skipFinalBackup': ?skipFinalBackup,
      'storageCapacity': ?storageCapacity,
      'storageType': ?storageType,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'throughputCapacity': ?throughputCapacity,
      'vpcId': ?vpcId,
      'weeklyMaintenanceStartTime': ?weeklyMaintenanceStartTime,
    };
  }

  factory OpenZfsFileSystemState.fromMap(Map<String, dynamic> map) {
    return OpenZfsFileSystemState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      automaticBackupRetentionDays: map['automaticBackupRetentionDays'] == null ? null : ((map['automaticBackupRetentionDays'] as int).input()).input(),
      backupId: map['backupId'] == null ? null : ((map['backupId'] as String).input()).input(),
      copyTagsToBackups: map['copyTagsToBackups'] == null ? null : ((map['copyTagsToBackups'] as bool).input()).input(),
      copyTagsToVolumes: map['copyTagsToVolumes'] == null ? null : ((map['copyTagsToVolumes'] as bool).input()).input(),
      dailyAutomaticBackupStartTime: map['dailyAutomaticBackupStartTime'] == null ? null : ((map['dailyAutomaticBackupStartTime'] as String).input()).input(),
      deleteOptions: map['deleteOptions'] == null ? null : (((map['deleteOptions'] as List).cast<String>()).input()).input(),
      deploymentType: map['deploymentType'] == null ? null : ((map['deploymentType'] as String).input()).input(),
      diskIopsConfiguration: map['diskIopsConfiguration'] == null ? null : ((OpenZfsFileSystemDiskIopsConfiguration.fromMap((map['diskIopsConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      dnsName: map['dnsName'] == null ? null : ((map['dnsName'] as String).input()).input(),
      endpointIpAddress: map['endpointIpAddress'] == null ? null : ((map['endpointIpAddress'] as String).input()).input(),
      endpointIpAddressRange: map['endpointIpAddressRange'] == null ? null : ((map['endpointIpAddressRange'] as String).input()).input(),
      finalBackupTags: map['finalBackupTags'] == null ? null : (((map['finalBackupTags'] as Map).cast<String, String>()).input()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      networkInterfaceIds: map['networkInterfaceIds'] == null ? null : (((map['networkInterfaceIds'] as List).cast<String>()).input()).input(),
      ownerId: map['ownerId'] == null ? null : ((map['ownerId'] as String).input()).input(),
      preferredSubnetId: map['preferredSubnetId'] == null ? null : ((map['preferredSubnetId'] as String).input()).input(),
      readCacheConfiguration: map['readCacheConfiguration'] == null ? null : ((OpenZfsFileSystemReadCacheConfiguration.fromMap((map['readCacheConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      rootVolumeConfiguration: map['rootVolumeConfiguration'] == null ? null : ((OpenZfsFileSystemRootVolumeConfiguration.fromMap((map['rootVolumeConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      rootVolumeId: map['rootVolumeId'] == null ? null : ((map['rootVolumeId'] as String).input()).input(),
      routeTableIds: map['routeTableIds'] == null ? null : (((map['routeTableIds'] as List).cast<String>()).input()).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : (((map['securityGroupIds'] as List).cast<String>()).input()).input(),
      skipFinalBackup: map['skipFinalBackup'] == null ? null : ((map['skipFinalBackup'] as bool).input()).input(),
      storageCapacity: map['storageCapacity'] == null ? null : ((map['storageCapacity'] as int).input()).input(),
      storageType: map['storageType'] == null ? null : ((map['storageType'] as String).input()).input(),
      subnetIds: map['subnetIds'] == null ? null : (((map['subnetIds'] as List).cast<String>()).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      throughputCapacity: map['throughputCapacity'] == null ? null : ((map['throughputCapacity'] as int).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
      weeklyMaintenanceStartTime: map['weeklyMaintenanceStartTime'] == null ? null : ((map['weeklyMaintenanceStartTime'] as String).input()).input(),
    );
  }
}

