import 'package:pulumi/pulumi.dart';
import '../open_zfs_file_system_disk_iops_configuration/open_zfs_file_system_disk_iops_configuration.dart';
import '../open_zfs_file_system_read_cache_configuration/open_zfs_file_system_read_cache_configuration.dart';
import '../open_zfs_file_system_root_volume_configuration/open_zfs_file_system_root_volume_configuration.dart';
import 'open_zfs_file_system_args.dart';

/// Manages an Amazon FSx for OpenZFS file system.
/// See the [FSx OpenZFS User Guide](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/what-is-fsx.html) for more information.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.fsx.OpenZfsFileSystem("test", {
/// storageCapacity: 64,
/// subnetIds: [test1.id],
/// deploymentType: "SINGLE_AZ_1",
/// throughputCapacity: 64,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.fsx.OpenZfsFileSystem("test",
/// storage_capacity=64,
/// subnet_ids=[test1["id"]],
/// deployment_type="SINGLE_AZ_1",
/// throughput_capacity=64)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Fsx.OpenZfsFileSystem("test", new()
/// {
/// StorageCapacity = 64,
/// SubnetIds = new[]
/// {
/// test1.Id,
/// },
/// DeploymentType = "SINGLE_AZ_1",
/// ThroughputCapacity = 64,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := fsx.NewOpenZfsFileSystem(ctx, "test", &fsx.OpenZfsFileSystemArgs{
/// StorageCapacity: pulumi.Int(64),
/// SubnetIds: pulumi.StringArray{
/// test1.Id,
/// },
/// DeploymentType:     pulumi.String("SINGLE_AZ_1"),
/// ThroughputCapacity: pulumi.Int(64),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fsx.OpenZfsFileSystem;
/// import com.pulumi.aws.fsx.OpenZfsFileSystemArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new OpenZfsFileSystem("test", OpenZfsFileSystemArgs.builder()
/// .storageCapacity(64)
/// .subnetIds(test1.id())
/// .deploymentType("SINGLE_AZ_1")
/// .throughputCapacity(64)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:fsx:OpenZfsFileSystem
/// properties:
/// storageCapacity: 64
/// subnetIds:
/// - ${test1.id}
/// deploymentType: SINGLE_AZ_1
/// throughputCapacity: 64
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import FSx File Systems using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/openZfsFileSystem:OpenZfsFileSystem example fs-543ab12b1ca672f33
/// ```
///
/// Certain resource arguments, like <span pulumi-lang-nodejs="`securityGroupIds`" pulumi-lang-dotnet="`SecurityGroupIds`" pulumi-lang-go="`securityGroupIds`" pulumi-lang-python="`security_group_ids`" pulumi-lang-yaml="`securityGroupIds`" pulumi-lang-java="`securityGroupIds`">`security_group_ids`</span>, do not have a FSx API method for reading the information after creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> to hide the difference. For example:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.fsx.OpenZfsFileSystem("example", {securityGroupIds: [exampleAwsSecurityGroup.id]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.OpenZfsFileSystem("example", security_group_ids=[example_aws_security_group["id"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Fsx.OpenZfsFileSystem("example", new()
/// {
/// SecurityGroupIds = new[]
/// {
/// exampleAwsSecurityGroup.Id,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := fsx.NewOpenZfsFileSystem(ctx, "example", &fsx.OpenZfsFileSystemArgs{
/// SecurityGroupIds: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fsx.OpenZfsFileSystem;
/// import com.pulumi.aws.fsx.OpenZfsFileSystemArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new OpenZfsFileSystem("example", OpenZfsFileSystemArgs.builder()
/// .securityGroupIds(exampleAwsSecurityGroup.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:fsx:OpenZfsFileSystem
/// properties:
/// securityGroupIds:
/// - ${exampleAwsSecurityGroup.id}
/// ```
/// <!--End PulumiCodeChooser -->
class OpenZfsFileSystem extends CustomResource {
  /// Amazon Resource Name of the file system.
  late final Output<String> arn;

  /// The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days.
  late final Output<int?> automaticBackupRetentionDays;

  /// The ID of the source backup to create the filesystem from.
  late final Output<String?> backupId;

  /// A boolean flag indicating whether tags for the file system should be copied to backups. The default value is false.
  late final Output<bool?> copyTagsToBackups;

  /// A boolean flag indicating whether tags for the file system should be copied to snapshots. The default value is false.
  late final Output<bool?> copyTagsToVolumes;

