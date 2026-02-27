import 'package:pulumi/pulumi.dart' as pulumi;
import '../ontap_file_system_disk_iops_configuration/ontap_file_system_disk_iops_configuration.dart';
import '../ontap_file_system_endpoint/ontap_file_system_endpoint.dart';
import 'ontap_file_system_args.dart';

/// Manages an Amazon FSx for NetApp ONTAP file system.
/// See the [FSx ONTAP User Guide](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/what-is-fsx-ontap.html) for more information.
///
/// ## Example Usage
///
///
///
///
///
///
///
///
///
/// ## Import
///
/// Using `pulumi import`, import FSx File Systems using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/ontapFileSystem:OntapFileSystem example fs-543ab12b1ca672f33
/// ```
///
/// Certain resource arguments, like `security_group_ids`, do not have a FSx API method for reading the information after creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use `ignore_changes` to hide the difference. For example:
class OntapFileSystem extends pulumi.CustomResource {
  /// Amazon Resource Name of the file system.
  late final pulumi.Output<String> arn;

  /// The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days.
  late final pulumi.Output<int?> automaticBackupRetentionDays;

  /// A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires `automatic_backup_retention_days` to be set.
  late final pulumi.Output<String> dailyAutomaticBackupStartTime;

  /// The filesystem deployment type. Supports `MULTI_AZ_1`, `MULTI_AZ_2`, `SINGLE_AZ_1`, and `SINGLE_AZ_2`.
  late final pulumi.Output<String> deploymentType;

  /// The SSD IOPS configuration for the Amazon FSx for NetApp ONTAP file system. See Disk Iops Configuration below.
  late final pulumi.Output<OntapFileSystemDiskIopsConfiguration>
      diskIopsConfiguration;

  /// The Domain Name Service (DNS) name for the file system. You can mount your file system using its DNS name.
  late final pulumi.Output<String> dnsName;

  /// Specifies the IP address range in which the endpoints to access your file system will be created. By default, Amazon FSx selects an unused IP address range for you from the 198.19.* range.
  ///
  /// >  **Note:** The 198.19.* range is also used by AWS services such as WorkSpaces and AppStream 2.0 for their [management network interfaces](https://docs.aws.amazon.com/appstream2/latest/developerguide/management_ports.html).
  late final pulumi.Output<String> endpointIpAddressRange;

  /// The endpoints that are used to access data or to manage the file system using the NetApp ONTAP CLI, REST API, or NetApp SnapMirror. See Endpoints below.
  late final pulumi.Output<List<OntapFileSystemEndpoint>> endpoints;

  /// The ONTAP administrative password for the fsxadmin user that you can use to administer your file system using the ONTAP CLI and REST API.
  late final pulumi.Output<String?> fsxAdminPassword;

  /// The number of ha_pairs to deploy for the file system. Valid value is 1 for `SINGLE_AZ_1` or `MULTI_AZ_1` and `MULTI_AZ_2`. Valid values are 1 through 12 for `SINGLE_AZ_2`.
  late final pulumi.Output<int> haPairs;

  /// ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key.
  late final pulumi.Output<String> kmsKeyId;

  /// Set of Elastic Network Interface identifiers from which the file system is accessible The first network interface returned is the primary network interface.
  late final pulumi.Output<List<String>> networkInterfaceIds;

  /// AWS account identifier that created the file system.
  late final pulumi.Output<String> ownerId;

  /// The ID for a subnet. A subnet is a range of IP addresses in your virtual private cloud (VPC).
  late final pulumi.Output<String> preferredSubnetId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Specifies the VPC route tables in which your file system's endpoints will be created. You should specify all VPC route tables associated with the subnets in which your clients are located. By default, Amazon FSx selects your VPC's default route table.
  late final pulumi.Output<List<String>> routeTableIds;

  /// A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  late final pulumi.Output<List<String>?> securityGroupIds;

