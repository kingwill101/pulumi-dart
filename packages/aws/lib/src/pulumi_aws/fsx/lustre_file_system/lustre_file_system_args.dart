// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../lustre_file_system_data_read_cache_configuration/lustre_file_system_data_read_cache_configuration.dart';
import '../lustre_file_system_log_configuration/lustre_file_system_log_configuration.dart';
import '../lustre_file_system_metadata_configuration/lustre_file_system_metadata_configuration.dart';
import '../lustre_file_system_root_squash_configuration/lustre_file_system_root_squash_configuration.dart';

/// The set of arguments for LustreFileSystem.
class LustreFileSystemArgs {
  /// How Amazon FSx keeps your file and directory listings up to date as you add or modify objects in your linked S3 bucket. see [Auto Import Data Repo](https://docs.aws.amazon.com/fsx/latest/LustreGuide/autoimport-data-repo.html) for more details. Only supported on `PERSISTENT_1` deployment types.
  final Input<String>? autoImportPolicy;

  /// The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days. only valid for `PERSISTENT_1` and `PERSISTENT_2` deployment_type.
  final Input<int>? automaticBackupRetentionDays;

  /// The ID of the source backup to create the filesystem from.
  final Input<String>? backupId;

  /// A boolean flag indicating whether tags for the file system should be copied to backups. Applicable for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. The default value is false.
  final Input<bool>? copyTagsToBackups;

  /// A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. only valid for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Requires `automatic_backup_retention_days` to be set.
  final Input<String>? dailyAutomaticBackupStartTime;

  /// Sets the data compression configuration for the file system. Valid values are `LZ4` and `NONE`. Default value is `NONE`. Unsetting this value reverts the compression type back to `NONE`.
  final Input<String>? dataCompressionType;
  final Input<LustreFileSystemDataReadCacheConfiguration>?
      dataReadCacheConfiguration;

  /// The filesystem deployment type. One of: `SCRATCH_1`, `SCRATCH_2`, `PERSISTENT_1`, `PERSISTENT_2`.
  final Input<String>? deploymentType;

  /// The type of drive cache used by `PERSISTENT_1` filesystems that are provisioned with `HDD` storage_type. Required for `HDD` storage_type, set to either `READ` or `NONE`.
  final Input<String>? driveCacheType;

  /// Adds support for Elastic Fabric Adapter (EFA) and GPUDirect Storage (GDS) to Lustre. This must be set at creation. If set this cannot be changed and this prevents changes to `per_unit_storage_throughput`. This is only supported when deployment_type is set to `PERSISTENT_2`, `metadata_configuration` is used, and an EFA-enabled security group is attached.
  final Input<bool>? efaEnabled;

  /// S3 URI (with optional prefix) where the root of your Amazon FSx file system is exported. Can only be specified with `import_path` argument and the path must use the same Amazon S3 bucket as specified in `import_path`. Set equal to `import_path` to overwrite files on export. Defaults to `s3://{IMPORT BUCKET}/FSxLustre{CREATION TIMESTAMP}`. Only supported on `PERSISTENT_1` deployment types.
  final Input<String>? exportPath;

  /// Sets the Lustre version for the file system that you're creating. Valid values are 2.10 for `SCRATCH_1`, `SCRATCH_2` and `PERSISTENT_1` deployment types. Valid values for 2.12 include all deployment types.
  final Input<String>? fileSystemTypeVersion;

  /// A map of tags to apply to the file system's final backup.
  ///
  /// **Note:** If the filesystem uses a Scratch deployment type, final backup during delete will always be skipped and this argument will not be used even when set.
  final Input<Map<String, String>>? finalBackupTags;

  /// S3 URI (with optional prefix) that you're using as the data repository for your FSx for Lustre file system. For example, `s3://example-bucket/optional-prefix/`. Only supported on `PERSISTENT_1` deployment types.
  final Input<String>? importPath;

  /// For files imported from a data repository, this value determines the stripe count and maximum amount of data per file (in MiB) stored on a single physical disk. Can only be specified with `import_path` argument. Defaults to `1024`. Minimum of `1` and maximum of `512000`. Only supported on `PERSISTENT_1` deployment types.
  final Input<int>? importedFileChunkSize;

  /// ARN for the KMS Key to encrypt the file system at rest, applicable for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Defaults to an AWS managed KMS Key.
  final Input<String>? kmsKeyId;

  /// The Lustre logging configuration used when creating an Amazon FSx for Lustre file system. When logging is enabled, Lustre logs error and warning events for data repositories associated with your file system to Amazon CloudWatch Logs. See `log_configuration` Block for details.
  final Input<LustreFileSystemLogConfiguration>? logConfiguration;

