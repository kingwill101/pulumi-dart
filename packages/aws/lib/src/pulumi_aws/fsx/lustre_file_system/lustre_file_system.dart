import 'package:pulumi/pulumi.dart' as pulumi;
import '../lustre_file_system_data_read_cache_configuration/lustre_file_system_data_read_cache_configuration.dart';
import '../lustre_file_system_log_configuration/lustre_file_system_log_configuration.dart';
import '../lustre_file_system_metadata_configuration/lustre_file_system_metadata_configuration.dart';
import '../lustre_file_system_root_squash_configuration/lustre_file_system_root_squash_configuration.dart';
import 'lustre_file_system_args.dart';

/// Manages a FSx Lustre File System. See the [FSx Lustre Guide](https://docs.aws.amazon.com/fsx/latest/LustreGuide/what-is.html) for more information.
///
/// > **NOTE:** `auto_import_policy`, `export_path`, `import_path` and `imported_file_chunk_size` are not supported with the `PERSISTENT_2` deployment type. Use `aws.fsx.DataRepositoryAssociation` instead.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import FSx File Systems using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/lustreFileSystem:LustreFileSystem example fs-543ab12b1ca672f33
/// ```
///
/// Certain resource arguments, like `security_group_ids`, do not have a FSx API method for reading the information after creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use `ignore_changes` to hide the difference. For example:
class LustreFileSystem extends pulumi.CustomResource {
  /// Amazon Resource Name of the file system.
  late final pulumi.Output<String> arn;

  /// How Amazon FSx keeps your file and directory listings up to date as you add or modify objects in your linked S3 bucket. see [Auto Import Data Repo](https://docs.aws.amazon.com/fsx/latest/LustreGuide/autoimport-data-repo.html) for more details. Only supported on `PERSISTENT_1` deployment types.
  late final pulumi.Output<String> autoImportPolicy;

  /// The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days. only valid for `PERSISTENT_1` and `PERSISTENT_2` deployment_type.
  late final pulumi.Output<int> automaticBackupRetentionDays;

  /// The ID of the source backup to create the filesystem from.
  late final pulumi.Output<String?> backupId;

  /// A boolean flag indicating whether tags for the file system should be copied to backups. Applicable for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. The default value is false.
  late final pulumi.Output<bool?> copyTagsToBackups;

  /// A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. only valid for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Requires `automatic_backup_retention_days` to be set.
  late final pulumi.Output<String> dailyAutomaticBackupStartTime;

  /// Sets the data compression configuration for the file system. Valid values are `LZ4` and `NONE`. Default value is `NONE`. Unsetting this value reverts the compression type back to `NONE`.
  late final pulumi.Output<String?> dataCompressionType;
  late final pulumi.Output<LustreFileSystemDataReadCacheConfiguration?>
      dataReadCacheConfiguration;

  /// The filesystem deployment type. One of: `SCRATCH_1`, `SCRATCH_2`, `PERSISTENT_1`, `PERSISTENT_2`.
  late final pulumi.Output<String?> deploymentType;

  /// DNS name for the file system, e.g., `fs-12345678.fsx.us-west-2.amazonaws.com`
  late final pulumi.Output<String> dnsName;

  /// The type of drive cache used by `PERSISTENT_1` filesystems that are provisioned with `HDD` storage_type. Required for `HDD` storage_type, set to either `READ` or `NONE`.
  late final pulumi.Output<String?> driveCacheType;

  /// Adds support for Elastic Fabric Adapter (EFA) and GPUDirect Storage (GDS) to Lustre. This must be set at creation. If set this cannot be changed and this prevents changes to `per_unit_storage_throughput`. This is only supported when deployment_type is set to `PERSISTENT_2`, `metadata_configuration` is used, and an EFA-enabled security group is attached.
  late final pulumi.Output<bool> efaEnabled;

  /// S3 URI (with optional prefix) where the root of your Amazon FSx file system is exported. Can only be specified with `import_path` argument and the path must use the same Amazon S3 bucket as specified in `import_path`. Set equal to `import_path` to overwrite files on export. Defaults to `s3://{IMPORT BUCKET}/FSxLustre{CREATION TIMESTAMP}`. Only supported on `PERSISTENT_1` deployment types.
  late final pulumi.Output<String> exportPath;