  /// A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires <span pulumi-lang-nodejs="`automaticBackupRetentionDays`" pulumi-lang-dotnet="`AutomaticBackupRetentionDays`" pulumi-lang-go="`automaticBackupRetentionDays`" pulumi-lang-python="`automatic_backup_retention_days`" pulumi-lang-yaml="`automaticBackupRetentionDays`" pulumi-lang-java="`automaticBackupRetentionDays`">`automatic_backup_retention_days`</span> to be set.
  late final Output<String> dailyAutomaticBackupStartTime;

  /// List of delete options, which at present supports only one value that specifies whether to delete all child volumes and snapshots when the file system is deleted. Valid values: `DELETE_CHILD_VOLUMES_AND_SNAPSHOTS`.
  late final Output<List<String>?> deleteOptions;

  /// Filesystem deployment type. See the [AWS API documentation](https://docs.aws.amazon.com/fsx/latest/APIReference/API_CreateFileSystemOpenZFSConfiguration.html#FSx-Type-CreateFileSystemOpenZFSConfiguration-DeploymentType) for a list of valid values.
  late final Output<String> deploymentType;

  /// The SSD IOPS configuration for the Amazon FSx for OpenZFS file system. See <span pulumi-lang-nodejs="`diskIopsConfiguration`" pulumi-lang-dotnet="`DiskIopsConfiguration`" pulumi-lang-go="`diskIopsConfiguration`" pulumi-lang-python="`disk_iops_configuration`" pulumi-lang-yaml="`diskIopsConfiguration`" pulumi-lang-java="`diskIopsConfiguration`">`disk_iops_configuration`</span> Block for details.
  late final Output<OpenZfsFileSystemDiskIopsConfiguration>
      diskIopsConfiguration;

  /// DNS name for the file system, e.g., `fs-12345678.fsx.us-west-2.amazonaws.com`
  late final Output<String> dnsName;

  /// IP address of the endpoint that is used to access data or to manage the file system.
  late final Output<String> endpointIpAddress;

  /// (Multi-AZ only) Specifies the IP address range in which the endpoints to access your file system will be created.
  late final Output<String> endpointIpAddressRange;

  /// A map of tags to apply to the file system's final backup.
  late final Output<Map<String, String>?> finalBackupTags;

  /// ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key.
  late final Output<String> kmsKeyId;

  /// Set of Elastic Network Interface identifiers from which the file system is accessible The first network interface returned is the primary network interface.
  late final Output<List<String>> networkInterfaceIds;

  /// AWS account identifier that created the file system.
  late final Output<String> ownerId;

  /// (Multi-AZ only) Required when <span pulumi-lang-nodejs="`deploymentType`" pulumi-lang-dotnet="`DeploymentType`" pulumi-lang-go="`deploymentType`" pulumi-lang-python="`deployment_type`" pulumi-lang-yaml="`deploymentType`" pulumi-lang-java="`deploymentType`">`deployment_type`</span> is set to `MULTI_AZ_1`. This specifies the subnet in which you want the preferred file server to be located.
  late final Output<String?> preferredSubnetId;

  /// Configuration block for optional provisioned SSD read cache on file systems that use the Intelligent-Tiering storage class. Required when <span pulumi-lang-nodejs="`storageType`" pulumi-lang-dotnet="`StorageType`" pulumi-lang-go="`storageType`" pulumi-lang-python="`storage_type`" pulumi-lang-yaml="`storageType`" pulumi-lang-java="`storageType`">`storage_type`</span> is set to `INTELLIGENT_TIERING`. See <span pulumi-lang-nodejs="`readCacheConfiguration`" pulumi-lang-dotnet="`ReadCacheConfiguration`" pulumi-lang-go="`readCacheConfiguration`" pulumi-lang-python="`read_cache_configuration`" pulumi-lang-yaml="`readCacheConfiguration`" pulumi-lang-java="`readCacheConfiguration`">`read_cache_configuration`</span> Block for details.
  late final Output<OpenZfsFileSystemReadCacheConfiguration?>
      readCacheConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The configuration for the root volume of the file system. All other volumes are children or the root volume. See <span pulumi-lang-nodejs="`rootVolumeConfiguration`" pulumi-lang-dotnet="`RootVolumeConfiguration`" pulumi-lang-go="`rootVolumeConfiguration`" pulumi-lang-python="`root_volume_configuration`" pulumi-lang-yaml="`rootVolumeConfiguration`" pulumi-lang-java="`rootVolumeConfiguration`">`root_volume_configuration`</span> Block for details.
  late final Output<OpenZfsFileSystemRootVolumeConfiguration>
      rootVolumeConfiguration;

  /// Identifier of the root volume, e.g., `fsvol-12345678`
  late final Output<String> rootVolumeId;

  /// (Multi-AZ only) Specifies the route tables in which Amazon FSx creates the rules for routing traffic to the correct file server. You should specify all virtual private cloud (VPC) route tables associated with the subnets in which your clients are located. By default, Amazon FSx selects your VPC's default route table.
  late final Output<List<String>> routeTableIds;