  /// The Lustre metadata configuration used when creating an Amazon FSx for Lustre file system. This can be used to specify a user provisioned metadata scale. This is only supported when `deployment_type` is set to `PERSISTENT_2`. See `metadata_configuration` Block for details.
  final Input<LustreFileSystemMetadataConfiguration>? metadataConfiguration;

  /// Describes the amount of read and write throughput for each 1 tebibyte of storage, in MB/s/TiB, required for the `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Valid values for `PERSISTENT_1` deployment_type and `SSD` storage_type are 50, 100, 200. Valid values for `PERSISTENT_1` deployment_type and `HDD` storage_type are 12, 40. Valid values for `PERSISTENT_2` deployment_type and ` SSD` storage_type are 125, 250, 500, 1000.
  final Input<int>? perUnitStorageThroughput;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Lustre root squash configuration used when creating an Amazon FSx for Lustre file system. When enabled, root squash restricts root-level access from clients that try to access your file system as a root user. See `root_squash_configuration` Block for details.
  final Input<LustreFileSystemRootSquashConfiguration>? rootSquashConfiguration;

  /// A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  final Input<List<String>>? securityGroupIds;

  /// When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `true`.
  ///
  /// **Note:** If the filesystem uses a Scratch deployment type, final backup during delete will always be skipped and this argument will not be used even when set.
  final Input<bool>? skipFinalBackup;

  /// The storage capacity (GiB) of the file system. Minimum of `1200`. See more details at [Allowed values for Fsx storage capacity](https://docs.aws.amazon.com/fsx/latest/APIReference/API_CreateFileSystem.html#FSx-CreateFileSystem-request-StorageCapacity). Update is allowed only for `SCRATCH_2`, `PERSISTENT_1` and `PERSISTENT_2` deployment types, See more details at [Fsx Storage Capacity Update](https://docs.aws.amazon.com/fsx/latest/APIReference/API_UpdateFileSystem.html#FSx-UpdateFileSystem-request-StorageCapacity). Required when not creating filesystem for a backup.
  final Input<int>? storageCapacity;

  /// The filesystem storage type. One of `SSD`, `HDD` or `INTELLIGENT_TIERING`, defaults to `SSD`. `HDD` is only supported on `PERSISTENT_1` deployment types. `INTELLIGENT_TIERING` requires `data_read_cache_configuration` and `metadata_configuration` to be set and is only supported for `PERSISTENT_2` deployment types.
  final Input<String>? storageType;

  /// A list of IDs for the subnets that the file system will be accessible from. File systems currently support only one subnet. The file server is also launched in that subnet's Availability Zone.
  ///
  /// The following arguments are optional:
  final Input<String> subnetIds;

  /// A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Throughput in MBps required for the `INTELLIGENT_TIERING` storage type. Must be 4000 or multiples of 4000.
  final Input<int>? throughputCapacity;

