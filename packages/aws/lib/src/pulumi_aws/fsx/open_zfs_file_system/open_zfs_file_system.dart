import 'package:pulumi/pulumi.dart' as pulumi;
import '../open_zfs_file_system_disk_iops_configuration/open_zfs_file_system_disk_iops_configuration.dart';
import '../open_zfs_file_system_read_cache_configuration/open_zfs_file_system_read_cache_configuration.dart';
import '../open_zfs_file_system_root_volume_configuration/open_zfs_file_system_root_volume_configuration.dart';
import 'open_zfs_file_system_args.dart';

/// Manages an Amazon FSx for OpenZFS file system.
/// See the [FSx OpenZFS User Guide](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/what-is-fsx.html) for more information.
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
/// $ pulumi import aws:fsx/openZfsFileSystem:OpenZfsFileSystem example fs-543ab12b1ca672f33
/// ```
///
/// Certain resource arguments, like `security_group_ids`, do not have a FSx API method for reading the information after creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use `ignore_changes` to hide the difference. For example:
class OpenZfsFileSystem extends pulumi.CustomResource {
  /// Amazon Resource Name of the file system.
  late final pulumi.Output<String> arn;

  /// The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days.
  late final pulumi.Output<int?> automaticBackupRetentionDays;

  /// The ID of the source backup to create the filesystem from.
  late final pulumi.Output<String?> backupId;

  /// A boolean flag indicating whether tags for the file system should be copied to backups. The default value is false.
  late final pulumi.Output<bool?> copyTagsToBackups;

  /// A boolean flag indicating whether tags for the file system should be copied to snapshots. The default value is false.
  late final pulumi.Output<bool?> copyTagsToVolumes;

  /// A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires `automatic_backup_retention_days` to be set.
  late final pulumi.Output<String> dailyAutomaticBackupStartTime;

  /// List of delete options, which at present supports only one value that specifies whether to delete all child volumes and snapshots when the file system is deleted. Valid values: `DELETE_CHILD_VOLUMES_AND_SNAPSHOTS`.
  late final pulumi.Output<List<String>?> deleteOptions;

  /// Filesystem deployment type. See the [AWS API documentation](https://docs.aws.amazon.com/fsx/latest/APIReference/API_CreateFileSystemOpenZFSConfiguration.html#FSx-Type-CreateFileSystemOpenZFSConfiguration-DeploymentType) for a list of valid values.
  late final pulumi.Output<String> deploymentType;

  /// The SSD IOPS configuration for the Amazon FSx for OpenZFS file system. See `disk_iops_configuration` Block for details.
  late final pulumi.Output<OpenZfsFileSystemDiskIopsConfiguration>
      diskIopsConfiguration;

  /// DNS name for the file system, e.g., `fs-12345678.fsx.us-west-2.amazonaws.com`
  late final pulumi.Output<String> dnsName;

  /// IP address of the endpoint that is used to access data or to manage the file system.
  late final pulumi.Output<String> endpointIpAddress;

  /// (Multi-AZ only) Specifies the IP address range in which the endpoints to access your file system will be created.
  late final pulumi.Output<String> endpointIpAddressRange;

  /// A map of tags to apply to the file system's final backup.
  late final pulumi.Output<Map<String, String>?> finalBackupTags;

  /// ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key.
  late final pulumi.Output<String> kmsKeyId;

  /// Set of Elastic Network Interface identifiers from which the file system is accessible The first network interface returned is the primary network interface.
  late final pulumi.Output<List<String>> networkInterfaceIds;

  /// AWS account identifier that created the file system.
  late final pulumi.Output<String> ownerId;

  /// (Multi-AZ only) Required when `deployment_type` is set to `MULTI_AZ_1`. This specifies the subnet in which you want the preferred file server to be located.
  late final pulumi.Output<String?> preferredSubnetId;

  /// Configuration block for optional provisioned SSD read cache on file systems that use the Intelligent-Tiering storage class. Required when `storage_type` is set to `INTELLIGENT_TIERING`. See `read_cache_configuration` Block for details.
  late final pulumi.Output<OpenZfsFileSystemReadCacheConfiguration?>
      readCacheConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The configuration for the root volume of the file system. All other volumes are children or the root volume. See `root_volume_configuration` Block for details.
  late final pulumi.Output<OpenZfsFileSystemRootVolumeConfiguration>
      rootVolumeConfiguration;