  /// A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  late final Output<List<String>?> securityGroupIds;

  /// When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> skipFinalBackup;

  /// The storage capacity (GiB) of the file system. Valid values between <span pulumi-lang-nodejs="`64`" pulumi-lang-dotnet="`64`" pulumi-lang-go="`64`" pulumi-lang-python="`64`" pulumi-lang-yaml="`64`" pulumi-lang-java="`64`">`64`</span> and <span pulumi-lang-nodejs="`524288`" pulumi-lang-dotnet="`524288`" pulumi-lang-go="`524288`" pulumi-lang-python="`524288`" pulumi-lang-yaml="`524288`" pulumi-lang-java="`524288`">`524288`</span>. Required when <span pulumi-lang-nodejs="`storageType`" pulumi-lang-dotnet="`StorageType`" pulumi-lang-go="`storageType`" pulumi-lang-python="`storage_type`" pulumi-lang-yaml="`storageType`" pulumi-lang-java="`storageType`">`storage_type`</span> is set to `SSD`. Must not be set when <span pulumi-lang-nodejs="`storageType`" pulumi-lang-dotnet="`StorageType`" pulumi-lang-go="`storageType`" pulumi-lang-python="`storage_type`" pulumi-lang-yaml="`storageType`" pulumi-lang-java="`storageType`">`storage_type`</span> is set to `INTELLIGENT_TIERING`.
  late final Output<int?> storageCapacity;

  /// The filesystem storage type. Valid values are `SSD` and `INTELLIGENT_TIERING`. `INTELLIGENT_TIERING` requires <span pulumi-lang-nodejs="`deploymentType`" pulumi-lang-dotnet="`DeploymentType`" pulumi-lang-go="`deploymentType`" pulumi-lang-python="`deployment_type`" pulumi-lang-yaml="`deploymentType`" pulumi-lang-java="`deploymentType`">`deployment_type`</span> to be `MULTI_AZ_1`.
  late final Output<String?> storageType;

  /// A list of IDs for the subnets that the file system will be accessible from.
  late final Output<List<String>> subnetIds;

  /// A map of tags to assign to the file system. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Throughput (MB/s) of the file system. Valid values depend on <span pulumi-lang-nodejs="`deploymentType`" pulumi-lang-dotnet="`DeploymentType`" pulumi-lang-go="`deploymentType`" pulumi-lang-python="`deployment_type`" pulumi-lang-yaml="`deploymentType`" pulumi-lang-java="`deploymentType`">`deployment_type`</span>. Must be one of <span pulumi-lang-nodejs="`64`" pulumi-lang-dotnet="`64`" pulumi-lang-go="`64`" pulumi-lang-python="`64`" pulumi-lang-yaml="`64`" pulumi-lang-java="`64`">`64`</span>, <span pulumi-lang-nodejs="`128`" pulumi-lang-dotnet="`128`" pulumi-lang-go="`128`" pulumi-lang-python="`128`" pulumi-lang-yaml="`128`" pulumi-lang-java="`128`">`128`</span>, <span pulumi-lang-nodejs="`256`" pulumi-lang-dotnet="`256`" pulumi-lang-go="`256`" pulumi-lang-python="`256`" pulumi-lang-yaml="`256`" pulumi-lang-java="`256`">`256`</span>, <span pulumi-lang-nodejs="`512`" pulumi-lang-dotnet="`512`" pulumi-lang-go="`512`" pulumi-lang-python="`512`" pulumi-lang-yaml="`512`" pulumi-lang-java="`512`">`512`</span>, <span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span>, <span pulumi-lang-nodejs="`2048`" pulumi-lang-dotnet="`2048`" pulumi-lang-go="`2048`" pulumi-lang-python="`2048`" pulumi-lang-yaml="`2048`" pulumi-lang-java="`2048`">`2048`</span>, <span pulumi-lang-nodejs="`3072`" pulumi-lang-dotnet="`3072`" pulumi-lang-go="`3072`" pulumi-lang-python="`3072`" pulumi-lang-yaml="`3072`" pulumi-lang-java="`3072`">`3072`</span>, <span pulumi-lang-nodejs="`4096`" pulumi-lang-dotnet="`4096`" pulumi-lang-go="`4096`" pulumi-lang-python="`4096`" pulumi-lang-yaml="`4096`" pulumi-lang-java="`4096`">`4096`</span> for `SINGLE_AZ_1`. Must be one of <span pulumi-lang-nodejs="`160`" pulumi-lang-dotnet="`160`" pulumi-lang-go="`160`" pulumi-lang-python="`160`" pulumi-lang-yaml="`160`" pulumi-lang-java="`160`">`160`</span>, <span pulumi-lang-nodejs="`320`" pulumi-lang-dotnet="`320`" pulumi-lang-go="`320`" pulumi-lang-python="`320`" pulumi-lang-yaml="`320`" pulumi-lang-java="`320`">`320`</span>, <span pulumi-lang-nodejs="`640`" pulumi-lang-dotnet="`640`" pulumi-lang-go="`640`" pulumi-lang-python="`640`" pulumi-lang-yaml="`640`" pulumi-lang-java="`640`">`640`</span>, <span pulumi-lang-nodejs="`1280`" pulumi-lang-dotnet="`1280`" pulumi-lang-go="`1280`" pulumi-lang-python="`1280`" pulumi-lang-yaml="`1280`" pulumi-lang-java="`1280`">`1280`</span>, <span pulumi-lang-nodejs="`2560`" pulumi-lang-dotnet="`2560`" pulumi-lang-go="`2560`" pulumi-lang-python="`2560`" pulumi-lang-yaml="`2560`" pulumi-lang-java="`2560`">`2560`</span>, <span pulumi-lang-nodejs="`3840`" pulumi-lang-dotnet="`3840`" pulumi-lang-go="`3840`" pulumi-lang-python="`3840`" pulumi-lang-yaml="`3840`" pulumi-lang-java="`3840`">`3840`</span>, <span pulumi-lang-nodejs="`5120`" pulumi-lang-dotnet="`5120`" pulumi-lang-go="`5120`" pulumi-lang-python="`5120`" pulumi-lang-yaml="`5120`" pulumi-lang-java="`5120`">`5120`</span>, <span pulumi-lang-nodejs="`7680`" pulumi-lang-dotnet="`7680`" pulumi-lang-go="`7680`" pulumi-lang-python="`7680`" pulumi-lang-yaml="`7680`" pulumi-lang-java="`7680`">`7680`</span>, <span pulumi-lang-nodejs="`10240`" pulumi-lang-dotnet="`10240`" pulumi-lang-go="`10240`" pulumi-lang-python="`10240`" pulumi-lang-yaml="`10240`" pulumi-lang-java="`10240`">`10240`</span> for `SINGLE_AZ_2`.
  ///
  /// The following arguments are optional:
  late final Output<int> throughputCapacity;

