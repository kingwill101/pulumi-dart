// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lustre_file_system_data_read_cache_configuration.dart';
import 'lustre_file_system_log_configuration.dart';
import 'lustre_file_system_metadata_configuration.dart';
import 'lustre_file_system_root_squash_configuration.dart';

/// {@template pulumi_fsx_lustre_file_system_lustre_file_system_args_doc}
/// The set of arguments for LustreFileSystem.
/// {@endtemplate}
/// {@macro pulumi_fsx_lustre_file_system_lustre_file_system_args_doc}
class LustreFileSystemArgs {
  /// How Amazon FSx keeps your file and directory listings up to date as you add or modify objects in your linked S3 bucket. see [Auto Import Data Repo](https://docs.aws.amazon.com/fsx/latest/LustreGuide/autoimport-data-repo.html) for more details. Only supported on `PERSISTENT_1` deployment types.
  final pulumi.Input<String>? autoImportPolicy;
  /// The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days. only valid for `PERSISTENT_1` and `PERSISTENT_2` deployment_type.
  final pulumi.Input<int>? automaticBackupRetentionDays;
  /// The ID of the source backup to create the filesystem from.
  final pulumi.Input<String>? backupId;
  /// A boolean flag indicating whether tags for the file system should be copied to backups. Applicable for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. The default value is false.
  final pulumi.Input<bool>? copyTagsToBackups;
  /// A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. only valid for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Requires `automatic_backup_retention_days` to be set.
  final pulumi.Input<String>? dailyAutomaticBackupStartTime;
  /// Sets the data compression configuration for the file system. Valid values are `LZ4` and `NONE`. Default value is `NONE`. Unsetting this value reverts the compression type back to `NONE`.
  final pulumi.Input<String>? dataCompressionType;
  final pulumi.Input<LustreFileSystemDataReadCacheConfiguration>? dataReadCacheConfiguration;
  /// The filesystem deployment type. One of: `SCRATCH_1`, `SCRATCH_2`, `PERSISTENT_1`, `PERSISTENT_2`.
  final pulumi.Input<String>? deploymentType;
  /// The type of drive cache used by `PERSISTENT_1` filesystems that are provisioned with `HDD` storage_type. Required for `HDD` storage_type, set to either `READ` or `NONE`.
  final pulumi.Input<String>? driveCacheType;
  /// Adds support for Elastic Fabric Adapter (EFA) and GPUDirect Storage (GDS) to Lustre. This must be set at creation. If set this cannot be changed and this prevents changes to `per_unit_storage_throughput`. This is only supported when deployment_type is set to `PERSISTENT_2`, `metadata_configuration` is used, and an EFA-enabled security group is attached.
  final pulumi.Input<bool>? efaEnabled;
  /// S3 URI (with optional prefix) where the root of your Amazon FSx file system is exported. Can only be specified with `import_path` argument and the path must use the same Amazon S3 bucket as specified in `import_path`. Set equal to `import_path` to overwrite files on export. Defaults to `s3://{IMPORT BUCKET}/FSxLustre{CREATION TIMESTAMP}`. Only supported on `PERSISTENT_1` deployment types.
  final pulumi.Input<String>? exportPath;
  /// Sets the Lustre version for the file system that you're creating. Valid values are 2.10 for `SCRATCH_1`, `SCRATCH_2` and `PERSISTENT_1` deployment types. Valid values for 2.12 include all deployment types.
  final pulumi.Input<String>? fileSystemTypeVersion;
  /// A map of tags to apply to the file system's final backup.
  ///
  /// **Note:** If the filesystem uses a Scratch deployment type, final backup during delete will always be skipped and this argument will not be used even when set.
  final pulumi.Input<Map<String, String>>? finalBackupTags;
  /// S3 URI (with optional prefix) that you're using as the data repository for your FSx for Lustre file system. For example, `s3://example-bucket/optional-prefix/`. Only supported on `PERSISTENT_1` deployment types.
  final pulumi.Input<String>? importPath;
  /// For files imported from a data repository, this value determines the stripe count and maximum amount of data per file (in MiB) stored on a single physical disk. Can only be specified with `import_path` argument. Defaults to `1024`. Minimum of `1` and maximum of `512000`. Only supported on `PERSISTENT_1` deployment types.
  final pulumi.Input<int>? importedFileChunkSize;
  /// ARN for the KMS Key to encrypt the file system at rest, applicable for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Defaults to an AWS managed KMS Key.
  final pulumi.Input<String>? kmsKeyId;
  /// The Lustre logging configuration used when creating an Amazon FSx for Lustre file system. When logging is enabled, Lustre logs error and warning events for data repositories associated with your file system to Amazon CloudWatch Logs. See `log_configuration` Block for details.
  final pulumi.Input<LustreFileSystemLogConfiguration>? logConfiguration;
  /// The Lustre metadata configuration used when creating an Amazon FSx for Lustre file system. This can be used to specify a user provisioned metadata scale. This is only supported when `deployment_type` is set to `PERSISTENT_2`. See `metadata_configuration` Block for details.
  final pulumi.Input<LustreFileSystemMetadataConfiguration>? metadataConfiguration;
  /// Describes the amount of read and write throughput for each 1 tebibyte of storage, in MB/s/TiB, required for the `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Valid values for `PERSISTENT_1` deployment_type and `SSD` storage_type are 50, 100, 200. Valid values for `PERSISTENT_1` deployment_type and `HDD` storage_type are 12, 40. Valid values for `PERSISTENT_2` deployment_type and ` SSD` storage_type are 125, 250, 500, 1000.
  final pulumi.Input<int>? perUnitStorageThroughput;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Lustre root squash configuration used when creating an Amazon FSx for Lustre file system. When enabled, root squash restricts root-level access from clients that try to access your file system as a root user. See `root_squash_configuration` Block for details.
  final pulumi.Input<LustreFileSystemRootSquashConfiguration>? rootSquashConfiguration;
  /// A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `true`.
  ///
  /// **Note:** If the filesystem uses a Scratch deployment type, final backup during delete will always be skipped and this argument will not be used even when set.
  final pulumi.Input<bool>? skipFinalBackup;
  /// The storage capacity (GiB) of the file system. Minimum of `1200`. See more details at [Allowed values for Fsx storage capacity](https://docs.aws.amazon.com/fsx/latest/APIReference/API_CreateFileSystem.html#FSx-CreateFileSystem-request-StorageCapacity). Update is allowed only for `SCRATCH_2`, `PERSISTENT_1` and `PERSISTENT_2` deployment types, See more details at [Fsx Storage Capacity Update](https://docs.aws.amazon.com/fsx/latest/APIReference/API_UpdateFileSystem.html#FSx-UpdateFileSystem-request-StorageCapacity). Required when not creating filesystem for a backup.
  final pulumi.Input<int>? storageCapacity;
  /// The filesystem storage type. One of `SSD`, `HDD` or `INTELLIGENT_TIERING`, defaults to `SSD`. `HDD` is only supported on `PERSISTENT_1` deployment types. `INTELLIGENT_TIERING` requires `data_read_cache_configuration` and `metadata_configuration` to be set and is only supported for `PERSISTENT_2` deployment types.
  final pulumi.Input<String>? storageType;
  /// A list of IDs for the subnets that the file system will be accessible from. File systems currently support only one subnet. The file server is also launched in that subnet's Availability Zone.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> subnetIds;
  /// A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Throughput in MBps required for the `INTELLIGENT_TIERING` storage type. Must be 4000 or multiples of 4000.
  final pulumi.Input<int>? throughputCapacity;
  /// The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  final pulumi.Input<String>? weeklyMaintenanceStartTime;

