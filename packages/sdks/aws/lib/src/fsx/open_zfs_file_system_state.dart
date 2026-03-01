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
    pulumi.Output<String>? arn,
    pulumi.Output<int>? automaticBackupRetentionDays,
    pulumi.Output<String>? backupId,
    pulumi.Output<bool>? copyTagsToBackups,
    pulumi.Output<bool>? copyTagsToVolumes,
    pulumi.Output<String>? dailyAutomaticBackupStartTime,
    pulumi.Output<List<String>>? deleteOptions,
    pulumi.Output<String>? deploymentType,
    pulumi.Output<OpenZfsFileSystemDiskIopsConfiguration>? diskIopsConfiguration,
    pulumi.Output<String>? dnsName,
    pulumi.Output<String>? endpointIpAddress,
    pulumi.Output<String>? endpointIpAddressRange,
    pulumi.Output<Map<String, String>>? finalBackupTags,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<List<String>>? networkInterfaceIds,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? preferredSubnetId,
    pulumi.Output<OpenZfsFileSystemReadCacheConfiguration>? readCacheConfiguration,
    pulumi.Output<String>? region,
    pulumi.Output<OpenZfsFileSystemRootVolumeConfiguration>? rootVolumeConfiguration,
    pulumi.Output<String>? rootVolumeId,
    pulumi.Output<List<String>>? routeTableIds,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<bool>? skipFinalBackup,
    pulumi.Output<int>? storageCapacity,
    pulumi.Output<String>? storageType,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<int>? throughputCapacity,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? weeklyMaintenanceStartTime,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      automaticBackupRetentionDays = pulumi.Input.asOptionalInput<int>(automaticBackupRetentionDays),
      backupId = pulumi.Input.asOptionalInput<String>(backupId),
      copyTagsToBackups = pulumi.Input.asOptionalInput<bool>(copyTagsToBackups),
      copyTagsToVolumes = pulumi.Input.asOptionalInput<bool>(copyTagsToVolumes),
      dailyAutomaticBackupStartTime = pulumi.Input.asOptionalInput<String>(dailyAutomaticBackupStartTime),
      deleteOptions = pulumi.Input.asOptionalInput<List<String>>(deleteOptions),
      deploymentType = pulumi.Input.asOptionalInput<String>(deploymentType),
      diskIopsConfiguration = pulumi.Input.asOptionalInput<OpenZfsFileSystemDiskIopsConfiguration>(diskIopsConfiguration),
      dnsName = pulumi.Input.asOptionalInput<String>(dnsName),
      endpointIpAddress = pulumi.Input.asOptionalInput<String>(endpointIpAddress),
      endpointIpAddressRange = pulumi.Input.asOptionalInput<String>(endpointIpAddressRange),
      finalBackupTags = pulumi.Input.asOptionalInput<Map<String, String>>(finalBackupTags),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      networkInterfaceIds = pulumi.Input.asOptionalInput<List<String>>(networkInterfaceIds),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      preferredSubnetId = pulumi.Input.asOptionalInput<String>(preferredSubnetId),
      readCacheConfiguration = pulumi.Input.asOptionalInput<OpenZfsFileSystemReadCacheConfiguration>(readCacheConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      rootVolumeConfiguration = pulumi.Input.asOptionalInput<OpenZfsFileSystemRootVolumeConfiguration>(rootVolumeConfiguration),
      rootVolumeId = pulumi.Input.asOptionalInput<String>(rootVolumeId),
      routeTableIds = pulumi.Input.asOptionalInput<List<String>>(routeTableIds),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      skipFinalBackup = pulumi.Input.asOptionalInput<bool>(skipFinalBackup),
      storageCapacity = pulumi.Input.asOptionalInput<int>(storageCapacity),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      throughputCapacity = pulumi.Input.asOptionalInput<int>(throughputCapacity),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      weeklyMaintenanceStartTime = pulumi.Input.asOptionalInput<String>(weeklyMaintenanceStartTime);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      automaticBackupRetentionDays: map['automaticBackupRetentionDays'] == null ? null : pulumi.Output.create<int>(map['automaticBackupRetentionDays'] as int),
      backupId: map['backupId'] == null ? null : pulumi.Output.create<String>(map['backupId'] as String),
      copyTagsToBackups: map['copyTagsToBackups'] == null ? null : pulumi.Output.create<bool>(map['copyTagsToBackups'] as bool),
      copyTagsToVolumes: map['copyTagsToVolumes'] == null ? null : pulumi.Output.create<bool>(map['copyTagsToVolumes'] as bool),
      dailyAutomaticBackupStartTime: map['dailyAutomaticBackupStartTime'] == null ? null : pulumi.Output.create<String>(map['dailyAutomaticBackupStartTime'] as String),
      deleteOptions: map['deleteOptions'] == null ? null : pulumi.Output.create<List<String>>((map['deleteOptions'] as List).cast<String>()),
      deploymentType: map['deploymentType'] == null ? null : pulumi.Output.create<String>(map['deploymentType'] as String),
      diskIopsConfiguration: map['diskIopsConfiguration'] == null ? null : pulumi.Output.create<OpenZfsFileSystemDiskIopsConfiguration>(OpenZfsFileSystemDiskIopsConfiguration.fromMap((map['diskIopsConfiguration'] as Map).cast<String, dynamic>())),
      dnsName: map['dnsName'] == null ? null : pulumi.Output.create<String>(map['dnsName'] as String),
      endpointIpAddress: map['endpointIpAddress'] == null ? null : pulumi.Output.create<String>(map['endpointIpAddress'] as String),
      endpointIpAddressRange: map['endpointIpAddressRange'] == null ? null : pulumi.Output.create<String>(map['endpointIpAddressRange'] as String),
      finalBackupTags: map['finalBackupTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['finalBackupTags'] as Map).cast<String, String>()),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      networkInterfaceIds: map['networkInterfaceIds'] == null ? null : pulumi.Output.create<List<String>>((map['networkInterfaceIds'] as List).cast<String>()),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      preferredSubnetId: map['preferredSubnetId'] == null ? null : pulumi.Output.create<String>(map['preferredSubnetId'] as String),
      readCacheConfiguration: map['readCacheConfiguration'] == null ? null : pulumi.Output.create<OpenZfsFileSystemReadCacheConfiguration>(OpenZfsFileSystemReadCacheConfiguration.fromMap((map['readCacheConfiguration'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rootVolumeConfiguration: map['rootVolumeConfiguration'] == null ? null : pulumi.Output.create<OpenZfsFileSystemRootVolumeConfiguration>(OpenZfsFileSystemRootVolumeConfiguration.fromMap((map['rootVolumeConfiguration'] as Map).cast<String, dynamic>())),
      rootVolumeId: map['rootVolumeId'] == null ? null : pulumi.Output.create<String>(map['rootVolumeId'] as String),
      routeTableIds: map['routeTableIds'] == null ? null : pulumi.Output.create<List<String>>((map['routeTableIds'] as List).cast<String>()),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      skipFinalBackup: map['skipFinalBackup'] == null ? null : pulumi.Output.create<bool>(map['skipFinalBackup'] as bool),
      storageCapacity: map['storageCapacity'] == null ? null : pulumi.Output.create<int>(map['storageCapacity'] as int),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      throughputCapacity: map['throughputCapacity'] == null ? null : pulumi.Output.create<int>(map['throughputCapacity'] as int),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      weeklyMaintenanceStartTime: map['weeklyMaintenanceStartTime'] == null ? null : pulumi.Output.create<String>(map['weeklyMaintenanceStartTime'] as String),
    );
  }
}

