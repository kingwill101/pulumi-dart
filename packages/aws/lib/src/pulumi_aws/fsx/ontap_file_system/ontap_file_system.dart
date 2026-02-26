import 'package:pulumi/pulumi.dart';
import '../ontap_file_system_disk_iops_configuration/ontap_file_system_disk_iops_configuration.dart';
import '../ontap_file_system_endpoint/ontap_file_system_endpoint.dart';
import 'ontap_file_system_args.dart';

/// Manages an Amazon FSx for NetApp ONTAP file system.
/// See the [FSx ONTAP User Guide](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/what-is-fsx-ontap.html) for more information.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.fsx.OntapFileSystem("test", {
/// storageCapacity: 1024,
/// subnetIds: [
/// test1.id,
/// test2.id,
/// ],
/// deploymentType: "MULTI_AZ_1",
/// throughputCapacity: 512,
/// preferredSubnetId: test1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.fsx.OntapFileSystem("test",
/// storage_capacity=1024,
/// subnet_ids=[
/// test1["id"],
/// test2["id"],
/// ],
/// deployment_type="MULTI_AZ_1",
/// throughput_capacity=512,
/// preferred_subnet_id=test1["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Fsx.OntapFileSystem("test", new()
/// {
/// StorageCapacity = 1024,
/// SubnetIds = new[]
/// {
/// test1.Id,
/// test2.Id,
/// },
/// DeploymentType = "MULTI_AZ_1",
/// ThroughputCapacity = 512,
/// PreferredSubnetId = test1.Id,
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
/// _, err := fsx.NewOntapFileSystem(ctx, "test", &fsx.OntapFileSystemArgs{
/// StorageCapacity: pulumi.Int(1024),
/// SubnetIds: pulumi.StringArray{
/// test1.Id,
/// test2.Id,
/// },
/// DeploymentType:     pulumi.String("MULTI_AZ_1"),
/// ThroughputCapacity: pulumi.Int(512),
/// PreferredSubnetId:  pulumi.Any(test1.Id),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new OntapFileSystem("test", OntapFileSystemArgs.builder()
/// .storageCapacity(1024)
/// .subnetIds(
/// test1.id(),
/// test2.id())
/// .deploymentType("MULTI_AZ_1")
/// .throughputCapacity(512)
/// .preferredSubnetId(test1.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:fsx:OntapFileSystem
/// properties:
/// storageCapacity: 1024
/// subnetIds:
/// - ${test1.id}
/// - ${test2.id}
/// deploymentType: MULTI_AZ_1
/// throughputCapacity: 512
/// preferredSubnetId: ${test1.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testhapairs = new aws.fsx.OntapFileSystem("testhapairs", {
/// storageCapacity: 2048,
/// subnetIds: [test1.id],
/// deploymentType: "SINGLE_AZ_1",
/// haPairs: 2,
/// throughputCapacityPerHaPair: 128,
/// preferredSubnetId: test1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// testhapairs = aws.fsx.OntapFileSystem("testhapairs",
/// storage_capacity=2048,
/// subnet_ids=[test1["id"]],
/// deployment_type="SINGLE_AZ_1",
/// ha_pairs=2,
/// throughput_capacity_per_ha_pair=128,
/// preferred_subnet_id=test1["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testhapairs = new Aws.Fsx.OntapFileSystem("testhapairs", new()
/// {
/// StorageCapacity = 2048,
/// SubnetIds = new[]
/// {
/// test1.Id,
/// },
/// DeploymentType = "SINGLE_AZ_1",
/// HaPairs = 2,
/// ThroughputCapacityPerHaPair = 128,
/// PreferredSubnetId = test1.Id,
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
/// _, err := fsx.NewOntapFileSystem(ctx, "testhapairs", &fsx.OntapFileSystemArgs{
/// StorageCapacity: pulumi.Int(2048),
/// SubnetIds: pulumi.StringArray{
/// test1.Id,
/// },
/// DeploymentType:              pulumi.String("SINGLE_AZ_1"),
/// HaPairs:                     pulumi.Int(2),
/// ThroughputCapacityPerHaPair: pulumi.Int(128),
/// PreferredSubnetId:           pulumi.Any(test1.Id),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var testhapairs = new OntapFileSystem("testhapairs", OntapFileSystemArgs.builder()
/// .storageCapacity(2048)
/// .subnetIds(test1.id())
/// .deploymentType("SINGLE_AZ_1")
/// .haPairs(2)
/// .throughputCapacityPerHaPair(128)
/// .preferredSubnetId(test1.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testhapairs:
/// type: aws:fsx:OntapFileSystem
/// properties:
/// storageCapacity: 2048
/// subnetIds:
/// - ${test1.id}
/// deploymentType: SINGLE_AZ_1
/// haPairs: 2
/// throughputCapacityPerHaPair: 128
/// preferredSubnetId: ${test1.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testsingleazgen2 = new aws.fsx.OntapFileSystem("testsingleazgen2", {
/// storageCapacity: 4096,
/// subnetIds: [test1.id],
/// deploymentType: "SINGLE_AZ_2",
/// haPairs: 4,
/// throughputCapacityPerHaPair: 384,
/// preferredSubnetId: test1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// testsingleazgen2 = aws.fsx.OntapFileSystem("testsingleazgen2",
/// storage_capacity=4096,
/// subnet_ids=[test1["id"]],
/// deployment_type="SINGLE_AZ_2",
/// ha_pairs=4,
/// throughput_capacity_per_ha_pair=384,
/// preferred_subnet_id=test1["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testsingleazgen2 = new Aws.Fsx.OntapFileSystem("testsingleazgen2", new()
/// {
/// StorageCapacity = 4096,
/// SubnetIds = new[]
/// {
/// test1.Id,
/// },
/// DeploymentType = "SINGLE_AZ_2",
/// HaPairs = 4,
/// ThroughputCapacityPerHaPair = 384,
/// PreferredSubnetId = test1.Id,
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
/// _, err := fsx.NewOntapFileSystem(ctx, "testsingleazgen2", &fsx.OntapFileSystemArgs{
/// StorageCapacity: pulumi.Int(4096),
/// SubnetIds: pulumi.StringArray{
/// test1.Id,
/// },
/// DeploymentType:              pulumi.String("SINGLE_AZ_2"),
/// HaPairs:                     pulumi.Int(4),
/// ThroughputCapacityPerHaPair: pulumi.Int(384),
/// PreferredSubnetId:           pulumi.Any(test1.Id),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var testsingleazgen2 = new OntapFileSystem("testsingleazgen2", OntapFileSystemArgs.builder()
/// .storageCapacity(4096)
/// .subnetIds(test1.id())
/// .deploymentType("SINGLE_AZ_2")
/// .haPairs(4)
/// .throughputCapacityPerHaPair(384)
/// .preferredSubnetId(test1.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testsingleazgen2:
/// type: aws:fsx:OntapFileSystem
/// properties:
/// storageCapacity: 4096
/// subnetIds:
/// - ${test1.id}
/// deploymentType: SINGLE_AZ_2
/// haPairs: 4
/// throughputCapacityPerHaPair: 384
/// preferredSubnetId: ${test1.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testmultiazgen2 = new aws.fsx.OntapFileSystem("testmultiazgen2", {
/// storageCapacity: 1024,
/// subnetIds: [
/// test1.id,
/// test2.id,
/// ],
/// deploymentType: "MULTI_AZ_2",
/// haPairs: 1,
/// throughputCapacityPerHaPair: 384,
/// preferredSubnetId: test1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// testmultiazgen2 = aws.fsx.OntapFileSystem("testmultiazgen2",
/// storage_capacity=1024,
/// subnet_ids=[
/// test1["id"],
/// test2["id"],
/// ],
/// deployment_type="MULTI_AZ_2",
/// ha_pairs=1,
/// throughput_capacity_per_ha_pair=384,
/// preferred_subnet_id=test1["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testmultiazgen2 = new Aws.Fsx.OntapFileSystem("testmultiazgen2", new()
/// {
/// StorageCapacity = 1024,
/// SubnetIds = new[]
/// {
/// test1.Id,
/// test2.Id,
/// },
/// DeploymentType = "MULTI_AZ_2",
/// HaPairs = 1,
/// ThroughputCapacityPerHaPair = 384,
/// PreferredSubnetId = test1.Id,
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
/// _, err := fsx.NewOntapFileSystem(ctx, "testmultiazgen2", &fsx.OntapFileSystemArgs{
/// StorageCapacity: pulumi.Int(1024),
/// SubnetIds: pulumi.StringArray{
/// test1.Id,
/// test2.Id,
/// },
/// DeploymentType:              pulumi.String("MULTI_AZ_2"),
/// HaPairs:                     pulumi.Int(1),
/// ThroughputCapacityPerHaPair: pulumi.Int(384),
/// PreferredSubnetId:           pulumi.Any(test1.Id),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var testmultiazgen2 = new OntapFileSystem("testmultiazgen2", OntapFileSystemArgs.builder()
/// .storageCapacity(1024)
/// .subnetIds(
/// test1.id(),
/// test2.id())
/// .deploymentType("MULTI_AZ_2")
/// .haPairs(1)
/// .throughputCapacityPerHaPair(384)
/// .preferredSubnetId(test1.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testmultiazgen2:
/// type: aws:fsx:OntapFileSystem
/// properties:
/// storageCapacity: 1024
/// subnetIds:
/// - ${test1.id}
/// - ${test2.id}
/// deploymentType: MULTI_AZ_2
/// haPairs: 1
/// throughputCapacityPerHaPair: 384
/// preferredSubnetId: ${test1.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import FSx File Systems using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/ontapFileSystem:OntapFileSystem example fs-543ab12b1ca672f33
/// ```
///
/// Certain resource arguments, like <span pulumi-lang-nodejs="`securityGroupIds`" pulumi-lang-dotnet="`SecurityGroupIds`" pulumi-lang-go="`securityGroupIds`" pulumi-lang-python="`security_group_ids`" pulumi-lang-yaml="`securityGroupIds`" pulumi-lang-java="`securityGroupIds`">`security_group_ids`</span>, do not have a FSx API method for reading the information after creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> to hide the difference. For example:
///
/// <!--Start PulumiCodeChooser -->
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
/// var example = new Aws.Fsx.OntapFileSystem("example", new()
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
/// _, err := fsx.NewOntapFileSystem(ctx, "example", &fsx.OntapFileSystemArgs{
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new OntapFileSystem("example", OntapFileSystemArgs.builder()
/// .securityGroupIds(exampleAwsSecurityGroup.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:fsx:OntapFileSystem
/// properties:
/// securityGroupIds:
/// - ${exampleAwsSecurityGroup.id}
/// ```
/// <!--End PulumiCodeChooser -->
class OntapFileSystem extends CustomResource {
  /// Amazon Resource Name of the file system.
  late final Output<String> arn;

  /// The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days.
  late final Output<int?> automaticBackupRetentionDays;

  /// A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires <span pulumi-lang-nodejs="`automaticBackupRetentionDays`" pulumi-lang-dotnet="`AutomaticBackupRetentionDays`" pulumi-lang-go="`automaticBackupRetentionDays`" pulumi-lang-python="`automatic_backup_retention_days`" pulumi-lang-yaml="`automaticBackupRetentionDays`" pulumi-lang-java="`automaticBackupRetentionDays`">`automatic_backup_retention_days`</span> to be set.
  late final Output<String> dailyAutomaticBackupStartTime;

  /// The filesystem deployment type. Supports `MULTI_AZ_1`, `MULTI_AZ_2`, `SINGLE_AZ_1`, and `SINGLE_AZ_2`.
  late final Output<String> deploymentType;

  /// The SSD IOPS configuration for the Amazon FSx for NetApp ONTAP file system. See Disk Iops Configuration below.
  late final Output<OntapFileSystemDiskIopsConfiguration> diskIopsConfiguration;

  /// The Domain Name Service (DNS) name for the file system. You can mount your file system using its DNS name.
  late final Output<String> dnsName;

  /// Specifies the IP address range in which the endpoints to access your file system will be created. By default, Amazon FSx selects an unused IP address range for you from the 198.19.* range.
  ///
  /// >  **Note:** The 198.19.* range is also used by AWS services such as WorkSpaces and AppStream 2.0 for their [management network interfaces](https://docs.aws.amazon.com/appstream2/latest/developerguide/management_ports.html).
  late final Output<String> endpointIpAddressRange;

  /// The endpoints that are used to access data or to manage the file system using the NetApp ONTAP CLI, REST API, or NetApp SnapMirror. See Endpoints below.
  late final Output<List<OntapFileSystemEndpoint>> endpoints;

  /// The ONTAP administrative password for the fsxadmin user that you can use to administer your file system using the ONTAP CLI and REST API.
  late final Output<String?> fsxAdminPassword;

  /// The number of<span pulumi-lang-nodejs=" haPairs " pulumi-lang-dotnet=" HaPairs " pulumi-lang-go=" haPairs " pulumi-lang-python=" ha_pairs " pulumi-lang-yaml=" haPairs " pulumi-lang-java=" haPairs "> ha_pairs </span>to deploy for the file system. Valid value is 1 for `SINGLE_AZ_1` or `MULTI_AZ_1` and `MULTI_AZ_2`. Valid values are 1 through 12 for `SINGLE_AZ_2`.
  late final Output<int> haPairs;

  /// ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key.
  late final Output<String> kmsKeyId;

  /// Set of Elastic Network Interface identifiers from which the file system is accessible The first network interface returned is the primary network interface.
  late final Output<List<String>> networkInterfaceIds;

  /// AWS account identifier that created the file system.
  late final Output<String> ownerId;

  /// The ID for a subnet. A subnet is a range of IP addresses in your virtual private cloud (VPC).
  late final Output<String> preferredSubnetId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the VPC route tables in which your file system's endpoints will be created. You should specify all VPC route tables associated with the subnets in which your clients are located. By default, Amazon FSx selects your VPC's default route table.
  late final Output<List<String>> routeTableIds;

  /// A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  late final Output<List<String>?> securityGroupIds;

  /// The storage capacity (GiB) of the file system. Valid values between <span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span> and <span pulumi-lang-nodejs="`196608`" pulumi-lang-dotnet="`196608`" pulumi-lang-go="`196608`" pulumi-lang-python="`196608`" pulumi-lang-yaml="`196608`" pulumi-lang-java="`196608`">`196608`</span> for file systems with<span pulumi-lang-nodejs=" deploymentType " pulumi-lang-dotnet=" DeploymentType " pulumi-lang-go=" deploymentType " pulumi-lang-python=" deployment_type " pulumi-lang-yaml=" deploymentType " pulumi-lang-java=" deploymentType "> deployment_type </span>`SINGLE_AZ_1` and `MULTI_AZ_1`. Valid values are between <span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span> and <span pulumi-lang-nodejs="`524288`" pulumi-lang-dotnet="`524288`" pulumi-lang-go="`524288`" pulumi-lang-python="`524288`" pulumi-lang-yaml="`524288`" pulumi-lang-java="`524288`">`524288`</span> for `MULTI_AZ_2`. Valid values between <span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span> (<span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span> per ha pair) and <span pulumi-lang-nodejs="`1048576`" pulumi-lang-dotnet="`1048576`" pulumi-lang-go="`1048576`" pulumi-lang-python="`1048576`" pulumi-lang-yaml="`1048576`" pulumi-lang-java="`1048576`">`1048576`</span> for file systems with<span pulumi-lang-nodejs=" deploymentType " pulumi-lang-dotnet=" DeploymentType " pulumi-lang-go=" deploymentType " pulumi-lang-python=" deployment_type " pulumi-lang-yaml=" deploymentType " pulumi-lang-java=" deploymentType "> deployment_type </span>`SINGLE_AZ_2`. For `SINGLE_AZ_2`, the <span pulumi-lang-nodejs="`1048576`" pulumi-lang-dotnet="`1048576`" pulumi-lang-go="`1048576`" pulumi-lang-python="`1048576`" pulumi-lang-yaml="`1048576`" pulumi-lang-java="`1048576`">`1048576`</span> (1PB) maximum is only supported when using 2 or more ha_pairs, the maximum is <span pulumi-lang-nodejs="`524288`" pulumi-lang-dotnet="`524288`" pulumi-lang-go="`524288`" pulumi-lang-python="`524288`" pulumi-lang-yaml="`524288`" pulumi-lang-java="`524288`">`524288`</span> (512TB) when using 1 ha_pair.
  late final Output<int> storageCapacity;

  /// The filesystem storage type. defaults to `SSD`.
  late final Output<String?> storageType;

  /// A list of IDs for the subnets that the file system will be accessible from. Up to 2 subnets can be provided.
  late final Output<List<String>> subnetIds;

  /// A map of tags to assign to the file system. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Sets the throughput capacity (in MBps) for the file system that you're creating. Valid values are <span pulumi-lang-nodejs="`128`" pulumi-lang-dotnet="`128`" pulumi-lang-go="`128`" pulumi-lang-python="`128`" pulumi-lang-yaml="`128`" pulumi-lang-java="`128`">`128`</span>, <span pulumi-lang-nodejs="`256`" pulumi-lang-dotnet="`256`" pulumi-lang-go="`256`" pulumi-lang-python="`256`" pulumi-lang-yaml="`256`" pulumi-lang-java="`256`">`256`</span>, <span pulumi-lang-nodejs="`512`" pulumi-lang-dotnet="`512`" pulumi-lang-go="`512`" pulumi-lang-python="`512`" pulumi-lang-yaml="`512`" pulumi-lang-java="`512`">`512`</span>, <span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span>, <span pulumi-lang-nodejs="`2048`" pulumi-lang-dotnet="`2048`" pulumi-lang-go="`2048`" pulumi-lang-python="`2048`" pulumi-lang-yaml="`2048`" pulumi-lang-java="`2048`">`2048`</span>, and <span pulumi-lang-nodejs="`4096`" pulumi-lang-dotnet="`4096`" pulumi-lang-go="`4096`" pulumi-lang-python="`4096`" pulumi-lang-yaml="`4096`" pulumi-lang-java="`4096`">`4096`</span>. This parameter is only supported when not using the<span pulumi-lang-nodejs=" haPairs " pulumi-lang-dotnet=" HaPairs " pulumi-lang-go=" haPairs " pulumi-lang-python=" ha_pairs " pulumi-lang-yaml=" haPairs " pulumi-lang-java=" haPairs "> ha_pairs </span>parameter. Either<span pulumi-lang-nodejs=" throughputCapacity " pulumi-lang-dotnet=" ThroughputCapacity " pulumi-lang-go=" throughputCapacity " pulumi-lang-python=" throughput_capacity " pulumi-lang-yaml=" throughputCapacity " pulumi-lang-java=" throughputCapacity "> throughput_capacity </span>or<span pulumi-lang-nodejs=" throughputCapacityPerHaPair " pulumi-lang-dotnet=" ThroughputCapacityPerHaPair " pulumi-lang-go=" throughputCapacityPerHaPair " pulumi-lang-python=" throughput_capacity_per_ha_pair " pulumi-lang-yaml=" throughputCapacityPerHaPair " pulumi-lang-java=" throughputCapacityPerHaPair "> throughput_capacity_per_ha_pair </span>must be specified.
  late final Output<int> throughputCapacity;

  /// Sets the per-HA-pair throughput capacity (in MBps) for the file system that you're creating, as opposed to <span pulumi-lang-nodejs="`throughputCapacity`" pulumi-lang-dotnet="`ThroughputCapacity`" pulumi-lang-go="`throughputCapacity`" pulumi-lang-python="`throughput_capacity`" pulumi-lang-yaml="`throughputCapacity`" pulumi-lang-java="`throughputCapacity`">`throughput_capacity`</span> which specifies the total throughput capacity for the file system. Valid value for `MULTI_AZ_1` and `SINGLE_AZ_1` are <span pulumi-lang-nodejs="`128`" pulumi-lang-dotnet="`128`" pulumi-lang-go="`128`" pulumi-lang-python="`128`" pulumi-lang-yaml="`128`" pulumi-lang-java="`128`">`128`</span>, <span pulumi-lang-nodejs="`256`" pulumi-lang-dotnet="`256`" pulumi-lang-go="`256`" pulumi-lang-python="`256`" pulumi-lang-yaml="`256`" pulumi-lang-java="`256`">`256`</span>, <span pulumi-lang-nodejs="`512`" pulumi-lang-dotnet="`512`" pulumi-lang-go="`512`" pulumi-lang-python="`512`" pulumi-lang-yaml="`512`" pulumi-lang-java="`512`">`512`</span>, <span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span>, <span pulumi-lang-nodejs="`2048`" pulumi-lang-dotnet="`2048`" pulumi-lang-go="`2048`" pulumi-lang-python="`2048`" pulumi-lang-yaml="`2048`" pulumi-lang-java="`2048`">`2048`</span>, and <span pulumi-lang-nodejs="`4096`" pulumi-lang-dotnet="`4096`" pulumi-lang-go="`4096`" pulumi-lang-python="`4096`" pulumi-lang-yaml="`4096`" pulumi-lang-java="`4096`">`4096`</span>. Valid values for deployment type `MULTI_AZ_2` and `SINGLE_AZ_2` are <span pulumi-lang-nodejs="`384`" pulumi-lang-dotnet="`384`" pulumi-lang-go="`384`" pulumi-lang-python="`384`" pulumi-lang-yaml="`384`" pulumi-lang-java="`384`">`384`</span>,<span pulumi-lang-nodejs="`768`" pulumi-lang-dotnet="`768`" pulumi-lang-go="`768`" pulumi-lang-python="`768`" pulumi-lang-yaml="`768`" pulumi-lang-java="`768`">`768`</span>,<span pulumi-lang-nodejs="`1536`" pulumi-lang-dotnet="`1536`" pulumi-lang-go="`1536`" pulumi-lang-python="`1536`" pulumi-lang-yaml="`1536`" pulumi-lang-java="`1536`">`1536`</span>,<span pulumi-lang-nodejs="`3072`" pulumi-lang-dotnet="`3072`" pulumi-lang-go="`3072`" pulumi-lang-python="`3072`" pulumi-lang-yaml="`3072`" pulumi-lang-java="`3072`">`3072`</span>,<span pulumi-lang-nodejs="`6144`" pulumi-lang-dotnet="`6144`" pulumi-lang-go="`6144`" pulumi-lang-python="`6144`" pulumi-lang-yaml="`6144`" pulumi-lang-java="`6144`">`6144`</span> where <span pulumi-lang-nodejs="`haPairs`" pulumi-lang-dotnet="`HaPairs`" pulumi-lang-go="`haPairs`" pulumi-lang-python="`ha_pairs`" pulumi-lang-yaml="`haPairs`" pulumi-lang-java="`haPairs`">`ha_pairs`</span> is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. Valid values for deployment type `SINGLE_AZ_2` are <span pulumi-lang-nodejs="`1536`" pulumi-lang-dotnet="`1536`" pulumi-lang-go="`1536`" pulumi-lang-python="`1536`" pulumi-lang-yaml="`1536`" pulumi-lang-java="`1536`">`1536`</span>, <span pulumi-lang-nodejs="`3072`" pulumi-lang-dotnet="`3072`" pulumi-lang-go="`3072`" pulumi-lang-python="`3072`" pulumi-lang-yaml="`3072`" pulumi-lang-java="`3072`">`3072`</span>, and <span pulumi-lang-nodejs="`6144`" pulumi-lang-dotnet="`6144`" pulumi-lang-go="`6144`" pulumi-lang-python="`6144`" pulumi-lang-yaml="`6144`" pulumi-lang-java="`6144`">`6144`</span> where <span pulumi-lang-nodejs="`haPairs`" pulumi-lang-dotnet="`HaPairs`" pulumi-lang-go="`haPairs`" pulumi-lang-python="`ha_pairs`" pulumi-lang-yaml="`haPairs`" pulumi-lang-java="`haPairs`">`ha_pairs`</span> is greater than 1. This parameter is only supported when specifying the<span pulumi-lang-nodejs=" haPairs " pulumi-lang-dotnet=" HaPairs " pulumi-lang-go=" haPairs " pulumi-lang-python=" ha_pairs " pulumi-lang-yaml=" haPairs " pulumi-lang-java=" haPairs "> ha_pairs </span>parameter. Either<span pulumi-lang-nodejs=" throughputCapacity " pulumi-lang-dotnet=" ThroughputCapacity " pulumi-lang-go=" throughputCapacity " pulumi-lang-python=" throughput_capacity " pulumi-lang-yaml=" throughputCapacity " pulumi-lang-java=" throughputCapacity "> throughput_capacity </span>or<span pulumi-lang-nodejs=" throughputCapacityPerHaPair " pulumi-lang-dotnet=" ThroughputCapacityPerHaPair " pulumi-lang-go=" throughputCapacityPerHaPair " pulumi-lang-python=" throughput_capacity_per_ha_pair " pulumi-lang-yaml=" throughputCapacityPerHaPair " pulumi-lang-java=" throughputCapacityPerHaPair "> throughput_capacity_per_ha_pair </span>must be specified.
  late final Output<int> throughputCapacityPerHaPair;

  /// Identifier of the Virtual Private Cloud for the file system.
  late final Output<String> vpcId;

  /// The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  late final Output<String> weeklyMaintenanceStartTime;

  OntapFileSystem(
    String name, {
    OntapFileSystemArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:fsx/ontapFileSystem:OntapFileSystem',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
