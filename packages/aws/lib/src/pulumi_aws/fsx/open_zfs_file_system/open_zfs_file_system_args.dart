// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../open_zfs_file_system_disk_iops_configuration/open_zfs_file_system_disk_iops_configuration.dart';
import '../open_zfs_file_system_read_cache_configuration/open_zfs_file_system_read_cache_configuration.dart';
import '../open_zfs_file_system_root_volume_configuration/open_zfs_file_system_root_volume_configuration.dart';

/// The set of arguments for OpenZfsFileSystem.
class OpenZfsFileSystemArgs {
  /// The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days.
  final Input<int>? automaticBackupRetentionDays;

  /// The ID of the source backup to create the filesystem from.
  final Input<String>? backupId;

  /// A boolean flag indicating whether tags for the file system should be copied to backups. The default value is false.
  final Input<bool>? copyTagsToBackups;

  /// A boolean flag indicating whether tags for the file system should be copied to snapshots. The default value is false.
  final Input<bool>? copyTagsToVolumes;

  /// A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires `automatic_backup_retention_days` to be set.
  final Input<String>? dailyAutomaticBackupStartTime;

  /// List of delete options, which at present supports only one value that specifies whether to delete all child volumes and snapshots when the file system is deleted. Valid values: `DELETE_CHILD_VOLUMES_AND_SNAPSHOTS`.
  final Input<List<String>>? deleteOptions;

  /// Filesystem deployment type. See the [AWS API documentation](https://docs.aws.amazon.com/fsx/latest/APIReference/API_CreateFileSystemOpenZFSConfiguration.html#FSx-Type-CreateFileSystemOpenZFSConfiguration-DeploymentType) for a list of valid values.
  final Input<String> deploymentType;

  /// The SSD IOPS configuration for the Amazon FSx for OpenZFS file system. See `disk_iops_configuration` Block for details.
  final Input<OpenZfsFileSystemDiskIopsConfiguration>? diskIopsConfiguration;

  /// (Multi-AZ only) Specifies the IP address range in which the endpoints to access your file system will be created.
  final Input<String>? endpointIpAddressRange;

  /// A map of tags to apply to the file system's final backup.
  final Input<Map<String, String>>? finalBackupTags;

  /// ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key.
  final Input<String>? kmsKeyId;

  /// (Multi-AZ only) Required when `deployment_type` is set to `MULTI_AZ_1`. This specifies the subnet in which you want the preferred file server to be located.
  final Input<String>? preferredSubnetId;

  /// Configuration block for optional provisioned SSD read cache on file systems that use the Intelligent-Tiering storage class. Required when `storage_type` is set to `INTELLIGENT_TIERING`. See `read_cache_configuration` Block for details.
  final Input<OpenZfsFileSystemReadCacheConfiguration>? readCacheConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The configuration for the root volume of the file system. All other volumes are children or the root volume. See `root_volume_configuration` Block for details.
  final Input<OpenZfsFileSystemRootVolumeConfiguration>?
      rootVolumeConfiguration;

  /// (Multi-AZ only) Specifies the route tables in which Amazon FSx creates the rules for routing traffic to the correct file server. You should specify all virtual private cloud (VPC) route tables associated with the subnets in which your clients are located. By default, Amazon FSx selects your VPC's default route table.
  final Input<List<String>>? routeTableIds;

  /// A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  final Input<List<String>>? securityGroupIds;

  /// When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  final Input<bool>? skipFinalBackup;

  /// The storage capacity (GiB) of the file system. Valid values between `64` and `524288`. Required when `storage_type` is set to `SSD`. Must not be set when `storage_type` is set to `INTELLIGENT_TIERING`.
  final Input<int>? storageCapacity;

  /// The filesystem storage type. Valid values are `SSD` and `INTELLIGENT_TIERING`. `INTELLIGENT_TIERING` requires `deployment_type` to be `MULTI_AZ_1`.
  final Input<String>? storageType;

  /// A list of IDs for the subnets that the file system will be accessible from.
  final Input<List<String>> subnetIds;

  /// A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Throughput (MB/s) of the file system. Valid values depend on `deployment_type`. Must be one of `64`, `128`, `256`, `512`, `1024`, `2048`, `3072`, `4096` for `SINGLE_AZ_1`. Must be one of `160`, `320`, `640`, `1280`, `2560`, `3840`, `5120`, `7680`, `10240` for `SINGLE_AZ_2`.
  ///
  /// The following arguments are optional:
  final Input<int> throughputCapacity;

  /// The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  final Input<String>? weeklyMaintenanceStartTime;

