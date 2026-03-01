// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lustre_file_system_data_read_cache_configuration.dart';
import 'lustre_file_system_log_configuration.dart';
import 'lustre_file_system_metadata_configuration.dart';
import 'lustre_file_system_root_squash_configuration.dart';

/// Input properties used for looking up and filtering LustreFileSystem resources.
class LustreFileSystemState {
  /// Amazon Resource Name of the file system.
  final pulumi.Input<String>? arn;
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
  /// DNS name for the file system, e.g., `fs-12345678.fsx.us-west-2.amazonaws.com`
  final pulumi.Input<String>? dnsName;
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
  /// The value to be used when mounting the filesystem.
  final pulumi.Input<String>? mountName;
  /// Set of Elastic Network Interface identifiers from which the file system is accessible. As explained in the [documentation](https://docs.aws.amazon.com/fsx/latest/LustreGuide/mounting-on-premises.html), the first network interface returned is the primary network interface.
  final pulumi.Input<List<String>>? networkInterfaceIds;
  /// AWS account identifier that created the file system.
  final pulumi.Input<String>? ownerId;
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
  final pulumi.Input<String>? subnetIds;
  /// A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Throughput in MBps required for the `INTELLIGENT_TIERING` storage type. Must be 4000 or multiples of 4000.
  final pulumi.Input<int>? throughputCapacity;
  /// Identifier of the Virtual Private Cloud for the file system.
  final pulumi.Input<String>? vpcId;
  /// The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  final pulumi.Input<String>? weeklyMaintenanceStartTime;