  /// Creates a new [LustreFileSystemArgs].
  /// [autoImportPolicy] How Amazon FSx keeps your file and directory listings up to date as you add or modify objects in your linked S3 bucket. see [Auto Import Data Repo](https://docs.aws.amazon.com/fsx/latest/LustreGuide/autoimport-data-repo.html) for more details. Only supported on `PERSISTENT_1` deployment types.
  /// [automaticBackupRetentionDays] The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days. only valid for `PERSISTENT_1` and `PERSISTENT_2` deployment_type.
  /// [backupId] The ID of the source backup to create the filesystem from.
  /// [copyTagsToBackups] A boolean flag indicating whether tags for the file system should be copied to backups. Applicable for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. The default value is false.
  /// [dailyAutomaticBackupStartTime] A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. only valid for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Requires `automatic_backup_retention_days` to be set.
  /// [dataCompressionType] Sets the data compression configuration for the file system. Valid values are `LZ4` and `NONE`. Default value is `NONE`. Unsetting this value reverts the compression type back to `NONE`.
  /// [dataReadCacheConfiguration] Optional.
  /// [deploymentType] The filesystem deployment type. One of: `SCRATCH_1`, `SCRATCH_2`, `PERSISTENT_1`, `PERSISTENT_2`.
  /// [driveCacheType] The type of drive cache used by `PERSISTENT_1` filesystems that are provisioned with `HDD` storage_type. Required for `HDD` storage_type, set to either `READ` or `NONE`.
  /// [efaEnabled] Adds support for Elastic Fabric Adapter (EFA) and GPUDirect Storage (GDS) to Lustre. This must be set at creation. If set this cannot be changed and this prevents changes to `per_unit_storage_throughput`. This is only supported when deployment_type is set to `PERSISTENT_2`, `metadata_configuration` is used, and an EFA-enabled security group is attached.
  /// [exportPath] S3 URI (with optional prefix) where the root of your Amazon FSx file system is exported. Can only be specified with `import_path` argument and the path must use the same Amazon S3 bucket as specified in `import_path`. Set equal to `import_path` to overwrite files on export. Defaults to `s3://{IMPORT BUCKET}/FSxLustre{CREATION TIMESTAMP}`. Only supported on `PERSISTENT_1` deployment types.
  /// [fileSystemTypeVersion] Sets the Lustre version for the file system that you're creating. Valid values are 2.10 for `SCRATCH_1`, `SCRATCH_2` and `PERSISTENT_1` deployment types. Valid values for 2.12 include all deployment types.
  /// [finalBackupTags] A map of tags to apply to the file system's final backup.
  /// [importPath] S3 URI (with optional prefix) that you're using as the data repository for your FSx for Lustre file system. For example, `s3://example-bucket/optional-prefix/`. Only supported on `PERSISTENT_1` deployment types.
  /// [importedFileChunkSize] For files imported from a data repository, this value determines the stripe count and maximum amount of data per file (in MiB) stored on a single physical disk. Can only be specified with `import_path` argument. Defaults to `1024`. Minimum of `1` and maximum of `512000`. Only supported on `PERSISTENT_1` deployment types.
  /// [kmsKeyId] ARN for the KMS Key to encrypt the file system at rest, applicable for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Defaults to an AWS managed KMS Key.
  /// [logConfiguration] The Lustre logging configuration used when creating an Amazon FSx for Lustre file system. When logging is enabled, Lustre logs error and warning events for data repositories associated with your file system to Amazon CloudWatch Logs. See `log_configuration` Block for details.
  /// [metadataConfiguration] The Lustre metadata configuration used when creating an Amazon FSx for Lustre file system. This can be used to specify a user provisioned metadata scale. This is only supported when `deployment_type` is set to `PERSISTENT_2`. See `metadata_configuration` Block for details.
  /// [perUnitStorageThroughput] Describes the amount of read and write throughput for each 1 tebibyte of storage, in MB/s/TiB, required for the `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Valid values for `PERSISTENT_1` deployment_type and `SSD` storage_type are 50, 100, 200. Valid values for `PERSISTENT_1` deployment_type and `HDD` storage_type are 12, 40. Valid values for `PERSISTENT_2` deployment_type and ` SSD` storage_type are 125, 250, 500, 1000.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootSquashConfiguration] The Lustre root squash configuration used when creating an Amazon FSx for Lustre file system. When enabled, root squash restricts root-level access from clients that try to access your file system as a root user. See `root_squash_configuration` Block for details.
  /// [securityGroupIds] A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  /// [skipFinalBackup] When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `true`.
  /// [storageCapacity] The storage capacity (GiB) of the file system. Minimum of `1200`. See more details at [Allowed values for Fsx storage capacity](https://docs.aws.amazon.com/fsx/latest/APIReference/API_CreateFileSystem.html#FSx-CreateFileSystem-request-StorageCapacity). Update is allowed only for `SCRATCH_2`, `PERSISTENT_1` and `PERSISTENT_2` deployment types, See more details at [Fsx Storage Capacity Update](https://docs.aws.amazon.com/fsx/latest/APIReference/API_UpdateFileSystem.html#FSx-UpdateFileSystem-request-StorageCapacity). Required when not creating filesystem for a backup.
  /// [storageType] The filesystem storage type. One of `SSD`, `HDD` or `INTELLIGENT_TIERING`, defaults to `SSD`. `HDD` is only supported on `PERSISTENT_1` deployment types. `INTELLIGENT_TIERING` requires `data_read_cache_configuration` and `metadata_configuration` to be set and is only supported for `PERSISTENT_2` deployment types.
  /// [subnetIds] A list of IDs for the subnets that the file system will be accessible from. File systems currently support only one subnet. The file server is also launched in that subnet's Availability Zone.
  /// [tags] A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [throughputCapacity] Throughput in MBps required for the `INTELLIGENT_TIERING` storage type. Must be 4000 or multiples of 4000.
  /// [weeklyMaintenanceStartTime] The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  LustreFileSystemArgs({
    this.autoImportPolicy,
    this.automaticBackupRetentionDays,
    this.backupId,
    this.copyTagsToBackups,
    this.dailyAutomaticBackupStartTime,
    this.dataCompressionType,
    this.dataReadCacheConfiguration,
    this.deploymentType,
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
    this.perUnitStorageThroughput,
    this.region,
    this.rootSquashConfiguration,
    this.securityGroupIds,
    this.skipFinalBackup,
    this.storageCapacity,
    this.storageType,
    required this.subnetIds,
    this.tags,
    this.throughputCapacity,
    this.weeklyMaintenanceStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoImportPolicy': ?autoImportPolicy,
      'automaticBackupRetentionDays': ?automaticBackupRetentionDays,
      'backupId': ?backupId,
      'copyTagsToBackups': ?copyTagsToBackups,
      'dailyAutomaticBackupStartTime': ?dailyAutomaticBackupStartTime,
      'dataCompressionType': ?dataCompressionType,
      'dataReadCacheConfiguration': ?pulumi.Input.mapOptionalInputValue<LustreFileSystemDataReadCacheConfiguration, Map<String, dynamic>>(dataReadCacheConfiguration, (value) => value.toMap()),
      'deploymentType': ?deploymentType,
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
      'perUnitStorageThroughput': ?perUnitStorageThroughput,
      'region': ?region,
      'rootSquashConfiguration': ?pulumi.Input.mapOptionalInputValue<LustreFileSystemRootSquashConfiguration, Map<String, dynamic>>(rootSquashConfiguration, (value) => value.toMap()),
      'securityGroupIds': ?securityGroupIds,
      'skipFinalBackup': ?skipFinalBackup,
      'storageCapacity': ?storageCapacity,
      'storageType': ?storageType,
      'subnetIds': subnetIds,
      'tags': ?tags,
      'throughputCapacity': ?throughputCapacity,
      'weeklyMaintenanceStartTime': ?weeklyMaintenanceStartTime,
    };
  }

  factory LustreFileSystemArgs.fromMap(Map<String, dynamic> map) {
    return LustreFileSystemArgs(
      autoImportPolicy: map['autoImportPolicy'] == null ? null : ((map['autoImportPolicy'] as String).input()).input(),
      automaticBackupRetentionDays: map['automaticBackupRetentionDays'] == null ? null : ((map['automaticBackupRetentionDays'] as int).input()).input(),
      backupId: map['backupId'] == null ? null : ((map['backupId'] as String).input()).input(),
      copyTagsToBackups: map['copyTagsToBackups'] == null ? null : ((map['copyTagsToBackups'] as bool).input()).input(),
      dailyAutomaticBackupStartTime: map['dailyAutomaticBackupStartTime'] == null ? null : ((map['dailyAutomaticBackupStartTime'] as String).input()).input(),
      dataCompressionType: map['dataCompressionType'] == null ? null : ((map['dataCompressionType'] as String).input()).input(),
      dataReadCacheConfiguration: map['dataReadCacheConfiguration'] == null ? null : ((LustreFileSystemDataReadCacheConfiguration.fromMap((map['dataReadCacheConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      deploymentType: map['deploymentType'] == null ? null : ((map['deploymentType'] as String).input()).input(),
      driveCacheType: map['driveCacheType'] == null ? null : ((map['driveCacheType'] as String).input()).input(),
      efaEnabled: map['efaEnabled'] == null ? null : ((map['efaEnabled'] as bool).input()).input(),
      exportPath: map['exportPath'] == null ? null : ((map['exportPath'] as String).input()).input(),
      fileSystemTypeVersion: map['fileSystemTypeVersion'] == null ? null : ((map['fileSystemTypeVersion'] as String).input()).input(),
      finalBackupTags: map['finalBackupTags'] == null ? null : (((map['finalBackupTags'] as Map).cast<String, String>()).input()).input(),
      importPath: map['importPath'] == null ? null : ((map['importPath'] as String).input()).input(),
      importedFileChunkSize: map['importedFileChunkSize'] == null ? null : ((map['importedFileChunkSize'] as int).input()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      logConfiguration: map['logConfiguration'] == null ? null : ((LustreFileSystemLogConfiguration.fromMap((map['logConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      metadataConfiguration: map['metadataConfiguration'] == null ? null : ((LustreFileSystemMetadataConfiguration.fromMap((map['metadataConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      perUnitStorageThroughput: map['perUnitStorageThroughput'] == null ? null : ((map['perUnitStorageThroughput'] as int).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      rootSquashConfiguration: map['rootSquashConfiguration'] == null ? null : ((LustreFileSystemRootSquashConfiguration.fromMap((map['rootSquashConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : (((map['securityGroupIds'] as List).cast<String>()).input()).input(),
      skipFinalBackup: map['skipFinalBackup'] == null ? null : ((map['skipFinalBackup'] as bool).input()).input(),
      storageCapacity: map['storageCapacity'] == null ? null : ((map['storageCapacity'] as int).input()).input(),
      storageType: map['storageType'] == null ? null : ((map['storageType'] as String).input()).input(),
      subnetIds: (map['subnetIds'] as String).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      throughputCapacity: map['throughputCapacity'] == null ? null : ((map['throughputCapacity'] as int).input()).input(),
      weeklyMaintenanceStartTime: map['weeklyMaintenanceStartTime'] == null ? null : ((map['weeklyMaintenanceStartTime'] as String).input()).input(),
    );
  }
}

