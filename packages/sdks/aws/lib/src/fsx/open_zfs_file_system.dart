import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_zfs_file_system_args.dart';
import 'open_zfs_file_system_disk_iops_configuration.dart';
import 'open_zfs_file_system_read_cache_configuration.dart';
import 'open_zfs_file_system_root_volume_configuration.dart';
import 'open_zfs_file_system_state.dart';

/// Manages an Amazon FSx for OpenZFS file system.
/// See the [FSx OpenZFS User Guide](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/what-is-fsx.html) for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.fsx.OpenZfsFileSystem("test", {
///     storageCapacity: 64,
///     subnetIds: [test1.id],
///     deploymentType: "SINGLE_AZ_1",
///     throughputCapacity: 64,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.fsx.OpenZfsFileSystem("test",
///     storage_capacity=64,
///     subnet_ids=[test1["id"]],
///     deployment_type="SINGLE_AZ_1",
///     throughput_capacity=64)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Fsx.OpenZfsFileSystem("test", new()
///     {
///         StorageCapacity = 64,
///         SubnetIds = new[]
///         {
///             test1.Id,
///         },
///         DeploymentType = "SINGLE_AZ_1",
///         ThroughputCapacity = 64,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fsx.NewOpenZfsFileSystem(ctx, "test", &fsx.OpenZfsFileSystemArgs{
/// 			StorageCapacity: pulumi.Int(64),
/// 			SubnetIds: pulumi.StringArray{
/// 				test1.Id,
/// 			},
/// 			DeploymentType:     pulumi.String("SINGLE_AZ_1"),
/// 			ThroughputCapacity: pulumi.Int(64),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_fsx_openzfsfilesystem" "test" {
///   storage_capacity    = 64
///   subnet_ids          = [test1.id]
///   deployment_type     = "SINGLE_AZ_1"
///   throughput_capacity = 64
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new OpenZfsFileSystem("test", OpenZfsFileSystemArgs.builder()
///             .storageCapacity(64)
///             .subnetIds(test1.id())
///             .deploymentType("SINGLE_AZ_1")
///             .throughputCapacity(64)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:fsx:OpenZfsFileSystem
///     properties:
///       storageCapacity: 64
///       subnetIds:
///         - ${test1.id}
///       deploymentType: SINGLE_AZ_1
///       throughputCapacity: 64
/// ```
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
/// Certain resource arguments, like `securityGroupIds`, do not have a FSx API method for reading the information after creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use `ignoreChanges` to hide the difference. For example:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.fsx.OpenZfsFileSystem("example", {securityGroupIds: [exampleAwsSecurityGroup.id]}, {
///     ignoreChanges: ["securityGroupIds"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.OpenZfsFileSystem("example", security_group_ids=[example_aws_security_group["id"]],
/// opts = pulumi.ResourceOptions(ignore_changes=["securityGroupIds"]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Fsx.OpenZfsFileSystem("example", new()
///     {
///         SecurityGroupIds = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///     }, new CustomResourceOptions
///     {
///         IgnoreChanges =
///         {
///             "securityGroupIds",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fsx.NewOpenZfsFileSystem(ctx, "example", &fsx.OpenZfsFileSystemArgs{
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Id,
/// 			},
/// 		}, pulumi.IgnoreChanges([]string{
/// 			"securityGroupIds",
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_fsx_openzfsfilesystem" "example" {
///   lifecycle {
///     ignore_changes = [securityGroupIds]
///   }
///   security_group_ids = [exampleAwsSecurityGroup.id]
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
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new OpenZfsFileSystem("example", OpenZfsFileSystemArgs.builder()
///             .securityGroupIds(exampleAwsSecurityGroup.id())
///             .build(), CustomResourceOptions.builder()
///                 .ignoreChanges("securityGroupIds")
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:fsx:OpenZfsFileSystem
///     properties:
///       securityGroupIds:
///         - ${exampleAwsSecurityGroup.id}
///     options:
///       ignoreChanges:
///         - securityGroupIds
/// ```
class OpenZfsFileSystem extends pulumi.CustomResource {
  /// ARN of the file system.
  late final pulumi.Output<String> arn;
  /// Number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days.
  late final pulumi.Output<int?> automaticBackupRetentionDays;
  /// ID of the source backup to create the filesystem from.
  late final pulumi.Output<String?> backupId;
  /// Whether tags for the file system should be copied to backups. Default value is false.
  late final pulumi.Output<bool?> copyTagsToBackups;
  /// Whether tags for the file system should be copied to snapshots. Default value is false.
  late final pulumi.Output<bool?> copyTagsToVolumes;
  /// Recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires `automaticBackupRetentionDays` to be set.
  late final pulumi.Output<String> dailyAutomaticBackupStartTime;
  /// List of delete options, which at present supports only one value that specifies whether to delete all child volumes and snapshots when the file system is deleted. Valid values: `DELETE_CHILD_VOLUMES_AND_SNAPSHOTS`.
  late final pulumi.Output<List<String>?> deleteOptions;
  /// Filesystem deployment type. See the [AWS API documentation](https://docs.aws.amazon.com/fsx/latest/APIReference/API_CreateFileSystemOpenZFSConfiguration.html#FSx-Type-CreateFileSystemOpenZFSConfiguration-DeploymentType) for a list of valid values.
  late final pulumi.Output<String> deploymentType;
  /// SSD IOPS configuration for the Amazon FSx for OpenZFS file system. See `diskIopsConfiguration` Block for details.
  late final pulumi.Output<OpenZfsFileSystemDiskIopsConfiguration> diskIopsConfiguration;
  /// DNS name for the file system, e.g., `fs-12345678.fsx.us-west-2.amazonaws.com`
  late final pulumi.Output<String> dnsName;
  /// IP address of the endpoint that is used to access data or to manage the file system.
  late final pulumi.Output<String> endpointIpAddress;
  /// (Multi-AZ only) Specifies the IP address range in which the endpoints to access your file system will be created.
  late final pulumi.Output<String> endpointIpAddressRange;
  /// Map of tags to apply to the file system's final backup.
  late final pulumi.Output<Map<String, String>?> finalBackupTags;
  /// ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key.
  late final pulumi.Output<String> kmsKeyId;
  /// Set of Elastic Network Interface identifiers from which the file system is accessible The first network interface returned is the primary network interface.
  late final pulumi.Output<List<String>> networkInterfaceIds;
  /// Network type. Valid values are `IPV4` and `DUAL`. Default value is `IPV4`.
  late final pulumi.Output<String> networkType;
  /// AWS account identifier that created the file system.
  late final pulumi.Output<String> ownerId;
  /// (Multi-AZ only) Required when `deploymentType` is set to `MULTI_AZ_1`. This specifies the subnet in which you want the preferred file server to be located.
  late final pulumi.Output<String?> preferredSubnetId;
  /// Configuration block for optional provisioned SSD read cache on file systems that use the Intelligent-Tiering storage class. Required when `storageType` is set to `INTELLIGENT_TIERING`. See `readCacheConfiguration` Block for details.
  late final pulumi.Output<OpenZfsFileSystemReadCacheConfiguration?> readCacheConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration for the root volume of the file system. All other volumes are children or the root volume. See `rootVolumeConfiguration` Block for details.
  late final pulumi.Output<OpenZfsFileSystemRootVolumeConfiguration> rootVolumeConfiguration;
  /// Identifier of the root volume, e.g., `fsvol-12345678`
  late final pulumi.Output<String> rootVolumeId;
  /// (Multi-AZ only) Specifies the route tables in which Amazon FSx creates the rules for routing traffic to the correct file server. You should specify all VPC route tables associated with the subnets in which your clients are located. By default, Amazon FSx selects your VPC's default route table.
  late final pulumi.Output<List<String>> routeTableIds;
  /// List of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  late final pulumi.Output<List<String>?> securityGroupIds;
  /// When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  late final pulumi.Output<bool?> skipFinalBackup;
  /// Storage capacity (GiB) of the file system. Valid values between `64` and `524288`. Required when `storageType` is set to `SSD`. Must not be set when `storageType` is set to `INTELLIGENT_TIERING`.
  late final pulumi.Output<int?> storageCapacity;
  /// Filesystem storage type. Valid values are `SSD` and `INTELLIGENT_TIERING`. `INTELLIGENT_TIERING` requires `deploymentType` to be `MULTI_AZ_1`.
  late final pulumi.Output<String?> storageType;
  /// List of IDs for the subnets that the file system will be accessible from.
  late final pulumi.Output<List<String>> subnetIds;
  /// Map of tags to assign to the file system. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Throughput (MB/s) of the file system. Valid values depend on `deploymentType`. Must be one of `64`, `128`, `256`, `512`, `1024`, `2048`, `3072`, `4096` for `SINGLE_AZ_1`. Must be one of `160`, `320`, `640`, `1280`, `2560`, `3840`, `5120`, `7680`, `10240` for `SINGLE_AZ_2`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> throughputCapacity;
  /// Identifier of the VPC for the file system.
  late final pulumi.Output<String> vpcId;
  /// Preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  late final pulumi.Output<String> weeklyMaintenanceStartTime;

  /// Creates a new [OpenZfsFileSystem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OpenZfsFileSystem]. {@macro pulumi_fsx_open_zfs_file_system_open_zfs_file_system_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OpenZfsFileSystem(
    String name, {
    OpenZfsFileSystemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fsx/openZfsFileSystem:OpenZfsFileSystem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    automaticBackupRetentionDays = registerOutput<int?>('automaticBackupRetentionDays');
    backupId = registerOutput<String?>('backupId');
    copyTagsToBackups = registerOutput<bool?>('copyTagsToBackups');
    copyTagsToVolumes = registerOutput<bool?>('copyTagsToVolumes');
    dailyAutomaticBackupStartTime = registerOutput<String>('dailyAutomaticBackupStartTime');
    deleteOptions = registerOutput<List<String>?>('deleteOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deploymentType = registerOutput<String>('deploymentType');
    diskIopsConfiguration = registerOutput<OpenZfsFileSystemDiskIopsConfiguration>('diskIopsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OpenZfsFileSystemDiskIopsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dnsName = registerOutput<String>('dnsName');
    endpointIpAddress = registerOutput<String>('endpointIpAddress');
    endpointIpAddressRange = registerOutput<String>('endpointIpAddressRange');
    finalBackupTags = registerOutput<Map<String, String>?>('finalBackupTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    kmsKeyId = registerOutput<String>('kmsKeyId');
    networkInterfaceIds = registerOutput<List<String>>('networkInterfaceIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    networkType = registerOutput<String>('networkType');
    ownerId = registerOutput<String>('ownerId');
    preferredSubnetId = registerOutput<String?>('preferredSubnetId');
    readCacheConfiguration = registerOutput<OpenZfsFileSystemReadCacheConfiguration?>('readCacheConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OpenZfsFileSystemReadCacheConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    rootVolumeConfiguration = registerOutput<OpenZfsFileSystemRootVolumeConfiguration>('rootVolumeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OpenZfsFileSystemRootVolumeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rootVolumeId = registerOutput<String>('rootVolumeId');
    routeTableIds = registerOutput<List<String>>('routeTableIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    skipFinalBackup = registerOutput<bool?>('skipFinalBackup');
    storageCapacity = registerOutput<int?>('storageCapacity');
    storageType = registerOutput<String?>('storageType');
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    throughputCapacity = registerOutput<int>('throughputCapacity');
    vpcId = registerOutput<String>('vpcId');
    weeklyMaintenanceStartTime = registerOutput<String>('weeklyMaintenanceStartTime');
  }

  /// Gets an existing [OpenZfsFileSystem] resource's state with the given [name] and [id].
  static OpenZfsFileSystem get(
    String name,
    pulumi.Input<String> id, {
    OpenZfsFileSystemState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OpenZfsFileSystem._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OpenZfsFileSystem._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fsx/openZfsFileSystem:OpenZfsFileSystem',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    automaticBackupRetentionDays = registerOutput<int?>('automaticBackupRetentionDays');
    backupId = registerOutput<String?>('backupId');
    copyTagsToBackups = registerOutput<bool?>('copyTagsToBackups');
    copyTagsToVolumes = registerOutput<bool?>('copyTagsToVolumes');
    dailyAutomaticBackupStartTime = registerOutput<String>('dailyAutomaticBackupStartTime');
    deleteOptions = registerOutput<List<String>?>('deleteOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deploymentType = registerOutput<String>('deploymentType');
    diskIopsConfiguration = registerOutput<OpenZfsFileSystemDiskIopsConfiguration>('diskIopsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OpenZfsFileSystemDiskIopsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dnsName = registerOutput<String>('dnsName');
    endpointIpAddress = registerOutput<String>('endpointIpAddress');
    endpointIpAddressRange = registerOutput<String>('endpointIpAddressRange');
    finalBackupTags = registerOutput<Map<String, String>?>('finalBackupTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    kmsKeyId = registerOutput<String>('kmsKeyId');
    networkInterfaceIds = registerOutput<List<String>>('networkInterfaceIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    networkType = registerOutput<String>('networkType');
    ownerId = registerOutput<String>('ownerId');
    preferredSubnetId = registerOutput<String?>('preferredSubnetId');
    readCacheConfiguration = registerOutput<OpenZfsFileSystemReadCacheConfiguration?>('readCacheConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OpenZfsFileSystemReadCacheConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    rootVolumeConfiguration = registerOutput<OpenZfsFileSystemRootVolumeConfiguration>('rootVolumeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OpenZfsFileSystemRootVolumeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rootVolumeId = registerOutput<String>('rootVolumeId');
    routeTableIds = registerOutput<List<String>>('routeTableIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    skipFinalBackup = registerOutput<bool?>('skipFinalBackup');
    storageCapacity = registerOutput<int?>('storageCapacity');
    storageType = registerOutput<String?>('storageType');
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    throughputCapacity = registerOutput<int>('throughputCapacity');
    vpcId = registerOutput<String>('vpcId');
    weeklyMaintenanceStartTime = registerOutput<String>('weeklyMaintenanceStartTime');
  }

  /// Creates a typed reference to an existing [OpenZfsFileSystem] resource.
  OpenZfsFileSystem.reference(String urn)
    : super(
        'aws:fsx/openZfsFileSystem:OpenZfsFileSystem',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    automaticBackupRetentionDays = registerOutput<int?>('automaticBackupRetentionDays');
    backupId = registerOutput<String?>('backupId');
    copyTagsToBackups = registerOutput<bool?>('copyTagsToBackups');
    copyTagsToVolumes = registerOutput<bool?>('copyTagsToVolumes');
    dailyAutomaticBackupStartTime = registerOutput<String>('dailyAutomaticBackupStartTime');
    deleteOptions = registerOutput<List<String>?>('deleteOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deploymentType = registerOutput<String>('deploymentType');
    diskIopsConfiguration = registerOutput<OpenZfsFileSystemDiskIopsConfiguration>('diskIopsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OpenZfsFileSystemDiskIopsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dnsName = registerOutput<String>('dnsName');
    endpointIpAddress = registerOutput<String>('endpointIpAddress');
    endpointIpAddressRange = registerOutput<String>('endpointIpAddressRange');
    finalBackupTags = registerOutput<Map<String, String>?>('finalBackupTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    kmsKeyId = registerOutput<String>('kmsKeyId');
    networkInterfaceIds = registerOutput<List<String>>('networkInterfaceIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    networkType = registerOutput<String>('networkType');
    ownerId = registerOutput<String>('ownerId');
    preferredSubnetId = registerOutput<String?>('preferredSubnetId');
    readCacheConfiguration = registerOutput<OpenZfsFileSystemReadCacheConfiguration?>('readCacheConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OpenZfsFileSystemReadCacheConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    rootVolumeConfiguration = registerOutput<OpenZfsFileSystemRootVolumeConfiguration>('rootVolumeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OpenZfsFileSystemRootVolumeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rootVolumeId = registerOutput<String>('rootVolumeId');
    routeTableIds = registerOutput<List<String>>('routeTableIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    skipFinalBackup = registerOutput<bool?>('skipFinalBackup');
    storageCapacity = registerOutput<int?>('storageCapacity');
    storageType = registerOutput<String?>('storageType');
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    throughputCapacity = registerOutput<int>('throughputCapacity');
    vpcId = registerOutput<String>('vpcId');
    weeklyMaintenanceStartTime = registerOutput<String>('weeklyMaintenanceStartTime');
  }
}
