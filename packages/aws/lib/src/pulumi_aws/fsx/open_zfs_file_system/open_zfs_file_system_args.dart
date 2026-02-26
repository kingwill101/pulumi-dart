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

  /// A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires <span pulumi-lang-nodejs="`automaticBackupRetentionDays`" pulumi-lang-dotnet="`AutomaticBackupRetentionDays`" pulumi-lang-go="`automaticBackupRetentionDays`" pulumi-lang-python="`automatic_backup_retention_days`" pulumi-lang-yaml="`automaticBackupRetentionDays`" pulumi-lang-java="`automaticBackupRetentionDays`">`automatic_backup_retention_days`</span> to be set.
  final Input<String>? dailyAutomaticBackupStartTime;

  /// List of delete options, which at present supports only one value that specifies whether to delete all child volumes and snapshots when the file system is deleted. Valid values: `DELETE_CHILD_VOLUMES_AND_SNAPSHOTS`.
  final Input<List<String>>? deleteOptions;

  /// Filesystem deployment type. See the [AWS API documentation](https://docs.aws.amazon.com/fsx/latest/APIReference/API_CreateFileSystemOpenZFSConfiguration.html#FSx-Type-CreateFileSystemOpenZFSConfiguration-DeploymentType) for a list of valid values.
  final Input<String> deploymentType;

  /// The SSD IOPS configuration for the Amazon FSx for OpenZFS file system. See <span pulumi-lang-nodejs="`diskIopsConfiguration`" pulumi-lang-dotnet="`DiskIopsConfiguration`" pulumi-lang-go="`diskIopsConfiguration`" pulumi-lang-python="`disk_iops_configuration`" pulumi-lang-yaml="`diskIopsConfiguration`" pulumi-lang-java="`diskIopsConfiguration`">`disk_iops_configuration`</span> Block for details.
  final Input<OpenZfsFileSystemDiskIopsConfiguration>? diskIopsConfiguration;

  /// (Multi-AZ only) Specifies the IP address range in which the endpoints to access your file system will be created.
  final Input<String>? endpointIpAddressRange;

  /// A map of tags to apply to the file system's final backup.
  final Input<Map<String, String>>? finalBackupTags;

  /// ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key.
  final Input<String>? kmsKeyId;

  /// (Multi-AZ only) Required when <span pulumi-lang-nodejs="`deploymentType`" pulumi-lang-dotnet="`DeploymentType`" pulumi-lang-go="`deploymentType`" pulumi-lang-python="`deployment_type`" pulumi-lang-yaml="`deploymentType`" pulumi-lang-java="`deploymentType`">`deployment_type`</span> is set to `MULTI_AZ_1`. This specifies the subnet in which you want the preferred file server to be located.
  final Input<String>? preferredSubnetId;

  /// Configuration block for optional provisioned SSD read cache on file systems that use the Intelligent-Tiering storage class. Required when <span pulumi-lang-nodejs="`storageType`" pulumi-lang-dotnet="`StorageType`" pulumi-lang-go="`storageType`" pulumi-lang-python="`storage_type`" pulumi-lang-yaml="`storageType`" pulumi-lang-java="`storageType`">`storage_type`</span> is set to `INTELLIGENT_TIERING`. See <span pulumi-lang-nodejs="`readCacheConfiguration`" pulumi-lang-dotnet="`ReadCacheConfiguration`" pulumi-lang-go="`readCacheConfiguration`" pulumi-lang-python="`read_cache_configuration`" pulumi-lang-yaml="`readCacheConfiguration`" pulumi-lang-java="`readCacheConfiguration`">`read_cache_configuration`</span> Block for details.
  final Input<OpenZfsFileSystemReadCacheConfiguration>? readCacheConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The configuration for the root volume of the file system. All other volumes are children or the root volume. See <span pulumi-lang-nodejs="`rootVolumeConfiguration`" pulumi-lang-dotnet="`RootVolumeConfiguration`" pulumi-lang-go="`rootVolumeConfiguration`" pulumi-lang-python="`root_volume_configuration`" pulumi-lang-yaml="`rootVolumeConfiguration`" pulumi-lang-java="`rootVolumeConfiguration`">`root_volume_configuration`</span> Block for details.
  final Input<OpenZfsFileSystemRootVolumeConfiguration>?
      rootVolumeConfiguration;

  /// (Multi-AZ only) Specifies the route tables in which Amazon FSx creates the rules for routing traffic to the correct file server. You should specify all virtual private cloud (VPC) route tables associated with the subnets in which your clients are located. By default, Amazon FSx selects your VPC's default route table.
  final Input<List<String>>? routeTableIds;

  /// A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  final Input<List<String>>? securityGroupIds;

  /// When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? skipFinalBackup;

  /// The storage capacity (GiB) of the file system. Valid values between <span pulumi-lang-nodejs="`64`" pulumi-lang-dotnet="`64`" pulumi-lang-go="`64`" pulumi-lang-python="`64`" pulumi-lang-yaml="`64`" pulumi-lang-java="`64`">`64`</span> and <span pulumi-lang-nodejs="`524288`" pulumi-lang-dotnet="`524288`" pulumi-lang-go="`524288`" pulumi-lang-python="`524288`" pulumi-lang-yaml="`524288`" pulumi-lang-java="`524288`">`524288`</span>. Required when <span pulumi-lang-nodejs="`storageType`" pulumi-lang-dotnet="`StorageType`" pulumi-lang-go="`storageType`" pulumi-lang-python="`storage_type`" pulumi-lang-yaml="`storageType`" pulumi-lang-java="`storageType`">`storage_type`</span> is set to `SSD`. Must not be set when <span pulumi-lang-nodejs="`storageType`" pulumi-lang-dotnet="`StorageType`" pulumi-lang-go="`storageType`" pulumi-lang-python="`storage_type`" pulumi-lang-yaml="`storageType`" pulumi-lang-java="`storageType`">`storage_type`</span> is set to `INTELLIGENT_TIERING`.
  final Input<int>? storageCapacity;

  /// The filesystem storage type. Valid values are `SSD` and `INTELLIGENT_TIERING`. `INTELLIGENT_TIERING` requires <span pulumi-lang-nodejs="`deploymentType`" pulumi-lang-dotnet="`DeploymentType`" pulumi-lang-go="`deploymentType`" pulumi-lang-python="`deployment_type`" pulumi-lang-yaml="`deploymentType`" pulumi-lang-java="`deploymentType`">`deployment_type`</span> to be `MULTI_AZ_1`.
  final Input<String>? storageType;

  /// A list of IDs for the subnets that the file system will be accessible from.
  final Input<List<String>> subnetIds;

  /// A map of tags to assign to the file system. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Throughput (MB/s) of the file system. Valid values depend on <span pulumi-lang-nodejs="`deploymentType`" pulumi-lang-dotnet="`DeploymentType`" pulumi-lang-go="`deploymentType`" pulumi-lang-python="`deployment_type`" pulumi-lang-yaml="`deploymentType`" pulumi-lang-java="`deploymentType`">`deployment_type`</span>. Must be one of <span pulumi-lang-nodejs="`64`" pulumi-lang-dotnet="`64`" pulumi-lang-go="`64`" pulumi-lang-python="`64`" pulumi-lang-yaml="`64`" pulumi-lang-java="`64`">`64`</span>, <span pulumi-lang-nodejs="`128`" pulumi-lang-dotnet="`128`" pulumi-lang-go="`128`" pulumi-lang-python="`128`" pulumi-lang-yaml="`128`" pulumi-lang-java="`128`">`128`</span>, <span pulumi-lang-nodejs="`256`" pulumi-lang-dotnet="`256`" pulumi-lang-go="`256`" pulumi-lang-python="`256`" pulumi-lang-yaml="`256`" pulumi-lang-java="`256`">`256`</span>, <span pulumi-lang-nodejs="`512`" pulumi-lang-dotnet="`512`" pulumi-lang-go="`512`" pulumi-lang-python="`512`" pulumi-lang-yaml="`512`" pulumi-lang-java="`512`">`512`</span>, <span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span>, <span pulumi-lang-nodejs="`2048`" pulumi-lang-dotnet="`2048`" pulumi-lang-go="`2048`" pulumi-lang-python="`2048`" pulumi-lang-yaml="`2048`" pulumi-lang-java="`2048`">`2048`</span>, <span pulumi-lang-nodejs="`3072`" pulumi-lang-dotnet="`3072`" pulumi-lang-go="`3072`" pulumi-lang-python="`3072`" pulumi-lang-yaml="`3072`" pulumi-lang-java="`3072`">`3072`</span>, <span pulumi-lang-nodejs="`4096`" pulumi-lang-dotnet="`4096`" pulumi-lang-go="`4096`" pulumi-lang-python="`4096`" pulumi-lang-yaml="`4096`" pulumi-lang-java="`4096`">`4096`</span> for `SINGLE_AZ_1`. Must be one of <span pulumi-lang-nodejs="`160`" pulumi-lang-dotnet="`160`" pulumi-lang-go="`160`" pulumi-lang-python="`160`" pulumi-lang-yaml="`160`" pulumi-lang-java="`160`">`160`</span>, <span pulumi-lang-nodejs="`320`" pulumi-lang-dotnet="`320`" pulumi-lang-go="`320`" pulumi-lang-python="`320`" pulumi-lang-yaml="`320`" pulumi-lang-java="`320`">`320`</span>, <span pulumi-lang-nodejs="`640`" pulumi-lang-dotnet="`640`" pulumi-lang-go="`640`" pulumi-lang-python="`640`" pulumi-lang-yaml="`640`" pulumi-lang-java="`640`">`640`</span>, <span pulumi-lang-nodejs="`1280`" pulumi-lang-dotnet="`1280`" pulumi-lang-go="`1280`" pulumi-lang-python="`1280`" pulumi-lang-yaml="`1280`" pulumi-lang-java="`1280`">`1280`</span>, <span pulumi-lang-nodejs="`2560`" pulumi-lang-dotnet="`2560`" pulumi-lang-go="`2560`" pulumi-lang-python="`2560`" pulumi-lang-yaml="`2560`" pulumi-lang-java="`2560`">`2560`</span>, <span pulumi-lang-nodejs="`3840`" pulumi-lang-dotnet="`3840`" pulumi-lang-go="`3840`" pulumi-lang-python="`3840`" pulumi-lang-yaml="`3840`" pulumi-lang-java="`3840`">`3840`</span>, <span pulumi-lang-nodejs="`5120`" pulumi-lang-dotnet="`5120`" pulumi-lang-go="`5120`" pulumi-lang-python="`5120`" pulumi-lang-yaml="`5120`" pulumi-lang-java="`5120`">`5120`</span>, <span pulumi-lang-nodejs="`7680`" pulumi-lang-dotnet="`7680`" pulumi-lang-go="`7680`" pulumi-lang-python="`7680`" pulumi-lang-yaml="`7680`" pulumi-lang-java="`7680`">`7680`</span>, <span pulumi-lang-nodejs="`10240`" pulumi-lang-dotnet="`10240`" pulumi-lang-go="`10240`" pulumi-lang-python="`10240`" pulumi-lang-yaml="`10240`" pulumi-lang-java="`10240`">`10240`</span> for `SINGLE_AZ_2`.
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