  /// Sets the Lustre version for the file system that you're creating. Valid values are 2.10 for `SCRATCH_1`, `SCRATCH_2` and `PERSISTENT_1` deployment types. Valid values for 2.12 include all deployment types.
  late final pulumi.Output<String> fileSystemTypeVersion;

  /// A map of tags to apply to the file system's final backup.
  ///
  /// **Note:** If the filesystem uses a Scratch deployment type, final backup during delete will always be skipped and this argument will not be used even when set.
  late final pulumi.Output<Map<String, String>?> finalBackupTags;

  /// S3 URI (with optional prefix) that you're using as the data repository for your FSx for Lustre file system. For example, `s3://example-bucket/optional-prefix/`. Only supported on `PERSISTENT_1` deployment types.
  late final pulumi.Output<String?> importPath;

  /// For files imported from a data repository, this value determines the stripe count and maximum amount of data per file (in MiB) stored on a single physical disk. Can only be specified with `import_path` argument. Defaults to `1024`. Minimum of `1` and maximum of `512000`. Only supported on `PERSISTENT_1` deployment types.
  late final pulumi.Output<int> importedFileChunkSize;

  /// ARN for the KMS Key to encrypt the file system at rest, applicable for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Defaults to an AWS managed KMS Key.
  late final pulumi.Output<String> kmsKeyId;

  /// The Lustre logging configuration used when creating an Amazon FSx for Lustre file system. When logging is enabled, Lustre logs error and warning events for data repositories associated with your file system to Amazon CloudWatch Logs. See `log_configuration` Block for details.
  late final pulumi.Output<LustreFileSystemLogConfiguration> logConfiguration;

  /// The Lustre metadata configuration used when creating an Amazon FSx for Lustre file system. This can be used to specify a user provisioned metadata scale. This is only supported when `deployment_type` is set to `PERSISTENT_2`. See `metadata_configuration` Block for details.
  late final pulumi.Output<LustreFileSystemMetadataConfiguration>
      metadataConfiguration;

  /// The value to be used when mounting the filesystem.
  late final pulumi.Output<String> mountName;

  /// Set of Elastic Network Interface identifiers from which the file system is accessible. As explained in the [documentation](https://docs.aws.amazon.com/fsx/latest/LustreGuide/mounting-on-premises.html), the first network interface returned is the primary network interface.
  late final pulumi.Output<List<String>> networkInterfaceIds;

  /// AWS account identifier that created the file system.
  late final pulumi.Output<String> ownerId;

  /// Describes the amount of read and write throughput for each 1 tebibyte of storage, in MB/s/TiB, required for the `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Valid values for `PERSISTENT_1` deployment_type and `SSD` storage_type are 50, 100, 200. Valid values for `PERSISTENT_1` deployment_type and `HDD` storage_type are 12, 40. Valid values for `PERSISTENT_2` deployment_type and ` SSD` storage_type are 125, 250, 500, 1000.
  late final pulumi.Output<int?> perUnitStorageThroughput;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Lustre root squash configuration used when creating an Amazon FSx for Lustre file system. When enabled, root squash restricts root-level access from clients that try to access your file system as a root user. See `root_squash_configuration` Block for details.
  late final pulumi.Output<LustreFileSystemRootSquashConfiguration?>
      rootSquashConfiguration;

  /// A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  late final pulumi.Output<List<String>?> securityGroupIds;

  /// When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `true`.
  ///
  /// **Note:** If the filesystem uses a Scratch deployment type, final backup during delete will always be skipped and this argument will not be used even when set.
  late final pulumi.Output<bool?> skipFinalBackup;