  /// Identifier of the Virtual Private Cloud for the file system.
  late final Output<String> vpcId;

  /// The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  late final Output<String> weeklyMaintenanceStartTime;

  OpenZfsFileSystem(
    String name, {
    OpenZfsFileSystemArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:fsx/openZfsFileSystem:OpenZfsFileSystem',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.automaticBackupRetentionDays = Output.createUnknown<int?>();
    this.backupId = Output.createUnknown<String?>();
    this.copyTagsToBackups = Output.createUnknown<bool?>();
    this.copyTagsToVolumes = Output.createUnknown<bool?>();
    this.dailyAutomaticBackupStartTime = Output.createUnknown<String>();
    this.deleteOptions = Output.createUnknown<List<String>?>();
    this.deploymentType = Output.createUnknown<String>();
    this.diskIopsConfiguration =
        Output.createUnknown<OpenZfsFileSystemDiskIopsConfiguration>();
    this.dnsName = Output.createUnknown<String>();
    this.endpointIpAddress = Output.createUnknown<String>();
    this.endpointIpAddressRange = Output.createUnknown<String>();
    this.finalBackupTags = Output.createUnknown<Map<String, String>?>();
    this.kmsKeyId = Output.createUnknown<String>();
    this.networkInterfaceIds = Output.createUnknown<List<String>>();
    this.ownerId = Output.createUnknown<String>();
    this.preferredSubnetId = Output.createUnknown<String?>();
    this.readCacheConfiguration =
        Output.createUnknown<OpenZfsFileSystemReadCacheConfiguration?>();
    this.region = Output.createUnknown<String>();
    this.rootVolumeConfiguration =
        Output.createUnknown<OpenZfsFileSystemRootVolumeConfiguration>();
    this.rootVolumeId = Output.createUnknown<String>();
    this.routeTableIds = Output.createUnknown<List<String>>();
    this.securityGroupIds = Output.createUnknown<List<String>?>();
    this.skipFinalBackup = Output.createUnknown<bool?>();
    this.storageCapacity = Output.createUnknown<int?>();
    this.storageType = Output.createUnknown<String?>();
    this.subnetIds = Output.createUnknown<List<String>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.throughputCapacity = Output.createUnknown<int>();
    this.vpcId = Output.createUnknown<String>();
    this.weeklyMaintenanceStartTime = Output.createUnknown<String>();
  }
}
