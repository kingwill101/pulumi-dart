// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lustre_file_system_data_read_cache_configuration.dart';
import 'lustre_file_system_log_configuration.dart';
import 'lustre_file_system_metadata_configuration.dart';
import 'lustre_file_system_root_squash_configuration.dart';

/// Input properties used for looking up and filtering LustreFileSystem resources.
class LustreFileSystemState {
  /// ARN of the file system.
  final pulumi.Input<String?>? arn;
  /// How Amazon FSx keeps your file and directory listings up to date as you add or modify objects in your linked S3 bucket. see [Auto Import Data Repo](https://docs.aws.amazon.com/fsx/latest/LustreGuide/autoimport-data-repo.html) for more details. Only supported on `PERSISTENT_1` deployment types.
  final pulumi.Input<String?>? autoImportPolicy;
  /// Number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days. only valid for `PERSISTENT_1` and `PERSISTENT_2` deployment_type.
  final pulumi.Input<int?>? automaticBackupRetentionDays;
  /// ID of the source backup to create the filesystem from.
  final pulumi.Input<String?>? backupId;
  /// Whether to copy tags for the file system to backups. Applicable for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. The default value is false.
  final pulumi.Input<bool?>? copyTagsToBackups;
  /// Recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. only valid for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Requires `automaticBackupRetentionDays` to be set.
  final pulumi.Input<String?>? dailyAutomaticBackupStartTime;
  /// Sets the data compression configuration for the file system. Valid values are `LZ4` and `NONE`. Default value is `NONE`. Unsetting this value reverts the compression type back to `NONE`.
  final pulumi.Input<String?>? dataCompressionType;
  final pulumi.Input<LustreFileSystemDataReadCacheConfiguration?>? dataReadCacheConfiguration;
  /// Filesystem deployment type. One of: `SCRATCH_1`, `SCRATCH_2`, `PERSISTENT_1`, `PERSISTENT_2`.
  final pulumi.Input<String?>? deploymentType;
  /// DNS name for the file system, e.g., `fs-12345678.fsx.us-west-2.amazonaws.com`
  final pulumi.Input<String?>? dnsName;
  /// Type of drive cache used by `PERSISTENT_1` filesystems that are provisioned with `HDD` storage_type. Required for `HDD` storage_type, set to either `READ` or `NONE`.
  final pulumi.Input<String?>? driveCacheType;
  /// Adds support for Elastic Fabric Adapter (EFA) and GPUDirect Storage (GDS) to Lustre. This must be set at creation. If set this cannot be changed and this prevents changes to `perUnitStorageThroughput`. This is only supported when deploymentType is set to `PERSISTENT_2`, `metadataConfiguration` is used, and an EFA-enabled security group is attached.
  final pulumi.Input<bool?>? efaEnabled;
  /// S3 URI (with optional prefix) where the root of your Amazon FSx file system is exported. Can only be specified with `importPath` argument and the path must use the same Amazon S3 bucket as specified in `importPath`. Set equal to `importPath` to overwrite files on export. Defaults to `s3://{IMPORT BUCKET}/FSxLustre{CREATION TIMESTAMP}`. Only supported on `PERSISTENT_1` deployment types.
  final pulumi.Input<String?>? exportPath;
  /// Sets the Lustre version for the file system. Valid values are `2.10`, `2.12`, and `2.15`. When creating a file system, `2.10` is valid for `SCRATCH_1`, `SCRATCH_2`, and `PERSISTENT_1` deployment types; `2.12` and `2.15` are valid for all deployment types. Changing this value to a higher version triggers an in-place upgrade. Changing to a lower version forces resource replacement (destroy and recreate).
  final pulumi.Input<String?>? fileSystemTypeVersion;
  /// Map of tags to apply to the file system's final backup.
  ///
  /// **Note:** If the filesystem uses a Scratch deployment type, final backup during delete will always be skipped and this argument will not be used even when set.
  final pulumi.Input<Map<String, String>?>? finalBackupTags;
  /// S3 URI (with optional prefix) that you're using as the data repository for your FSx for Lustre file system. For example, `s3://example-bucket/optional-prefix/`. Only supported on `PERSISTENT_1` deployment types.
  final pulumi.Input<String?>? importPath;
  /// For files imported from a data repository, this value determines the stripe count and maximum amount of data per file (in MiB) stored on a single physical disk. Can only be specified with `importPath` argument. Defaults to `1024`. Minimum of `1` and maximum of `512000`. Only supported on `PERSISTENT_1` deployment types.
  final pulumi.Input<int?>? importedFileChunkSize;
  /// ARN for the KMS Key to encrypt the file system at rest, applicable for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Defaults to an AWS managed KMS Key.
  final pulumi.Input<String?>? kmsKeyId;
  /// Lustre logging configuration used when creating an Amazon FSx for Lustre file system. When logging is enabled, Lustre logs error and warning events for data repositories associated with your file system to Amazon CloudWatch Logs. See `logConfiguration` Block for details.
  final pulumi.Input<LustreFileSystemLogConfiguration?>? logConfiguration;
  /// Lustre metadata configuration used when creating an Amazon FSx for Lustre file system. This can be used to specify a user provisioned metadata scale. This is only supported when `deploymentType` is set to `PERSISTENT_2`. See `metadataConfiguration` Block for details.
  final pulumi.Input<LustreFileSystemMetadataConfiguration?>? metadataConfiguration;
  /// Value to be used when mounting the filesystem.
  final pulumi.Input<String?>? mountName;
  /// Set of Elastic Network Interface identifiers from which the file system is accessible. As explained in the [documentation](https://docs.aws.amazon.com/fsx/latest/LustreGuide/mounting-on-premises.html), the first network interface returned is the primary network interface.
  final pulumi.Input<List<String>?>? networkInterfaceIds;
  /// AWS account identifier that created the file system.
  final pulumi.Input<String?>? ownerId;
  /// Amount of read and write throughput for each 1 tebibyte of storage, in MB/s/TiB, required for the `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Valid values for `PERSISTENT_1` deploymentType and `SSD` storageType are 50, 100, 200. Valid values for `PERSISTENT_1` deploymentType and `HDD` storageType are 12, 40. Valid values for `PERSISTENT_2` deploymentType and ` SSD` storageType are 125, 250, 500, 1000.
  final pulumi.Input<int?>? perUnitStorageThroughput;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Lustre root squash configuration used when creating an Amazon FSx for Lustre file system. When enabled, root squash restricts root-level access from clients that try to access your file system as a root user. See `rootSquashConfiguration` Block for details.
  final pulumi.Input<LustreFileSystemRootSquashConfiguration?>? rootSquashConfiguration;
  /// List of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `true`.
  ///
  /// **Note:** If the filesystem uses a Scratch deployment type, final backup during delete will always be skipped and this argument will not be used even when set.
  final pulumi.Input<bool?>? skipFinalBackup;
  /// Storage capacity (GiB) of the file system. Minimum of `1200`. See more details at [Allowed values for Fsx storage capacity](https://docs.aws.amazon.com/fsx/latest/APIReference/API_CreateFileSystem.html#FSx-CreateFileSystem-request-StorageCapacity). Update is allowed only for `SCRATCH_2`, `PERSISTENT_1` and `PERSISTENT_2` deployment types, See more details at [Fsx Storage Capacity Update](https://docs.aws.amazon.com/fsx/latest/APIReference/API_UpdateFileSystem.html#FSx-UpdateFileSystem-request-StorageCapacity). Required when not creating filesystem for a backup.
  final pulumi.Input<int?>? storageCapacity;
  /// Filesystem storage type. One of `SSD`, `HDD` or `INTELLIGENT_TIERING`, defaults to `SSD`. `HDD` is only supported on `PERSISTENT_1` deployment types. `INTELLIGENT_TIERING` requires `dataReadCacheConfiguration` and `metadataConfiguration` to be set and is only supported for `PERSISTENT_2` deployment types.
  final pulumi.Input<String?>? storageType;
  /// List of IDs for the subnets that the file system will be accessible from. File systems currently support only one subnet. The file server is also launched in that subnet's Availability Zone.
  final pulumi.Input<String?>? subnetIds;
  /// Map of tags to assign to the file system. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Throughput in MBps required for the `INTELLIGENT_TIERING` storage type. Must be 4000 or multiples of 4000.
  final pulumi.Input<int?>? throughputCapacity;
  /// Identifier of the VPC for the file system.
  final pulumi.Input<String?>? vpcId;
  /// Preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  final pulumi.Input<String?>? weeklyMaintenanceStartTime;