  /// The storage capacity (GiB) of the file system. Minimum of `1200`. See more details at [Allowed values for Fsx storage capacity](https://docs.aws.amazon.com/fsx/latest/APIReference/API_CreateFileSystem.html#FSx-CreateFileSystem-request-StorageCapacity). Update is allowed only for `SCRATCH_2`, `PERSISTENT_1` and `PERSISTENT_2` deployment types, See more details at [Fsx Storage Capacity Update](https://docs.aws.amazon.com/fsx/latest/APIReference/API_UpdateFileSystem.html#FSx-UpdateFileSystem-request-StorageCapacity). Required when not creating filesystem for a backup.
  late final pulumi.Output<int?> storageCapacity;

  /// The filesystem storage type. One of `SSD`, `HDD` or `INTELLIGENT_TIERING`, defaults to `SSD`. `HDD` is only supported on `PERSISTENT_1` deployment types. `INTELLIGENT_TIERING` requires `data_read_cache_configuration` and `metadata_configuration` to be set and is only supported for `PERSISTENT_2` deployment types.
  late final pulumi.Output<String?> storageType;

  /// A list of IDs for the subnets that the file system will be accessible from. File systems currently support only one subnet. The file server is also launched in that subnet's Availability Zone.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> subnetIds;

  /// A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Throughput in MBps required for the `INTELLIGENT_TIERING` storage type. Must be 4000 or multiples of 4000.
  late final pulumi.Output<int?> throughputCapacity;

  /// Identifier of the Virtual Private Cloud for the file system.
  late final pulumi.Output<String> vpcId;

  /// The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  late final pulumi.Output<String> weeklyMaintenanceStartTime;

  LustreFileSystem(
    String name, {
    LustreFileSystemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fsx/lustreFileSystem:LustreFileSystem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autoImportPolicy = registerOutput<String>('autoImportPolicy');
    this.automaticBackupRetentionDays =
        registerOutput<int>('automaticBackupRetentionDays');
    this.backupId = registerOutput<String?>('backupId');
    this.copyTagsToBackups = registerOutput<bool?>('copyTagsToBackups');
    this.dailyAutomaticBackupStartTime =
        registerOutput<String>('dailyAutomaticBackupStartTime');
    this.dataCompressionType = registerOutput<String?>('dataCompressionType');
    this.dataReadCacheConfiguration =
        registerOutput<LustreFileSystemDataReadCacheConfiguration?>(
            'dataReadCacheConfiguration');
    this.deploymentType = registerOutput<String?>('deploymentType');
    this.dnsName = registerOutput<String>('dnsName');
    this.driveCacheType = registerOutput<String?>('driveCacheType');
    this.efaEnabled = registerOutput<bool>('efaEnabled');
    this.exportPath = registerOutput<String>('exportPath');
    this.fileSystemTypeVersion =
        registerOutput<String>('fileSystemTypeVersion');
    this.finalBackupTags =
        registerOutput<Map<String, String>?>('finalBackupTags');
    this.importPath = registerOutput<String?>('importPath');
    this.importedFileChunkSize = registerOutput<int>('importedFileChunkSize');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.logConfiguration =
        registerOutput<LustreFileSystemLogConfiguration>('logConfiguration');
    this.metadataConfiguration =
        registerOutput<LustreFileSystemMetadataConfiguration>(
            'metadataConfiguration');
    this.mountName = registerOutput<String>('mountName');
    this.networkInterfaceIds =
        registerOutput<List<String>>('networkInterfaceIds');
    this.ownerId = registerOutput<String>('ownerId');
    this.perUnitStorageThroughput =
        registerOutput<int?>('perUnitStorageThroughput');
    this.region = registerOutput<String>('region');
    this.rootSquashConfiguration =
        registerOutput<LustreFileSystemRootSquashConfiguration?>(
            'rootSquashConfiguration');
    this.securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    this.skipFinalBackup = registerOutput<bool?>('skipFinalBackup');
    this.storageCapacity = registerOutput<int?>('storageCapacity');
    this.storageType = registerOutput<String?>('storageType');
    this.subnetIds = registerOutput<String>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.throughputCapacity = registerOutput<int?>('throughputCapacity');
    this.vpcId = registerOutput<String>('vpcId');
    this.weeklyMaintenanceStartTime =
        registerOutput<String>('weeklyMaintenanceStartTime');
  }
}