  OpenZfsFileSystemArgs({
    this.automaticBackupRetentionDays,
    this.backupId,
    this.copyTagsToBackups,
    this.copyTagsToVolumes,
    this.dailyAutomaticBackupStartTime,
    this.deleteOptions,
    required this.deploymentType,
    this.diskIopsConfiguration,
    this.endpointIpAddressRange,
    this.finalBackupTags,
    this.kmsKeyId,
    this.preferredSubnetId,
    this.readCacheConfiguration,
    this.region,
    this.rootVolumeConfiguration,
    this.routeTableIds,
    this.securityGroupIds,
    this.skipFinalBackup,
    this.storageCapacity,
    this.storageType,
    required this.subnetIds,
    this.tags,
    required this.throughputCapacity,
    this.weeklyMaintenanceStartTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final automaticBackupRetentionDaysValue = automaticBackupRetentionDays;
    if (automaticBackupRetentionDaysValue != null) {
      map['automaticBackupRetentionDays'] = automaticBackupRetentionDaysValue;
    }
    final backupIdValue = backupId;
    if (backupIdValue != null) {
      map['backupId'] = backupIdValue;
    }
    final copyTagsToBackupsValue = copyTagsToBackups;
    if (copyTagsToBackupsValue != null) {
      map['copyTagsToBackups'] = copyTagsToBackupsValue;
    }
    final copyTagsToVolumesValue = copyTagsToVolumes;
    if (copyTagsToVolumesValue != null) {
      map['copyTagsToVolumes'] = copyTagsToVolumesValue;
    }
    final dailyAutomaticBackupStartTimeValue = dailyAutomaticBackupStartTime;
    if (dailyAutomaticBackupStartTimeValue != null) {
      map['dailyAutomaticBackupStartTime'] = dailyAutomaticBackupStartTimeValue;
    }
    final deleteOptionsValue = deleteOptions;
    if (deleteOptionsValue != null) {
      map['deleteOptions'] = deleteOptionsValue;
    }
    map['deploymentType'] = deploymentType;
    final diskIopsConfigurationValue = diskIopsConfiguration;
    if (diskIopsConfigurationValue != null) {
      map['diskIopsConfiguration'] = Input.mapOptionalInputValue<
              OpenZfsFileSystemDiskIopsConfiguration, Map<String, dynamic>>(
          diskIopsConfigurationValue, (value) => value.toMap());
    }
    final endpointIpAddressRangeValue = endpointIpAddressRange;
    if (endpointIpAddressRangeValue != null) {
      map['endpointIpAddressRange'] = endpointIpAddressRangeValue;
    }
    final finalBackupTagsValue = finalBackupTags;
    if (finalBackupTagsValue != null) {
      map['finalBackupTags'] = finalBackupTagsValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final preferredSubnetIdValue = preferredSubnetId;
    if (preferredSubnetIdValue != null) {
      map['preferredSubnetId'] = preferredSubnetIdValue;
    }
    final readCacheConfigurationValue = readCacheConfiguration;
    if (readCacheConfigurationValue != null) {
      map['readCacheConfiguration'] = Input.mapOptionalInputValue<
              OpenZfsFileSystemReadCacheConfiguration, Map<String, dynamic>>(
          readCacheConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rootVolumeConfigurationValue = rootVolumeConfiguration;
    if (rootVolumeConfigurationValue != null) {
      map['rootVolumeConfiguration'] = Input.mapOptionalInputValue<
              OpenZfsFileSystemRootVolumeConfiguration, Map<String, dynamic>>(
          rootVolumeConfigurationValue, (value) => value.toMap());
    }
    final routeTableIdsValue = routeTableIds;
    if (routeTableIdsValue != null) {
      map['routeTableIds'] = routeTableIdsValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    final skipFinalBackupValue = skipFinalBackup;
    if (skipFinalBackupValue != null) {
      map['skipFinalBackup'] = skipFinalBackupValue;
    }
    final storageCapacityValue = storageCapacity;
    if (storageCapacityValue != null) {
      map['storageCapacity'] = storageCapacityValue;
    }
    final storageTypeValue = storageType;
    if (storageTypeValue != null) {
      map['storageType'] = storageTypeValue;
    }
    map['subnetIds'] = subnetIds;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['throughputCapacity'] = throughputCapacity;
    final weeklyMaintenanceStartTimeValue = weeklyMaintenanceStartTime;
    if (weeklyMaintenanceStartTimeValue != null) {
      map['weeklyMaintenanceStartTime'] = weeklyMaintenanceStartTimeValue;
    }
    return map;
  }

  factory OpenZfsFileSystemArgs.fromMap(Map<String, dynamic> map) {
    return OpenZfsFileSystemArgs(
      automaticBackupRetentionDays:
          Input.asOptionalInput<int>(map['automaticBackupRetentionDays']),
      backupId: Input.asOptionalInput<String>(map['backupId']),
      copyTagsToBackups: Input.asOptionalInput<bool>(map['copyTagsToBackups']),
      copyTagsToVolumes: Input.asOptionalInput<bool>(map['copyTagsToVolumes']),
      dailyAutomaticBackupStartTime:
          Input.asOptionalInput<String>(map['dailyAutomaticBackupStartTime']),
      deleteOptions: Input.asOptionalInput<List<String>>(map['deleteOptions']),
      deploymentType: Input.asInput<String>(map['deploymentType']),
      diskIopsConfiguration:
          Input.asOptionalInput<OpenZfsFileSystemDiskIopsConfiguration>(
              map['diskIopsConfiguration']),
      endpointIpAddressRange:
          Input.asOptionalInput<String>(map['endpointIpAddressRange']),
      finalBackupTags:
          Input.asOptionalInput<Map<String, String>>(map['finalBackupTags']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      preferredSubnetId:
          Input.asOptionalInput<String>(map['preferredSubnetId']),
      readCacheConfiguration:
          Input.asOptionalInput<OpenZfsFileSystemReadCacheConfiguration>(
              map['readCacheConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      rootVolumeConfiguration:
          Input.asOptionalInput<OpenZfsFileSystemRootVolumeConfiguration>(
              map['rootVolumeConfiguration']),
      routeTableIds: Input.asOptionalInput<List<String>>(map['routeTableIds']),
      securityGroupIds:
          Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      skipFinalBackup: Input.asOptionalInput<bool>(map['skipFinalBackup']),
      storageCapacity: Input.asOptionalInput<int>(map['storageCapacity']),
      storageType: Input.asOptionalInput<String>(map['storageType']),
      subnetIds: Input.asInput<List<String>>(map['subnetIds']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      throughputCapacity: Input.asInput<int>(map['throughputCapacity']),
      weeklyMaintenanceStartTime:
          Input.asOptionalInput<String>(map['weeklyMaintenanceStartTime']),
    );
  }
}