  /// Creates a new [LustreFileSystemState].
  /// [arn] ARN of the file system.
  /// [autoImportPolicy] How Amazon FSx keeps your file and directory listings up to date as you add or modify objects in your linked S3 bucket. see [Auto Import Data Repo](https://docs.aws.amazon.com/fsx/latest/LustreGuide/autoimport-data-repo.html) for more details. Only supported on `PERSISTENT_1` deployment types.
  /// [automaticBackupRetentionDays] Number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days. only valid for `PERSISTENT_1` and `PERSISTENT_2` deployment_type.
  /// [backupId] ID of the source backup to create the filesystem from.
  /// [copyTagsToBackups] Whether to copy tags for the file system to backups. Applicable for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. The default value is false.
  /// [dailyAutomaticBackupStartTime] Recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. only valid for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Requires `automaticBackupRetentionDays` to be set.
  /// [dataCompressionType] Sets the data compression configuration for the file system. Valid values are `LZ4` and `NONE`. Default value is `NONE`. Unsetting this value reverts the compression type back to `NONE`.
  /// [dataReadCacheConfiguration] Optional.
  /// [deploymentType] Filesystem deployment type. One of: `SCRATCH_1`, `SCRATCH_2`, `PERSISTENT_1`, `PERSISTENT_2`.
  /// [dnsName] DNS name for the file system, e.g., `fs-12345678.fsx.us-west-2.amazonaws.com`
  /// [driveCacheType] Type of drive cache used by `PERSISTENT_1` filesystems that are provisioned with `HDD` storage_type. Required for `HDD` storage_type, set to either `READ` or `NONE`.
  /// [efaEnabled] Adds support for Elastic Fabric Adapter (EFA) and GPUDirect Storage (GDS) to Lustre. This must be set at creation. If set this cannot be changed and this prevents changes to `perUnitStorageThroughput`. This is only supported when deploymentType is set to `PERSISTENT_2`, `metadataConfiguration` is used, and an EFA-enabled security group is attached.
  /// [exportPath] S3 URI (with optional prefix) where the root of your Amazon FSx file system is exported. Can only be specified with `importPath` argument and the path must use the same Amazon S3 bucket as specified in `importPath`. Set equal to `importPath` to overwrite files on export. Defaults to `s3://{IMPORT BUCKET}/FSxLustre{CREATION TIMESTAMP}`. Only supported on `PERSISTENT_1` deployment types.
  /// [fileSystemTypeVersion] Sets the Lustre version for the file system. Valid values are `2.10`, `2.12`, and `2.15`. When creating a file system, `2.10` is valid for `SCRATCH_1`, `SCRATCH_2`, and `PERSISTENT_1` deployment types; `2.12` and `2.15` are valid for all deployment types. Changing this value to a higher version triggers an in-place upgrade. Changing to a lower version forces resource replacement (destroy and recreate).
  /// [finalBackupTags] Map of tags to apply to the file system's final backup.
  /// [importPath] S3 URI (with optional prefix) that you're using as the data repository for your FSx for Lustre file system. For example, `s3://example-bucket/optional-prefix/`. Only supported on `PERSISTENT_1` deployment types.
  /// [importedFileChunkSize] For files imported from a data repository, this value determines the stripe count and maximum amount of data per file (in MiB) stored on a single physical disk. Can only be specified with `importPath` argument. Defaults to `1024`. Minimum of `1` and maximum of `512000`. Only supported on `PERSISTENT_1` deployment types.
  /// [kmsKeyId] ARN for the KMS Key to encrypt the file system at rest, applicable for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Defaults to an AWS managed KMS Key.
  /// [logConfiguration] Lustre logging configuration used when creating an Amazon FSx for Lustre file system. When logging is enabled, Lustre logs error and warning events for data repositories associated with your file system to Amazon CloudWatch Logs. See `logConfiguration` Block for details.
  /// [metadataConfiguration] Lustre metadata configuration used when creating an Amazon FSx for Lustre file system. This can be used to specify a user provisioned metadata scale. This is only supported when `deploymentType` is set to `PERSISTENT_2`. See `metadataConfiguration` Block for details.
  /// [mountName] Value to be used when mounting the filesystem.
  /// [networkInterfaceIds] Set of Elastic Network Interface identifiers from which the file system is accessible. As explained in the [documentation](https://docs.aws.amazon.com/fsx/latest/LustreGuide/mounting-on-premises.html), the first network interface returned is the primary network interface.
  /// [ownerId] AWS account identifier that created the file system.
  /// [perUnitStorageThroughput] Amount of read and write throughput for each 1 tebibyte of storage, in MB/s/TiB, required for the `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Valid values for `PERSISTENT_1` deploymentType and `SSD` storageType are 50, 100, 200. Valid values for `PERSISTENT_1` deploymentType and `HDD` storageType are 12, 40. Valid values for `PERSISTENT_2` deploymentType and ` SSD` storageType are 125, 250, 500, 1000.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootSquashConfiguration] Lustre root squash configuration used when creating an Amazon FSx for Lustre file system. When enabled, root squash restricts root-level access from clients that try to access your file system as a root user. See `rootSquashConfiguration` Block for details.
  /// [securityGroupIds] List of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  /// [skipFinalBackup] When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `true`.
  /// [storageCapacity] Storage capacity (GiB) of the file system. Minimum of `1200`. See more details at [Allowed values for Fsx storage capacity](https://docs.aws.amazon.com/fsx/latest/APIReference/API_CreateFileSystem.html#FSx-CreateFileSystem-request-StorageCapacity). Update is allowed only for `SCRATCH_2`, `PERSISTENT_1` and `PERSISTENT_2` deployment types, See more details at [Fsx Storage Capacity Update](https://docs.aws.amazon.com/fsx/latest/APIReference/API_UpdateFileSystem.html#FSx-UpdateFileSystem-request-StorageCapacity). Required when not creating filesystem for a backup.
  /// [storageType] Filesystem storage type. One of `SSD`, `HDD` or `INTELLIGENT_TIERING`, defaults to `SSD`. `HDD` is only supported on `PERSISTENT_1` deployment types. `INTELLIGENT_TIERING` requires `dataReadCacheConfiguration` and `metadataConfiguration` to be set and is only supported for `PERSISTENT_2` deployment types.
  /// [subnetIds] List of IDs for the subnets that the file system will be accessible from. File systems currently support only one subnet. The file server is also launched in that subnet's Availability Zone.
  /// [tags] Map of tags to assign to the file system. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [throughputCapacity] Throughput in MBps required for the `INTELLIGENT_TIERING` storage type. Must be 4000 or multiples of 4000.
  /// [vpcId] Identifier of the VPC for the file system.
  /// [weeklyMaintenanceStartTime] Preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  const LustreFileSystemState({
    this.arn,
    this.autoImportPolicy,
    this.automaticBackupRetentionDays,
    this.backupId,
    this.copyTagsToBackups,
    this.dailyAutomaticBackupStartTime,
    this.dataCompressionType,
    this.dataReadCacheConfiguration,
    this.deploymentType,
    this.dnsName,
    this.driveCacheType,
    this.efaEnabled,
    this.exportPath,
    this.fileSystemTypeVersion,
    this.finalBackupTags,
    this.importPath,
    this.importedFileChunkSize,
    this.kmsKeyId,
    this.logConfiguration,
    this.metadataConfiguration,
    this.mountName,
    this.networkInterfaceIds,
    this.ownerId,
    this.perUnitStorageThroughput,
    this.region,
    this.rootSquashConfiguration,
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
      'autoImportPolicy': ?autoImportPolicy,
      'automaticBackupRetentionDays': ?automaticBackupRetentionDays,
      'backupId': ?backupId,
      'copyTagsToBackups': ?copyTagsToBackups,
      'dailyAutomaticBackupStartTime': ?dailyAutomaticBackupStartTime,
      'dataCompressionType': ?dataCompressionType,
      'dataReadCacheConfiguration': ?pulumi.Input.mapOptionalInputValue<LustreFileSystemDataReadCacheConfiguration, Map<String, dynamic>>(dataReadCacheConfiguration, (value) => value.toMap()),
      'deploymentType': ?deploymentType,
      'dnsName': ?dnsName,
      'driveCacheType': ?driveCacheType,
      'efaEnabled': ?efaEnabled,
      'exportPath': ?exportPath,
      'fileSystemTypeVersion': ?fileSystemTypeVersion,
      'finalBackupTags': ?finalBackupTags,
      'importPath': ?importPath,
      'importedFileChunkSize': ?importedFileChunkSize,
      'kmsKeyId': ?kmsKeyId,
      'logConfiguration': ?pulumi.Input.mapOptionalInputValue<LustreFileSystemLogConfiguration, Map<String, dynamic>>(logConfiguration, (value) => value.toMap()),
      'metadataConfiguration': ?pulumi.Input.mapOptionalInputValue<LustreFileSystemMetadataConfiguration, Map<String, dynamic>>(metadataConfiguration, (value) => value.toMap()),
      'mountName': ?mountName,
      'networkInterfaceIds': ?networkInterfaceIds,
      'ownerId': ?ownerId,
      'perUnitStorageThroughput': ?perUnitStorageThroughput,
      'region': ?region,
      'rootSquashConfiguration': ?pulumi.Input.mapOptionalInputValue<LustreFileSystemRootSquashConfiguration, Map<String, dynamic>>(rootSquashConfiguration, (value) => value.toMap()),
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

