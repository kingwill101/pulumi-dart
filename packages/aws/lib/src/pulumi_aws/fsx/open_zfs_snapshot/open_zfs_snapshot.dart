import 'package:pulumi/pulumi.dart';
import 'open_zfs_snapshot_args.dart';

/// Manages an Amazon FSx for OpenZFS volume.
/// See the [FSx OpenZFS User Guide](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/what-is-fsx.html) for more information.
///
/// ## Example Usage
///
/// ### Root volume Example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleOpenZfsFileSystem = new aws.fsx.OpenZfsFileSystem("example", {
/// storageCapacity: 64,
/// subnetIds: [exampleAwsSubnet.id],
/// deploymentType: "SINGLE_AZ_1",
/// throughputCapacity: 64,
/// });
/// const example = new aws.fsx.OpenZfsSnapshot("example", {
/// name: "example",
/// volumeId: exampleOpenZfsFileSystem.rootVolumeId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_open_zfs_file_system = aws.fsx.OpenZfsFileSystem("example",
/// storage_capacity=64,
/// subnet_ids=[example_aws_subnet["id"]],
/// deployment_type="SINGLE_AZ_1",
/// throughput_capacity=64)
/// example = aws.fsx.OpenZfsSnapshot("example",
/// name="example",
/// volume_id=example_open_zfs_file_system.root_volume_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleOpenZfsFileSystem = new Aws.Fsx.OpenZfsFileSystem("example", new()
/// {
/// StorageCapacity = 64,
/// SubnetIds = new[]
/// {
/// exampleAwsSubnet.Id,
/// },
/// DeploymentType = "SINGLE_AZ_1",
/// ThroughputCapacity = 64,
/// });
///
/// var example = new Aws.Fsx.OpenZfsSnapshot("example", new()
/// {
/// Name = "example",
/// VolumeId = exampleOpenZfsFileSystem.RootVolumeId,
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
/// exampleOpenZfsFileSystem, err := fsx.NewOpenZfsFileSystem(ctx, "example", &fsx.OpenZfsFileSystemArgs{
/// StorageCapacity: pulumi.Int(64),
/// SubnetIds: pulumi.StringArray{
/// exampleAwsSubnet.Id,
/// },
/// DeploymentType:     pulumi.String("SINGLE_AZ_1"),
/// ThroughputCapacity: pulumi.Int(64),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = fsx.NewOpenZfsSnapshot(ctx, "example", &fsx.OpenZfsSnapshotArgs{
/// Name:     pulumi.String("example"),
/// VolumeId: exampleOpenZfsFileSystem.RootVolumeId,
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
/// import com.pulumi.aws.fsx.OpenZfsSnapshot;
/// import com.pulumi.aws.fsx.OpenZfsSnapshotArgs;
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
/// var exampleOpenZfsFileSystem = new OpenZfsFileSystem("exampleOpenZfsFileSystem", OpenZfsFileSystemArgs.builder()
/// .storageCapacity(64)
/// .subnetIds(exampleAwsSubnet.id())
/// .deploymentType("SINGLE_AZ_1")
/// .throughputCapacity(64)
/// .build());
///
/// var example = new OpenZfsSnapshot("example", OpenZfsSnapshotArgs.builder()
/// .name("example")
/// .volumeId(exampleOpenZfsFileSystem.rootVolumeId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:fsx:OpenZfsSnapshot
/// properties:
/// name: example
/// volumeId: ${exampleOpenZfsFileSystem.rootVolumeId}
/// exampleOpenZfsFileSystem:
/// type: aws:fsx:OpenZfsFileSystem
/// name: example
/// properties:
/// storageCapacity: 64
/// subnetIds:
/// - ${exampleAwsSubnet.id}
/// deploymentType: SINGLE_AZ_1
/// throughputCapacity: 64
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Child volume Example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleOpenZfsFileSystem = new aws.fsx.OpenZfsFileSystem("example", {
/// storageCapacity: 64,
/// subnetIds: [exampleAwsSubnet.id],
/// deploymentType: "SINGLE_AZ_1",
/// throughputCapacity: 64,
/// });
/// const exampleOpenZfsVolume = new aws.fsx.OpenZfsVolume("example", {
/// name: "example",
/// parentVolumeId: exampleOpenZfsFileSystem.rootVolumeId,
/// });
/// const example = new aws.fsx.OpenZfsSnapshot("example", {
/// name: "example",
/// volumeId: exampleOpenZfsVolume.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_open_zfs_file_system = aws.fsx.OpenZfsFileSystem("example",
/// storage_capacity=64,
/// subnet_ids=[example_aws_subnet["id"]],
/// deployment_type="SINGLE_AZ_1",
/// throughput_capacity=64)
/// example_open_zfs_volume = aws.fsx.OpenZfsVolume("example",
/// name="example",
/// parent_volume_id=example_open_zfs_file_system.root_volume_id)
/// example = aws.fsx.OpenZfsSnapshot("example",
/// name="example",
/// volume_id=example_open_zfs_volume.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleOpenZfsFileSystem = new Aws.Fsx.OpenZfsFileSystem("example", new()
/// {
/// StorageCapacity = 64,
/// SubnetIds = new[]
/// {
/// exampleAwsSubnet.Id,
/// },
/// DeploymentType = "SINGLE_AZ_1",
/// ThroughputCapacity = 64,
/// });
///
/// var exampleOpenZfsVolume = new Aws.Fsx.OpenZfsVolume("example", new()
/// {
/// Name = "example",
/// ParentVolumeId = exampleOpenZfsFileSystem.RootVolumeId,
/// });
///
/// var example = new Aws.Fsx.OpenZfsSnapshot("example", new()
/// {
/// Name = "example",
/// VolumeId = exampleOpenZfsVolume.Id,
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
/// exampleOpenZfsFileSystem, err := fsx.NewOpenZfsFileSystem(ctx, "example", &fsx.OpenZfsFileSystemArgs{
/// StorageCapacity: pulumi.Int(64),
/// SubnetIds: pulumi.StringArray{
/// exampleAwsSubnet.Id,
/// },
/// DeploymentType:     pulumi.String("SINGLE_AZ_1"),
/// ThroughputCapacity: pulumi.Int(64),
/// })
/// if err != nil {
/// return err
/// }
/// exampleOpenZfsVolume, err := fsx.NewOpenZfsVolume(ctx, "example", &fsx.OpenZfsVolumeArgs{
/// Name:           pulumi.String("example"),
/// ParentVolumeId: exampleOpenZfsFileSystem.RootVolumeId,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = fsx.NewOpenZfsSnapshot(ctx, "example", &fsx.OpenZfsSnapshotArgs{
/// Name:     pulumi.String("example"),
/// VolumeId: exampleOpenZfsVolume.ID(),
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
/// import com.pulumi.aws.fsx.OpenZfsVolume;
/// import com.pulumi.aws.fsx.OpenZfsVolumeArgs;
/// import com.pulumi.aws.fsx.OpenZfsSnapshot;
/// import com.pulumi.aws.fsx.OpenZfsSnapshotArgs;
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
/// var exampleOpenZfsFileSystem = new OpenZfsFileSystem("exampleOpenZfsFileSystem", OpenZfsFileSystemArgs.builder()
/// .storageCapacity(64)
/// .subnetIds(exampleAwsSubnet.id())
/// .deploymentType("SINGLE_AZ_1")
/// .throughputCapacity(64)
/// .build());
///
/// var exampleOpenZfsVolume = new OpenZfsVolume("exampleOpenZfsVolume", OpenZfsVolumeArgs.builder()
/// .name("example")
/// .parentVolumeId(exampleOpenZfsFileSystem.rootVolumeId())
/// .build());
///
/// var example = new OpenZfsSnapshot("example", OpenZfsSnapshotArgs.builder()
/// .name("example")
/// .volumeId(exampleOpenZfsVolume.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:fsx:OpenZfsSnapshot
/// properties:
/// name: example
/// volumeId: ${exampleOpenZfsVolume.id}
/// exampleOpenZfsVolume:
/// type: aws:fsx:OpenZfsVolume
/// name: example
/// properties:
/// name: example
/// parentVolumeId: ${exampleOpenZfsFileSystem.rootVolumeId}
/// exampleOpenZfsFileSystem:
/// type: aws:fsx:OpenZfsFileSystem
/// name: example
/// properties:
/// storageCapacity: 64
/// subnetIds:
/// - ${exampleAwsSubnet.id}
/// deploymentType: SINGLE_AZ_1
/// throughputCapacity: 64
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import FSx OpenZFS snapshot using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/openZfsSnapshot:OpenZfsSnapshot example fs-543ab12b1ca672f33
/// ```
class OpenZfsSnapshot extends CustomResource {
  /// Amazon Resource Name of the snapshot.
  late final Output<String> arn;
  late final Output<String> creationTime;

  /// The name of the Snapshot. You can use a maximum of 203 alphanumeric characters plus either _ or -  or : or . for the name.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the file system. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set <span pulumi-lang-nodejs="`copyTagsToBackups`" pulumi-lang-dotnet="`CopyTagsToBackups`" pulumi-lang-go="`copyTagsToBackups`" pulumi-lang-python="`copy_tags_to_backups`" pulumi-lang-yaml="`copyTagsToBackups`" pulumi-lang-java="`copyTagsToBackups`">`copy_tags_to_backups`</span> to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The ID of the volume to snapshot. This can be the root volume or a child volume.
  late final Output<String> volumeId;

  OpenZfsSnapshot(
    String name, {
    OpenZfsSnapshotArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:fsx/openZfsSnapshot:OpenZfsSnapshot',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.creationTime = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.volumeId = Output.createUnknown<String>();
  }
}