  /// The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  final Input<String>? weeklyMaintenanceStartTime;

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
    final map = <String, dynamic>{};
    final autoImportPolicyValue = autoImportPolicy;
    if (autoImportPolicyValue != null) {
      map['autoImportPolicy'] = autoImportPolicyValue;
    }
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
    final dailyAutomaticBackupStartTimeValue = dailyAutomaticBackupStartTime;
    if (dailyAutomaticBackupStartTimeValue != null) {
      map['dailyAutomaticBackupStartTime'] = dailyAutomaticBackupStartTimeValue;
    }
    final dataCompressionTypeValue = dataCompressionType;
    if (dataCompressionTypeValue != null) {
      map['dataCompressionType'] = dataCompressionTypeValue;
    }
    final dataReadCacheConfigurationValue = dataReadCacheConfiguration;
    if (dataReadCacheConfigurationValue != null) {
      map['dataReadCacheConfiguration'] = Input.mapOptionalInputValue<
              LustreFileSystemDataReadCacheConfiguration, Map<String, dynamic>>(
          dataReadCacheConfigurationValue, (value) => value.toMap());
    }
    final deploymentTypeValue = deploymentType;
    if (deploymentTypeValue != null) {
      map['deploymentType'] = deploymentTypeValue;
    }
    final driveCacheTypeValue = driveCacheType;
    if (driveCacheTypeValue != null) {
      map['driveCacheType'] = driveCacheTypeValue;
    }
    final efaEnabledValue = efaEnabled;
    if (efaEnabledValue != null) {
      map['efaEnabled'] = efaEnabledValue;
    }
    final exportPathValue = exportPath;
    if (exportPathValue != null) {
      map['exportPath'] = exportPathValue;
    }
    final fileSystemTypeVersionValue = fileSystemTypeVersion;
    if (fileSystemTypeVersionValue != null) {
      map['fileSystemTypeVersion'] = fileSystemTypeVersionValue;
    }
    final finalBackupTagsValue = finalBackupTags;
    if (finalBackupTagsValue != null) {
      map['finalBackupTags'] = finalBackupTagsValue;
    }
    final importPathValue = importPath;
    if (importPathValue != null) {
      map['importPath'] = importPathValue;
    }
    final importedFileChunkSizeValue = importedFileChunkSize;
    if (importedFileChunkSizeValue != null) {
      map['importedFileChunkSize'] = importedFileChunkSizeValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final logConfigurationValue = logConfiguration;
    if (logConfigurationValue != null) {
      map['logConfiguration'] = Input.mapOptionalInputValue<
              LustreFileSystemLogConfiguration, Map<String, dynamic>>(
          logConfigurationValue, (value) => value.toMap());
    }
    final metadataConfigurationValue = metadataConfiguration;
    if (metadataConfigurationValue != null) {
      map['metadataConfiguration'] = Input.mapOptionalInputValue<
              LustreFileSystemMetadataConfiguration, Map<String, dynamic>>(
          metadataConfigurationValue, (value) => value.toMap());
    }
    final perUnitStorageThroughputValue = perUnitStorageThroughput;
    if (perUnitStorageThroughputValue != null) {
      map['perUnitStorageThroughput'] = perUnitStorageThroughputValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rootSquashConfigurationValue = rootSquashConfiguration;
    if (rootSquashConfigurationValue != null) {
      map['rootSquashConfiguration'] = Input.mapOptionalInputValue<
              LustreFileSystemRootSquashConfiguration, Map<String, dynamic>>(
          rootSquashConfigurationValue, (value) => value.toMap());
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
    final throughputCapacityValue = throughputCapacity;
    if (throughputCapacityValue != null) {
      map['throughputCapacity'] = throughputCapacityValue;
    }
    final weeklyMaintenanceStartTimeValue = weeklyMaintenanceStartTime;
    if (weeklyMaintenanceStartTimeValue != null) {
      map['weeklyMaintenanceStartTime'] = weeklyMaintenanceStartTimeValue;
    }
    return map;
  }

  factory LustreFileSystemArgs.fromMap(Map<String, dynamic> map) {
    return LustreFileSystemArgs(
      autoImportPolicy: Input.asOptionalInput<String>(map['autoImportPolicy']),
      automaticBackupRetentionDays:
          Input.asOptionalInput<int>(map['automaticBackupRetentionDays']),
      backupId: Input.asOptionalInput<String>(map['backupId']),
      copyTagsToBackups: Input.asOptionalInput<bool>(map['copyTagsToBackups']),
      dailyAutomaticBackupStartTime:
          Input.asOptionalInput<String>(map['dailyAutomaticBackupStartTime']),
      dataCompressionType:
          Input.asOptionalInput<String>(map['dataCompressionType']),
      dataReadCacheConfiguration:
          Input.asOptionalInput<LustreFileSystemDataReadCacheConfiguration>(
              map['dataReadCacheConfiguration']),
      deploymentType: Input.asOptionalInput<String>(map['deploymentType']),
      driveCacheType: Input.asOptionalInput<String>(map['driveCacheType']),
      efaEnabled: Input.asOptionalInput<bool>(map['efaEnabled']),
      exportPath: Input.asOptionalInput<String>(map['exportPath']),
      fileSystemTypeVersion:
          Input.asOptionalInput<String>(map['fileSystemTypeVersion']),
      finalBackupTags:
          Input.asOptionalInput<Map<String, String>>(map['finalBackupTags']),
      importPath: Input.asOptionalInput<String>(map['importPath']),
      importedFileChunkSize:
          Input.asOptionalInput<int>(map['importedFileChunkSize']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      logConfiguration: Input.asOptionalInput<LustreFileSystemLogConfiguration>(
          map['logConfiguration']),
      metadataConfiguration:
          Input.asOptionalInput<LustreFileSystemMetadataConfiguration>(
              map['metadataConfiguration']),
      perUnitStorageThroughput:
          Input.asOptionalInput<int>(map['perUnitStorageThroughput']),
      region: Input.asOptionalInput<String>(map['region']),
      rootSquashConfiguration:
          Input.asOptionalInput<LustreFileSystemRootSquashConfiguration>(
              map['rootSquashConfiguration']),
      securityGroupIds:
          Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      skipFinalBackup: Input.asOptionalInput<bool>(map['skipFinalBackup']),
      storageCapacity: Input.asOptionalInput<int>(map['storageCapacity']),
      storageType: Input.asOptionalInput<String>(map['storageType']),
      subnetIds: Input.asInput<String>(map['subnetIds']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      throughputCapacity: Input.asOptionalInput<int>(map['throughputCapacity']),
      weeklyMaintenanceStartTime:
          Input.asOptionalInput<String>(map['weeklyMaintenanceStartTime']),
    );
  }
}