  /// Creates a new [LustreFileSystemState].
  /// [arn] Amazon Resource Name of the file system.
  /// [autoImportPolicy] How Amazon FSx keeps your file and directory listings up to date as you add or modify objects in your linked S3 bucket. see [Auto Import Data Repo](https://docs.aws.amazon.com/fsx/latest/LustreGuide/autoimport-data-repo.html) for more details. Only supported on `PERSISTENT_1` deployment types.
  /// [automaticBackupRetentionDays] The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days. only valid for `PERSISTENT_1` and `PERSISTENT_2` deployment_type.
  /// [backupId] The ID of the source backup to create the filesystem from.
  /// [copyTagsToBackups] A boolean flag indicating whether tags for the file system should be copied to backups. Applicable for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. The default value is false.
  /// [dailyAutomaticBackupStartTime] A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. only valid for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Requires `automatic_backup_retention_days` to be set.
  /// [dataCompressionType] Sets the data compression configuration for the file system. Valid values are `LZ4` and `NONE`. Default value is `NONE`. Unsetting this value reverts the compression type back to `NONE`.
  /// [dataReadCacheConfiguration] Optional.
  /// [deploymentType] The filesystem deployment type. One of: `SCRATCH_1`, `SCRATCH_2`, `PERSISTENT_1`, `PERSISTENT_2`.
  /// [dnsName] DNS name for the file system, e.g., `fs-12345678.fsx.us-west-2.amazonaws.com`
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
  /// [mountName] The value to be used when mounting the filesystem.
  /// [networkInterfaceIds] Set of Elastic Network Interface identifiers from which the file system is accessible. As explained in the [documentation](https://docs.aws.amazon.com/fsx/latest/LustreGuide/mounting-on-premises.html), the first network interface returned is the primary network interface.
  /// [ownerId] AWS account identifier that created the file system.
  /// [perUnitStorageThroughput] Describes the amount of read and write throughput for each 1 tebibyte of storage, in MB/s/TiB, required for the `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Valid values for `PERSISTENT_1` deployment_type and `SSD` storage_type are 50, 100, 200. Valid values for `PERSISTENT_1` deployment_type and `HDD` storage_type are 12, 40. Valid values for `PERSISTENT_2` deployment_type and ` SSD` storage_type are 125, 250, 500, 1000.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootSquashConfiguration] The Lustre root squash configuration used when creating an Amazon FSx for Lustre file system. When enabled, root squash restricts root-level access from clients that try to access your file system as a root user. See `root_squash_configuration` Block for details.
  /// [securityGroupIds] A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  /// [skipFinalBackup] When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `true`.
  /// [storageCapacity] The storage capacity (GiB) of the file system. Minimum of `1200`. See more details at [Allowed values for Fsx storage capacity](https://docs.aws.amazon.com/fsx/latest/APIReference/API_CreateFileSystem.html#FSx-CreateFileSystem-request-StorageCapacity). Update is allowed only for `SCRATCH_2`, `PERSISTENT_1` and `PERSISTENT_2` deployment types, See more details at [Fsx Storage Capacity Update](https://docs.aws.amazon.com/fsx/latest/APIReference/API_UpdateFileSystem.html#FSx-UpdateFileSystem-request-StorageCapacity). Required when not creating filesystem for a backup.
  /// [storageType] The filesystem storage type. One of `SSD`, `HDD` or `INTELLIGENT_TIERING`, defaults to `SSD`. `HDD` is only supported on `PERSISTENT_1` deployment types. `INTELLIGENT_TIERING` requires `data_read_cache_configuration` and `metadata_configuration` to be set and is only supported for `PERSISTENT_2` deployment types.
  /// [subnetIds] A list of IDs for the subnets that the file system will be accessible from. File systems currently support only one subnet. The file server is also launched in that subnet's Availability Zone.
  /// [tags] A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [throughputCapacity] Throughput in MBps required for the `INTELLIGENT_TIERING` storage type. Must be 4000 or multiples of 4000.
  /// [vpcId] Identifier of the Virtual Private Cloud for the file system.
  /// [weeklyMaintenanceStartTime] The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  LustreFileSystemState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? autoImportPolicy,
    pulumi.Output<int>? automaticBackupRetentionDays,
    pulumi.Output<String>? backupId,
    pulumi.Output<bool>? copyTagsToBackups,
    pulumi.Output<String>? dailyAutomaticBackupStartTime,
    pulumi.Output<String>? dataCompressionType,
    pulumi.Output<LustreFileSystemDataReadCacheConfiguration>? dataReadCacheConfiguration,
    pulumi.Output<String>? deploymentType,
    pulumi.Output<String>? dnsName,
    pulumi.Output<String>? driveCacheType,
    pulumi.Output<bool>? efaEnabled,
    pulumi.Output<String>? exportPath,
    pulumi.Output<String>? fileSystemTypeVersion,
    pulumi.Output<Map<String, String>>? finalBackupTags,
    pulumi.Output<String>? importPath,
    pulumi.Output<int>? importedFileChunkSize,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<LustreFileSystemLogConfiguration>? logConfiguration,
    pulumi.Output<LustreFileSystemMetadataConfiguration>? metadataConfiguration,
    pulumi.Output<String>? mountName,
    pulumi.Output<List<String>>? networkInterfaceIds,
    pulumi.Output<String>? ownerId,
    pulumi.Output<int>? perUnitStorageThroughput,
    pulumi.Output<String>? region,
    pulumi.Output<LustreFileSystemRootSquashConfiguration>? rootSquashConfiguration,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<bool>? skipFinalBackup,
    pulumi.Output<int>? storageCapacity,
    pulumi.Output<String>? storageType,
    pulumi.Output<String>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<int>? throughputCapacity,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? weeklyMaintenanceStartTime,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      autoImportPolicy = pulumi.Input.asOptionalInput<String>(autoImportPolicy),
      automaticBackupRetentionDays = pulumi.Input.asOptionalInput<int>(automaticBackupRetentionDays),
      backupId = pulumi.Input.asOptionalInput<String>(backupId),
      copyTagsToBackups = pulumi.Input.asOptionalInput<bool>(copyTagsToBackups),
      dailyAutomaticBackupStartTime = pulumi.Input.asOptionalInput<String>(dailyAutomaticBackupStartTime),
      dataCompressionType = pulumi.Input.asOptionalInput<String>(dataCompressionType),
      dataReadCacheConfiguration = pulumi.Input.asOptionalInput<LustreFileSystemDataReadCacheConfiguration>(dataReadCacheConfiguration),
      deploymentType = pulumi.Input.asOptionalInput<String>(deploymentType),
      dnsName = pulumi.Input.asOptionalInput<String>(dnsName),
      driveCacheType = pulumi.Input.asOptionalInput<String>(driveCacheType),
      efaEnabled = pulumi.Input.asOptionalInput<bool>(efaEnabled),
      exportPath = pulumi.Input.asOptionalInput<String>(exportPath),
      fileSystemTypeVersion = pulumi.Input.asOptionalInput<String>(fileSystemTypeVersion),
      finalBackupTags = pulumi.Input.asOptionalInput<Map<String, String>>(finalBackupTags),
      importPath = pulumi.Input.asOptionalInput<String>(importPath),
      importedFileChunkSize = pulumi.Input.asOptionalInput<int>(importedFileChunkSize),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      logConfiguration = pulumi.Input.asOptionalInput<LustreFileSystemLogConfiguration>(logConfiguration),
      metadataConfiguration = pulumi.Input.asOptionalInput<LustreFileSystemMetadataConfiguration>(metadataConfiguration),
      mountName = pulumi.Input.asOptionalInput<String>(mountName),
      networkInterfaceIds = pulumi.Input.asOptionalInput<List<String>>(networkInterfaceIds),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      perUnitStorageThroughput = pulumi.Input.asOptionalInput<int>(perUnitStorageThroughput),
      region = pulumi.Input.asOptionalInput<String>(region),
      rootSquashConfiguration = pulumi.Input.asOptionalInput<LustreFileSystemRootSquashConfiguration>(rootSquashConfiguration),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      skipFinalBackup = pulumi.Input.asOptionalInput<bool>(skipFinalBackup),
      storageCapacity = pulumi.Input.asOptionalInput<int>(storageCapacity),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      subnetIds = pulumi.Input.asOptionalInput<String>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      throughputCapacity = pulumi.Input.asOptionalInput<int>(throughputCapacity),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      weeklyMaintenanceStartTime = pulumi.Input.asOptionalInput<String>(weeklyMaintenanceStartTime);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      autoImportPolicy: map['autoImportPolicy'] == null ? null : pulumi.Output.create<String>(map['autoImportPolicy'] as String),
      automaticBackupRetentionDays: map['automaticBackupRetentionDays'] == null ? null : pulumi.Output.create<int>(map['automaticBackupRetentionDays'] as int),
      backupId: map['backupId'] == null ? null : pulumi.Output.create<String>(map['backupId'] as String),
      copyTagsToBackups: map['copyTagsToBackups'] == null ? null : pulumi.Output.create<bool>(map['copyTagsToBackups'] as bool),
      dailyAutomaticBackupStartTime: map['dailyAutomaticBackupStartTime'] == null ? null : pulumi.Output.create<String>(map['dailyAutomaticBackupStartTime'] as String),
      dataCompressionType: map['dataCompressionType'] == null ? null : pulumi.Output.create<String>(map['dataCompressionType'] as String),
      dataReadCacheConfiguration: map['dataReadCacheConfiguration'] == null ? null : pulumi.Output.create<LustreFileSystemDataReadCacheConfiguration>(LustreFileSystemDataReadCacheConfiguration.fromMap((map['dataReadCacheConfiguration'] as Map).cast<String, dynamic>())),
      deploymentType: map['deploymentType'] == null ? null : pulumi.Output.create<String>(map['deploymentType'] as String),
      dnsName: map['dnsName'] == null ? null : pulumi.Output.create<String>(map['dnsName'] as String),
      driveCacheType: map['driveCacheType'] == null ? null : pulumi.Output.create<String>(map['driveCacheType'] as String),
      efaEnabled: map['efaEnabled'] == null ? null : pulumi.Output.create<bool>(map['efaEnabled'] as bool),
      exportPath: map['exportPath'] == null ? null : pulumi.Output.create<String>(map['exportPath'] as String),
      fileSystemTypeVersion: map['fileSystemTypeVersion'] == null ? null : pulumi.Output.create<String>(map['fileSystemTypeVersion'] as String),
      finalBackupTags: map['finalBackupTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['finalBackupTags'] as Map).cast<String, String>()),
      importPath: map['importPath'] == null ? null : pulumi.Output.create<String>(map['importPath'] as String),
      importedFileChunkSize: map['importedFileChunkSize'] == null ? null : pulumi.Output.create<int>(map['importedFileChunkSize'] as int),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      logConfiguration: map['logConfiguration'] == null ? null : pulumi.Output.create<LustreFileSystemLogConfiguration>(LustreFileSystemLogConfiguration.fromMap((map['logConfiguration'] as Map).cast<String, dynamic>())),
      metadataConfiguration: map['metadataConfiguration'] == null ? null : pulumi.Output.create<LustreFileSystemMetadataConfiguration>(LustreFileSystemMetadataConfiguration.fromMap((map['metadataConfiguration'] as Map).cast<String, dynamic>())),
      mountName: map['mountName'] == null ? null : pulumi.Output.create<String>(map['mountName'] as String),
      networkInterfaceIds: map['networkInterfaceIds'] == null ? null : pulumi.Output.create<List<String>>((map['networkInterfaceIds'] as List).cast<String>()),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      perUnitStorageThroughput: map['perUnitStorageThroughput'] == null ? null : pulumi.Output.create<int>(map['perUnitStorageThroughput'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rootSquashConfiguration: map['rootSquashConfiguration'] == null ? null : pulumi.Output.create<LustreFileSystemRootSquashConfiguration>(LustreFileSystemRootSquashConfiguration.fromMap((map['rootSquashConfiguration'] as Map).cast<String, dynamic>())),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      skipFinalBackup: map['skipFinalBackup'] == null ? null : pulumi.Output.create<bool>(map['skipFinalBackup'] as bool),
      storageCapacity: map['storageCapacity'] == null ? null : pulumi.Output.create<int>(map['storageCapacity'] as int),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<String>(map['subnetIds'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      throughputCapacity: map['throughputCapacity'] == null ? null : pulumi.Output.create<int>(map['throughputCapacity'] as int),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      weeklyMaintenanceStartTime: map['weeklyMaintenanceStartTime'] == null ? null : pulumi.Output.create<String>(map['weeklyMaintenanceStartTime'] as String),
    );
  }
}

