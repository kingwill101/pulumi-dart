import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_zfs_snapshot_args.dart';
import 'open_zfs_snapshot_state.dart';

/// Manages an Amazon FSx for OpenZFS volume.
/// See the [FSx OpenZFS User Guide](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/what-is-fsx.html) for more information.
///
/// ## Example Usage
///
/// ### Root volume Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleOpenZfsFileSystem = new aws.fsx.OpenZfsFileSystem("example", {
///     storageCapacity: 64,
///     subnetIds: [exampleAwsSubnet.id],
///     deploymentType: "SINGLE_AZ_1",
///     throughputCapacity: 64,
/// });
/// const example = new aws.fsx.OpenZfsSnapshot("example", {
///     name: "example",
///     volumeId: exampleOpenZfsFileSystem.rootVolumeId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_open_zfs_file_system = aws.fsx.OpenZfsFileSystem("example",
///     storage_capacity=64,
///     subnet_ids=[example_aws_subnet["id"]],
///     deployment_type="SINGLE_AZ_1",
///     throughput_capacity=64)
/// example = aws.fsx.OpenZfsSnapshot("example",
///     name="example",
///     volume_id=example_open_zfs_file_system.root_volume_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleOpenZfsFileSystem = new Aws.Fsx.OpenZfsFileSystem("example", new()
///     {
///         StorageCapacity = 64,
///         SubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///         DeploymentType = "SINGLE_AZ_1",
///         ThroughputCapacity = 64,
///     });
///
///     var example = new Aws.Fsx.OpenZfsSnapshot("example", new()
///     {
///         Name = "example",
///         VolumeId = exampleOpenZfsFileSystem.RootVolumeId,
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
/// 		exampleOpenZfsFileSystem, err := fsx.NewOpenZfsFileSystem(ctx, "example", &fsx.OpenZfsFileSystemArgs{
/// 			StorageCapacity: pulumi.Int(64),
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 			DeploymentType:     pulumi.String("SINGLE_AZ_1"),
/// 			ThroughputCapacity: pulumi.Int(64),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fsx.NewOpenZfsSnapshot(ctx, "example", &fsx.OpenZfsSnapshotArgs{
/// 			Name:     pulumi.String("example"),
/// 			VolumeId: exampleOpenZfsFileSystem.RootVolumeId,
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
/// resource "aws_fsx_openzfssnapshot" "example" {
///   name      = "example"
///   volume_id = aws_fsx_openzfsfilesystem.example.root_volume_id
/// }
/// resource "aws_fsx_openzfsfilesystem" "example" {
///   storage_capacity    = 64
///   subnet_ids          = [exampleAwsSubnet.id]
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
/// import com.pulumi.aws.fsx.OpenZfsSnapshot;
/// import com.pulumi.aws.fsx.OpenZfsSnapshotArgs;
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
///         var exampleOpenZfsFileSystem = new OpenZfsFileSystem("exampleOpenZfsFileSystem", OpenZfsFileSystemArgs.builder()
///             .storageCapacity(64)
///             .subnetIds(exampleAwsSubnet.id())
///             .deploymentType("SINGLE_AZ_1")
///             .throughputCapacity(64)
///             .build());
///
///         var example = new OpenZfsSnapshot("example", OpenZfsSnapshotArgs.builder()
///             .name("example")
///             .volumeId(exampleOpenZfsFileSystem.rootVolumeId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:fsx:OpenZfsSnapshot
///     properties:
///       name: example
///       volumeId: ${exampleOpenZfsFileSystem.rootVolumeId}
///   exampleOpenZfsFileSystem:
///     type: aws:fsx:OpenZfsFileSystem
///     name: example
///     properties:
///       storageCapacity: 64
///       subnetIds:
///         - ${exampleAwsSubnet.id}
///       deploymentType: SINGLE_AZ_1
///       throughputCapacity: 64
/// ```
///
///
/// ### Child volume Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleOpenZfsFileSystem = new aws.fsx.OpenZfsFileSystem("example", {
///     storageCapacity: 64,
///     subnetIds: [exampleAwsSubnet.id],
///     deploymentType: "SINGLE_AZ_1",
///     throughputCapacity: 64,
/// });
/// const exampleOpenZfsVolume = new aws.fsx.OpenZfsVolume("example", {
///     name: "example",
///     parentVolumeId: exampleOpenZfsFileSystem.rootVolumeId,
/// });
/// const example = new aws.fsx.OpenZfsSnapshot("example", {
///     name: "example",
///     volumeId: exampleOpenZfsVolume.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_open_zfs_file_system = aws.fsx.OpenZfsFileSystem("example",
///     storage_capacity=64,
///     subnet_ids=[example_aws_subnet["id"]],
///     deployment_type="SINGLE_AZ_1",
///     throughput_capacity=64)
/// example_open_zfs_volume = aws.fsx.OpenZfsVolume("example",
///     name="example",
///     parent_volume_id=example_open_zfs_file_system.root_volume_id)
/// example = aws.fsx.OpenZfsSnapshot("example",
///     name="example",
///     volume_id=example_open_zfs_volume.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleOpenZfsFileSystem = new Aws.Fsx.OpenZfsFileSystem("example", new()
///     {
///         StorageCapacity = 64,
///         SubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///         DeploymentType = "SINGLE_AZ_1",
///         ThroughputCapacity = 64,
///     });
///
///     var exampleOpenZfsVolume = new Aws.Fsx.OpenZfsVolume("example", new()
///     {
///         Name = "example",
///         ParentVolumeId = exampleOpenZfsFileSystem.RootVolumeId,
///     });
///
///     var example = new Aws.Fsx.OpenZfsSnapshot("example", new()
///     {
///         Name = "example",
///         VolumeId = exampleOpenZfsVolume.Id,
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
/// 		exampleOpenZfsFileSystem, err := fsx.NewOpenZfsFileSystem(ctx, "example", &fsx.OpenZfsFileSystemArgs{
/// 			StorageCapacity: pulumi.Int(64),
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 			DeploymentType:     pulumi.String("SINGLE_AZ_1"),
/// 			ThroughputCapacity: pulumi.Int(64),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleOpenZfsVolume, err := fsx.NewOpenZfsVolume(ctx, "example", &fsx.OpenZfsVolumeArgs{
/// 			Name:           pulumi.String("example"),
/// 			ParentVolumeId: exampleOpenZfsFileSystem.RootVolumeId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fsx.NewOpenZfsSnapshot(ctx, "example", &fsx.OpenZfsSnapshotArgs{
/// 			Name:     pulumi.String("example"),
/// 			VolumeId: exampleOpenZfsVolume.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_fsx_openzfssnapshot" "example" {
///   name      = "example"
///   volume_id = aws_fsx_openzfsvolume.example.id
/// }
/// resource "aws_fsx_openzfsvolume" "example" {
///   name             = "example"
///   parent_volume_id = aws_fsx_openzfsfilesystem.example.root_volume_id
/// }
/// resource "aws_fsx_openzfsfilesystem" "example" {
///   storage_capacity    = 64
///   subnet_ids          = [exampleAwsSubnet.id]
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
/// import com.pulumi.aws.fsx.OpenZfsVolume;
/// import com.pulumi.aws.fsx.OpenZfsVolumeArgs;
/// import com.pulumi.aws.fsx.OpenZfsSnapshot;
/// import com.pulumi.aws.fsx.OpenZfsSnapshotArgs;
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
///         var exampleOpenZfsFileSystem = new OpenZfsFileSystem("exampleOpenZfsFileSystem", OpenZfsFileSystemArgs.builder()
///             .storageCapacity(64)
///             .subnetIds(exampleAwsSubnet.id())
///             .deploymentType("SINGLE_AZ_1")
///             .throughputCapacity(64)
///             .build());
///
///         var exampleOpenZfsVolume = new OpenZfsVolume("exampleOpenZfsVolume", OpenZfsVolumeArgs.builder()
///             .name("example")
///             .parentVolumeId(exampleOpenZfsFileSystem.rootVolumeId())
///             .build());
///
///         var example = new OpenZfsSnapshot("example", OpenZfsSnapshotArgs.builder()
///             .name("example")
///             .volumeId(exampleOpenZfsVolume.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:fsx:OpenZfsSnapshot
///     properties:
///       name: example
///       volumeId: ${exampleOpenZfsVolume.id}
///   exampleOpenZfsVolume:
///     type: aws:fsx:OpenZfsVolume
///     name: example
///     properties:
///       name: example
///       parentVolumeId: ${exampleOpenZfsFileSystem.rootVolumeId}
///   exampleOpenZfsFileSystem:
///     type: aws:fsx:OpenZfsFileSystem
///     name: example
///     properties:
///       storageCapacity: 64
///       subnetIds:
///         - ${exampleAwsSubnet.id}
///       deploymentType: SINGLE_AZ_1
///       throughputCapacity: 64
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import FSx OpenZFS snapshot using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/openZfsSnapshot:OpenZfsSnapshot example fs-543ab12b1ca672f33
/// ```
class OpenZfsSnapshot extends pulumi.CustomResource {
  /// ARN of the snapshot.
  late final pulumi.Output<String> arn;
  /// Time that the snapshot was created.
  late final pulumi.Output<String> creationTime;
  /// Name of the Snapshot. You can use a maximum of 203 alphanumeric characters plus either _ or -  or : or . for the name.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the file system. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copyTagsToBackups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// ID of the volume to snapshot. This can be the root volume or a child volume.
  late final pulumi.Output<String> volumeId;

  /// Creates a new [OpenZfsSnapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OpenZfsSnapshot]. {@macro pulumi_fsx_open_zfs_snapshot_open_zfs_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OpenZfsSnapshot(
    String name, {
    OpenZfsSnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fsx/openZfsSnapshot:OpenZfsSnapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    volumeId = registerOutput<String>('volumeId');
  }

  /// Gets an existing [OpenZfsSnapshot] resource's state with the given [name] and [id].
  static OpenZfsSnapshot get(
    String name,
    pulumi.Input<String> id, {
    OpenZfsSnapshotState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OpenZfsSnapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OpenZfsSnapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fsx/openZfsSnapshot:OpenZfsSnapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    volumeId = registerOutput<String>('volumeId');
  }

  /// Creates a typed reference to an existing [OpenZfsSnapshot] resource.
  OpenZfsSnapshot.reference(String urn)
    : super(
        'aws:fsx/openZfsSnapshot:OpenZfsSnapshot',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    volumeId = registerOutput<String>('volumeId');
  }
}