  factory LustreFileSystemState.fromMap(Map<String, dynamic> map) {
    return LustreFileSystemState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoImportPolicy: (() { final guardedValue = map['autoImportPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      automaticBackupRetentionDays: (() { final guardedValue = map['automaticBackupRetentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      backupId: (() { final guardedValue = map['backupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      copyTagsToBackups: (() { final guardedValue = map['copyTagsToBackups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dailyAutomaticBackupStartTime: (() { final guardedValue = map['dailyAutomaticBackupStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataCompressionType: (() { final guardedValue = map['dataCompressionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataReadCacheConfiguration: (() { final guardedValue = map['dataReadCacheConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LustreFileSystemDataReadCacheConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deploymentType: (() { final guardedValue = map['deploymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      driveCacheType: (() { final guardedValue = map['driveCacheType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      efaEnabled: (() { final guardedValue = map['efaEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exportPath: (() { final guardedValue = map['exportPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemTypeVersion: (() { final guardedValue = map['fileSystemTypeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      finalBackupTags: (() { final guardedValue = map['finalBackupTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      importPath: (() { final guardedValue = map['importPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      importedFileChunkSize: (() { final guardedValue = map['importedFileChunkSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logConfiguration: (() { final guardedValue = map['logConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LustreFileSystemLogConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metadataConfiguration: (() { final guardedValue = map['metadataConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LustreFileSystemMetadataConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mountName: (() { final guardedValue = map['mountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceIds: (() { final guardedValue = map['networkInterfaceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      perUnitStorageThroughput: (() { final guardedValue = map['perUnitStorageThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootSquashConfiguration: (() { final guardedValue = map['rootSquashConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LustreFileSystemRootSquashConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      skipFinalBackup: (() { final guardedValue = map['skipFinalBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageCapacity: (() { final guardedValue = map['storageCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      throughputCapacity: (() { final guardedValue = map['throughputCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weeklyMaintenanceStartTime: (() { final guardedValue = map['weeklyMaintenanceStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