  /// Identifier of the root volume, e.g., `fsvol-12345678`
  late final pulumi.Output<String> rootVolumeId;

  /// (Multi-AZ only) Specifies the route tables in which Amazon FSx creates the rules for routing traffic to the correct file server. You should specify all virtual private cloud (VPC) route tables associated with the subnets in which your clients are located. By default, Amazon FSx selects your VPC's default route table.
  late final pulumi.Output<List<String>> routeTableIds;

  /// A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  late final pulumi.Output<List<String>?> securityGroupIds;

  /// When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  late final pulumi.Output<bool?> skipFinalBackup;

  /// The storage capacity (GiB) of the file system. Valid values between `64` and `524288`. Required when `storage_type` is set to `SSD`. Must not be set when `storage_type` is set to `INTELLIGENT_TIERING`.
  late final pulumi.Output<int?> storageCapacity;

  /// The filesystem storage type. Valid values are `SSD` and `INTELLIGENT_TIERING`. `INTELLIGENT_TIERING` requires `deployment_type` to be `MULTI_AZ_1`.
  late final pulumi.Output<String?> storageType;

  /// A list of IDs for the subnets that the file system will be accessible from.
  late final pulumi.Output<List<String>> subnetIds;

  /// A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Throughput (MB/s) of the file system. Valid values depend on `deployment_type`. Must be one of `64`, `128`, `256`, `512`, `1024`, `2048`, `3072`, `4096` for `SINGLE_AZ_1`. Must be one of `160`, `320`, `640`, `1280`, `2560`, `3840`, `5120`, `7680`, `10240` for `SINGLE_AZ_2`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> throughputCapacity;

  /// Identifier of the Virtual Private Cloud for the file system.
  late final pulumi.Output<String> vpcId;

  /// The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  late final pulumi.Output<String> weeklyMaintenanceStartTime;

  OpenZfsFileSystem(
    String name, {
    OpenZfsFileSystemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fsx/openZfsFileSystem:OpenZfsFileSystem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.automaticBackupRetentionDays =
        registerOutput<int?>('automaticBackupRetentionDays');
    this.backupId = registerOutput<String?>('backupId');
    this.copyTagsToBackups = registerOutput<bool?>('copyTagsToBackups');
    this.copyTagsToVolumes = registerOutput<bool?>('copyTagsToVolumes');
    this.dailyAutomaticBackupStartTime =
        registerOutput<String>('dailyAutomaticBackupStartTime');
    this.deleteOptions = registerOutput<List<String>?>('deleteOptions');
    this.deploymentType = registerOutput<String>('deploymentType');
    this.diskIopsConfiguration =
        registerOutput<OpenZfsFileSystemDiskIopsConfiguration>(
            'diskIopsConfiguration');
    this.dnsName = registerOutput<String>('dnsName');
    this.endpointIpAddress = registerOutput<String>('endpointIpAddress');
    this.endpointIpAddressRange =
        registerOutput<String>('endpointIpAddressRange');
    this.finalBackupTags =
        registerOutput<Map<String, String>?>('finalBackupTags');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.networkInterfaceIds =
        registerOutput<List<String>>('networkInterfaceIds');
    this.ownerId = registerOutput<String>('ownerId');
    this.preferredSubnetId = registerOutput<String?>('preferredSubnetId');
    this.readCacheConfiguration =
        registerOutput<OpenZfsFileSystemReadCacheConfiguration?>(
            'readCacheConfiguration');
    this.region = registerOutput<String>('region');
    this.rootVolumeConfiguration =
        registerOutput<OpenZfsFileSystemRootVolumeConfiguration>(
            'rootVolumeConfiguration');
    this.rootVolumeId = registerOutput<String>('rootVolumeId');
    this.routeTableIds = registerOutput<List<String>>('routeTableIds');
    this.securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    this.skipFinalBackup = registerOutput<bool?>('skipFinalBackup');
    this.storageCapacity = registerOutput<int?>('storageCapacity');
    this.storageType = registerOutput<String?>('storageType');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.throughputCapacity = registerOutput<int>('throughputCapacity');
    this.vpcId = registerOutput<String>('vpcId');
    this.weeklyMaintenanceStartTime =
        registerOutput<String>('weeklyMaintenanceStartTime');
  }
}
