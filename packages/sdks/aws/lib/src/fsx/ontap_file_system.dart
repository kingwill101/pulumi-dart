import 'package:pulumi/pulumi.dart' as pulumi;
import 'ontap_file_system_args.dart';
import 'ontap_file_system_disk_iops_configuration.dart';
import 'ontap_file_system_state.dart';

/// Manages an Amazon FSx for NetApp ONTAP file system.
/// See the [FSx ONTAP User Guide](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/what-is-fsx-ontap.html) for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.fsx.OntapFileSystem("test", {
///     storageCapacity: 1024,
///     subnetIds: [
///         test1.id,
///         test2.id,
///     ],
///     deploymentType: "MULTI_AZ_1",
///     throughputCapacity: 512,
///     preferredSubnetId: test1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.fsx.OntapFileSystem("test",
///     storage_capacity=1024,
///     subnet_ids=[
///         test1["id"],
///         test2["id"],
///     ],
///     deployment_type="MULTI_AZ_1",
///     throughput_capacity=512,
///     preferred_subnet_id=test1["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Fsx.OntapFileSystem("test", new()
///     {
///         StorageCapacity = 1024,
///         SubnetIds = new[]
///         {
///             test1.Id,
///             test2.Id,
///         },
///         DeploymentType = "MULTI_AZ_1",
///         ThroughputCapacity = 512,
///         PreferredSubnetId = test1.Id,
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
/// 		_, err := fsx.NewOntapFileSystem(ctx, "test", &fsx.OntapFileSystemArgs{
/// 			StorageCapacity: pulumi.Int(1024),
/// 			SubnetIds: pulumi.StringArray{
/// 				test1.Id,
/// 				test2.Id,
/// 			},
/// 			DeploymentType:     pulumi.String("MULTI_AZ_1"),
/// 			ThroughputCapacity: pulumi.Int(512),
/// 			PreferredSubnetId:  pulumi.Any(test1.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fsx.OntapFileSystem;
/// import com.pulumi.aws.fsx.OntapFileSystemArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var test = new OntapFileSystem("test", OntapFileSystemArgs.builder()
///             .storageCapacity(1024)
///             .subnetIds(
///                 test1.id(),
///                 test2.id())
///             .deploymentType("MULTI_AZ_1")
///             .throughputCapacity(512)
///             .preferredSubnetId(test1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:fsx:OntapFileSystem
///     properties:
///       storageCapacity: 1024
///       subnetIds:
///         - ${test1.id}
///         - ${test2.id}
///       deploymentType: MULTI_AZ_1
///       throughputCapacity: 512
///       preferredSubnetId: ${test1.id}
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testhapairs = new aws.fsx.OntapFileSystem("testhapairs", {
///     storageCapacity: 2048,
///     subnetIds: [test1.id],
///     deploymentType: "SINGLE_AZ_1",
///     haPairs: 2,
///     throughputCapacityPerHaPair: 128,
///     preferredSubnetId: test1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// testhapairs = aws.fsx.OntapFileSystem("testhapairs",
///     storage_capacity=2048,
///     subnet_ids=[test1["id"]],
///     deployment_type="SINGLE_AZ_1",
///     ha_pairs=2,
///     throughput_capacity_per_ha_pair=128,
///     preferred_subnet_id=test1["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testhapairs = new Aws.Fsx.OntapFileSystem("testhapairs", new()
///     {
///         StorageCapacity = 2048,
///         SubnetIds = new[]
///         {
///             test1.Id,
///         },
///         DeploymentType = "SINGLE_AZ_1",
///         HaPairs = 2,
///         ThroughputCapacityPerHaPair = 128,
///         PreferredSubnetId = test1.Id,
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
/// 		_, err := fsx.NewOntapFileSystem(ctx, "testhapairs", &fsx.OntapFileSystemArgs{
/// 			StorageCapacity: pulumi.Int(2048),
/// 			SubnetIds: pulumi.StringArray{
/// 				test1.Id,
/// 			},
/// 			DeploymentType:              pulumi.String("SINGLE_AZ_1"),
/// 			HaPairs:                     pulumi.Int(2),
/// 			ThroughputCapacityPerHaPair: pulumi.Int(128),
/// 			PreferredSubnetId:           pulumi.Any(test1.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fsx.OntapFileSystem;
/// import com.pulumi.aws.fsx.OntapFileSystemArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var testhapairs = new OntapFileSystem("testhapairs", OntapFileSystemArgs.builder()
///             .storageCapacity(2048)
///             .subnetIds(test1.id())
///             .deploymentType("SINGLE_AZ_1")
///             .haPairs(2)
///             .throughputCapacityPerHaPair(128)
///             .preferredSubnetId(test1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testhapairs:
///     type: aws:fsx:OntapFileSystem
///     properties:
///       storageCapacity: 2048
///       subnetIds:
///         - ${test1.id}
///       deploymentType: SINGLE_AZ_1
///       haPairs: 2
///       throughputCapacityPerHaPair: 128
///       preferredSubnetId: ${test1.id}
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testsingleazgen2 = new aws.fsx.OntapFileSystem("testsingleazgen2", {
///     storageCapacity: 4096,
///     subnetIds: [test1.id],
///     deploymentType: "SINGLE_AZ_2",
///     haPairs: 4,
///     throughputCapacityPerHaPair: 384,
///     preferredSubnetId: test1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// testsingleazgen2 = aws.fsx.OntapFileSystem("testsingleazgen2",
///     storage_capacity=4096,
///     subnet_ids=[test1["id"]],
///     deployment_type="SINGLE_AZ_2",
///     ha_pairs=4,
///     throughput_capacity_per_ha_pair=384,
///     preferred_subnet_id=test1["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testsingleazgen2 = new Aws.Fsx.OntapFileSystem("testsingleazgen2", new()
///     {
///         StorageCapacity = 4096,
///         SubnetIds = new[]
///         {
///             test1.Id,
///         },
///         DeploymentType = "SINGLE_AZ_2",
///         HaPairs = 4,
///         ThroughputCapacityPerHaPair = 384,
///         PreferredSubnetId = test1.Id,
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
/// 		_, err := fsx.NewOntapFileSystem(ctx, "testsingleazgen2", &fsx.OntapFileSystemArgs{
/// 			StorageCapacity: pulumi.Int(4096),
/// 			SubnetIds: pulumi.StringArray{
/// 				test1.Id,
/// 			},
/// 			DeploymentType:              pulumi.String("SINGLE_AZ_2"),
/// 			HaPairs:                     pulumi.Int(4),
/// 			ThroughputCapacityPerHaPair: pulumi.Int(384),
/// 			PreferredSubnetId:           pulumi.Any(test1.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fsx.OntapFileSystem;
/// import com.pulumi.aws.fsx.OntapFileSystemArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var testsingleazgen2 = new OntapFileSystem("testsingleazgen2", OntapFileSystemArgs.builder()
///             .storageCapacity(4096)
///             .subnetIds(test1.id())
///             .deploymentType("SINGLE_AZ_2")
///             .haPairs(4)
///             .throughputCapacityPerHaPair(384)
///             .preferredSubnetId(test1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testsingleazgen2:
///     type: aws:fsx:OntapFileSystem
///     properties:
///       storageCapacity: 4096
///       subnetIds:
///         - ${test1.id}
///       deploymentType: SINGLE_AZ_2
///       haPairs: 4
///       throughputCapacityPerHaPair: 384
///       preferredSubnetId: ${test1.id}
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testmultiazgen2 = new aws.fsx.OntapFileSystem("testmultiazgen2", {
///     storageCapacity: 1024,
///     subnetIds: [
///         test1.id,
///         test2.id,
///     ],
///     deploymentType: "MULTI_AZ_2",
///     haPairs: 1,
///     throughputCapacityPerHaPair: 384,
///     preferredSubnetId: test1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// testmultiazgen2 = aws.fsx.OntapFileSystem("testmultiazgen2",
///     storage_capacity=1024,
///     subnet_ids=[
///         test1["id"],
///         test2["id"],
///     ],
///     deployment_type="MULTI_AZ_2",
///     ha_pairs=1,
///     throughput_capacity_per_ha_pair=384,
///     preferred_subnet_id=test1["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testmultiazgen2 = new Aws.Fsx.OntapFileSystem("testmultiazgen2", new()
///     {
///         StorageCapacity = 1024,
///         SubnetIds = new[]
///         {
///             test1.Id,
///             test2.Id,
///         },
///         DeploymentType = "MULTI_AZ_2",
///         HaPairs = 1,
///         ThroughputCapacityPerHaPair = 384,
///         PreferredSubnetId = test1.Id,
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
/// 		_, err := fsx.NewOntapFileSystem(ctx, "testmultiazgen2", &fsx.OntapFileSystemArgs{
/// 			StorageCapacity: pulumi.Int(1024),
/// 			SubnetIds: pulumi.StringArray{
/// 				test1.Id,
/// 				test2.Id,
/// 			},
/// 			DeploymentType:              pulumi.String("MULTI_AZ_2"),
/// 			HaPairs:                     pulumi.Int(1),
/// 			ThroughputCapacityPerHaPair: pulumi.Int(384),
/// 			PreferredSubnetId:           pulumi.Any(test1.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fsx.OntapFileSystem;
/// import com.pulumi.aws.fsx.OntapFileSystemArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var testmultiazgen2 = new OntapFileSystem("testmultiazgen2", OntapFileSystemArgs.builder()
///             .storageCapacity(1024)
///             .subnetIds(
///                 test1.id(),
///                 test2.id())
///             .deploymentType("MULTI_AZ_2")
///             .haPairs(1)
///             .throughputCapacityPerHaPair(384)
///             .preferredSubnetId(test1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testmultiazgen2:
///     type: aws:fsx:OntapFileSystem
///     properties:
///       storageCapacity: 1024
///       subnetIds:
///         - ${test1.id}
///         - ${test2.id}
///       deploymentType: MULTI_AZ_2
///       haPairs: 1
///       throughputCapacityPerHaPair: 384
///       preferredSubnetId: ${test1.id}
/// ```
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
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.fsx.OntapFileSystem("example", {securityGroupIds: [exampleAwsSecurityGroup.id]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.OntapFileSystem("example", security_group_ids=[example_aws_security_group["id"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Fsx.OntapFileSystem("example", new()
///     {
///         SecurityGroupIds = new[]
///         {
///             exampleAwsSecurityGroup.Id,
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
/// 		_, err := fsx.NewOntapFileSystem(ctx, "example", &fsx.OntapFileSystemArgs{
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Id,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fsx.OntapFileSystem;
/// import com.pulumi.aws.fsx.OntapFileSystemArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new OntapFileSystem("example", OntapFileSystemArgs.builder()
///             .securityGroupIds(exampleAwsSecurityGroup.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:fsx:OntapFileSystem
///     properties:
///       securityGroupIds:
///         - ${exampleAwsSecurityGroup.id}
/// ```
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
  /// &gt;  **Note:** The 198.19.* range is also used by AWS services such as WorkSpaces and AppStream 2.0 for their [management network interfaces](https://docs.aws.amazon.com/appstream2/latest/developerguide/management_ports.html).
  late final pulumi.Output<String> endpointIpAddressRange;

  /// The endpoints that are used to access data or to manage the file system using the NetApp ONTAP CLI, REST API, or NetApp SnapMirror. See Endpoints below.
  late final pulumi.Output<List<Map<String, dynamic>>> endpoints;

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

  /// Creates a new [OntapFileSystem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OntapFileSystem]. {@macro pulumi_fsx_ontap_file_system_ontap_file_system_args_doc}
  /// [options] Resource options controlling this resource's behavior.
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
    arn = registerOutput<String>('arn');
    automaticBackupRetentionDays = registerOutput<int?>(
      'automaticBackupRetentionDays',
    );
    dailyAutomaticBackupStartTime = registerOutput<String>(
      'dailyAutomaticBackupStartTime',
    );
    deploymentType = registerOutput<String>('deploymentType');
    diskIopsConfiguration =
        registerOutput<OntapFileSystemDiskIopsConfiguration>(
          'diskIopsConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return OntapFileSystemDiskIopsConfiguration.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    dnsName = registerOutput<String>('dnsName');
    endpointIpAddressRange = registerOutput<String>('endpointIpAddressRange');
    endpoints = registerOutput<List<Map<String, dynamic>>>('endpoints');
    fsxAdminPassword = registerOutput<String?>('fsxAdminPassword');
    haPairs = registerOutput<int>('haPairs');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    networkInterfaceIds = registerOutput<List<String>>('networkInterfaceIds');
    ownerId = registerOutput<String>('ownerId');
    preferredSubnetId = registerOutput<String>('preferredSubnetId');
    region = registerOutput<String>('region');
    routeTableIds = registerOutput<List<String>>('routeTableIds');
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    storageCapacity = registerOutput<int>('storageCapacity');
    storageType = registerOutput<String?>('storageType');
    subnetIds = registerOutput<List<String>>('subnetIds');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    throughputCapacity = registerOutput<int>('throughputCapacity');
    throughputCapacityPerHaPair = registerOutput<int>(
      'throughputCapacityPerHaPair',
    );
    vpcId = registerOutput<String>('vpcId');
    weeklyMaintenanceStartTime = registerOutput<String>(
      'weeklyMaintenanceStartTime',
    );
  }

  /// Gets an existing [OntapFileSystem] resource's state with the given [name] and [id].
  static OntapFileSystem get(
    String name,
    pulumi.Input<String> id, {
    OntapFileSystemState? state,
  }) {
    return OntapFileSystem._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OntapFileSystem._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:fsx/ontapFileSystem:OntapFileSystem',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    automaticBackupRetentionDays = registerOutput<int?>(
      'automaticBackupRetentionDays',
    );
    dailyAutomaticBackupStartTime = registerOutput<String>(
      'dailyAutomaticBackupStartTime',
    );
    deploymentType = registerOutput<String>('deploymentType');
    diskIopsConfiguration =
        registerOutput<OntapFileSystemDiskIopsConfiguration>(
          'diskIopsConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return OntapFileSystemDiskIopsConfiguration.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    dnsName = registerOutput<String>('dnsName');
    endpointIpAddressRange = registerOutput<String>('endpointIpAddressRange');
    endpoints = registerOutput<List<Map<String, dynamic>>>('endpoints');
    fsxAdminPassword = registerOutput<String?>('fsxAdminPassword');
    haPairs = registerOutput<int>('haPairs');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    networkInterfaceIds = registerOutput<List<String>>('networkInterfaceIds');
    ownerId = registerOutput<String>('ownerId');
    preferredSubnetId = registerOutput<String>('preferredSubnetId');
    region = registerOutput<String>('region');
    routeTableIds = registerOutput<List<String>>('routeTableIds');
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    storageCapacity = registerOutput<int>('storageCapacity');
    storageType = registerOutput<String?>('storageType');
    subnetIds = registerOutput<List<String>>('subnetIds');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    throughputCapacity = registerOutput<int>('throughputCapacity');
    throughputCapacityPerHaPair = registerOutput<int>(
      'throughputCapacityPerHaPair',
    );
    vpcId = registerOutput<String>('vpcId');
    weeklyMaintenanceStartTime = registerOutput<String>(
      'weeklyMaintenanceStartTime',
    );
  }
}