  /// The storage capacity (GiB) of the file system. Valid values between `1024` and `196608` for file systems with deployment_type `SINGLE_AZ_1` and `MULTI_AZ_1`. Valid values are between `1024` and `524288` for `MULTI_AZ_2`. Valid values between `1024` (`1024` per ha pair) and `1048576` for file systems with deployment_type `SINGLE_AZ_2`. For `SINGLE_AZ_2`, the `1048576` (1PB) maximum is only supported when using 2 or more ha_pairs, the maximum is `524288` (512TB) when using 1 ha_pair.
  late final pulumi.Output<int> storageCapacity;

  /// The filesystem storage type. defaults to `SSD`.
  late final pulumi.Output<String?> storageType;

  /// A list of IDs for the subnets that the file system will be accessible from. Up to 2 subnets can be provided.
  late final pulumi.Output<List<String>> subnetIds;

  /// A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Sets the throughput capacity (in MBps) for the file system that you're creating. Valid values are `128`, `256`, `512`, `1024`, `2048`, and `4096`. This parameter is only supported when not using the ha_pairs parameter. Either throughput_capacity or throughput_capacity_per_ha_pair must be specified.
  late final pulumi.Output<int> throughputCapacity;

  /// Sets the per-HA-pair throughput capacity (in MBps) for the file system that you're creating, as opposed to `throughput_capacity` which specifies the total throughput capacity for the file system. Valid value for `MULTI_AZ_1` and `SINGLE_AZ_1` are `128`, `256`, `512`, `1024`, `2048`, and `4096`. Valid values for deployment type `MULTI_AZ_2` and `SINGLE_AZ_2` are `384`,`768`,`1536`,`3072`,`6144` where `ha_pairs` is `1`. Valid values for deployment type `SINGLE_AZ_2` are `1536`, `3072`, and `6144` where `ha_pairs` is greater than 1. This parameter is only supported when specifying the ha_pairs parameter. Either throughput_capacity or throughput_capacity_per_ha_pair must be specified.
  late final pulumi.Output<int> throughputCapacityPerHaPair;

  /// Identifier of the Virtual Private Cloud for the file system.
  late final pulumi.Output<String> vpcId;

  /// The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  late final pulumi.Output<String> weeklyMaintenanceStartTime;

  OntapFileSystem(
    String name, {
    OntapFileSystemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fsx/ontapFileSystem:OntapFileSystem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.automaticBackupRetentionDays =
        registerOutput<int?>('automaticBackupRetentionDays');
    this.dailyAutomaticBackupStartTime =
        registerOutput<String>('dailyAutomaticBackupStartTime');
    this.deploymentType = registerOutput<String>('deploymentType');
    this.diskIopsConfiguration =
        registerOutput<OntapFileSystemDiskIopsConfiguration>(
            'diskIopsConfiguration');
    this.dnsName = registerOutput<String>('dnsName');
    this.endpointIpAddressRange =
        registerOutput<String>('endpointIpAddressRange');
    this.endpoints = registerOutput<List<OntapFileSystemEndpoint>>('endpoints');
    this.fsxAdminPassword = registerOutput<String?>('fsxAdminPassword');
    this.haPairs = registerOutput<int>('haPairs');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.networkInterfaceIds =
        registerOutput<List<String>>('networkInterfaceIds');
    this.ownerId = registerOutput<String>('ownerId');
    this.preferredSubnetId = registerOutput<String>('preferredSubnetId');
    this.region = registerOutput<String>('region');
    this.routeTableIds = registerOutput<List<String>>('routeTableIds');
    this.securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    this.storageCapacity = registerOutput<int>('storageCapacity');
    this.storageType = registerOutput<String?>('storageType');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.throughputCapacity = registerOutput<int>('throughputCapacity');
    this.throughputCapacityPerHaPair =
        registerOutput<int>('throughputCapacityPerHaPair');
    this.vpcId = registerOutput<String>('vpcId');
    this.weeklyMaintenanceStartTime =
        registerOutput<String>('weeklyMaintenanceStartTime');
  }
}
