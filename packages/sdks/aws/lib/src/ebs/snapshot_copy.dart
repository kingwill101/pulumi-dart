import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_copy_args.dart';
import 'snapshot_copy_state.dart';

/// Creates a Snapshot of a snapshot.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ebs.Volume("example", {
///     availabilityZone: "us-west-2a",
///     size: 40,
///     tags: {
///         Name: "HelloWorld",
///     },
/// });
/// const exampleSnapshot = new aws.ebs.Snapshot("example_snapshot", {
///     volumeId: example.id,
///     tags: {
///         Name: "HelloWorld_snap",
///     },
/// });
/// const exampleCopy = new aws.ebs.SnapshotCopy("example_copy", {
///     sourceSnapshotId: exampleSnapshot.id,
///     sourceRegion: "us-west-2",
///     tags: {
///         Name: "HelloWorld_copy_snap",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ebs.Volume("example",
///     availability_zone="us-west-2a",
///     size=40,
///     tags={
///         "Name": "HelloWorld",
///     })
/// example_snapshot = aws.ebs.Snapshot("example_snapshot",
///     volume_id=example.id,
///     tags={
///         "Name": "HelloWorld_snap",
///     })
/// example_copy = aws.ebs.SnapshotCopy("example_copy",
///     source_snapshot_id=example_snapshot.id,
///     source_region="us-west-2",
///     tags={
///         "Name": "HelloWorld_copy_snap",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ebs.Volume("example", new()
///     {
///         AvailabilityZone = "us-west-2a",
///         Size = 40,
///         Tags =
///         {
///             { "Name", "HelloWorld" },
///         },
///     });
///
///     var exampleSnapshot = new Aws.Ebs.Snapshot("example_snapshot", new()
///     {
///         VolumeId = example.Id,
///         Tags =
///         {
///             { "Name", "HelloWorld_snap" },
///         },
///     });
///
///     var exampleCopy = new Aws.Ebs.SnapshotCopy("example_copy", new()
///     {
///         SourceSnapshotId = exampleSnapshot.Id,
///         SourceRegion = "us-west-2",
///         Tags =
///         {
///             { "Name", "HelloWorld_copy_snap" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ebs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ebs.NewVolume(ctx, "example", &ebs.VolumeArgs{
/// 			AvailabilityZone: pulumi.String("us-west-2a"),
/// 			Size:             pulumi.Int(40),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("HelloWorld"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSnapshot, err := ebs.NewSnapshot(ctx, "example_snapshot", &ebs.SnapshotArgs{
/// 			VolumeId: example.ID().ToIDOutput().ToStringOutput(),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("HelloWorld_snap"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ebs.NewSnapshotCopy(ctx, "example_copy", &ebs.SnapshotCopyArgs{
/// 			SourceSnapshotId: exampleSnapshot.ID().ToIDOutput().ToStringOutput(),
/// 			SourceRegion:     pulumi.String("us-west-2"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("HelloWorld_copy_snap"),
/// 			},
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
/// resource "aws_ebs_volume" "example" {
///   availability_zone = "us-west-2a"
///   size              = 40
///   tags = {
///     "Name" = "HelloWorld"
///   }
/// }
/// resource "aws_ebs_snapshot" "example_snapshot" {
///   volume_id = aws_ebs_volume.example.id
///   tags = {
///     "Name" = "HelloWorld_snap"
///   }
/// }
/// resource "aws_ebs_snapshotcopy" "example_copy" {
///   source_snapshot_id = aws_ebs_snapshot.example_snapshot.id
///   source_region      = "us-west-2"
///   tags = {
///     "Name" = "HelloWorld_copy_snap"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ebs.Volume;
/// import com.pulumi.aws.ebs.VolumeArgs;
/// import com.pulumi.aws.ebs.Snapshot;
/// import com.pulumi.aws.ebs.SnapshotArgs;
/// import com.pulumi.aws.ebs.SnapshotCopy;
/// import com.pulumi.aws.ebs.SnapshotCopyArgs;
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
///         var example = new Volume("example", VolumeArgs.builder()
///             .availabilityZone("us-west-2a")
///             .size(40)
///             .tags(Map.of("Name", "HelloWorld"))
///             .build());
///
///         var exampleSnapshot = new Snapshot("exampleSnapshot", SnapshotArgs.builder()
///             .volumeId(example.id())
///             .tags(Map.of("Name", "HelloWorld_snap"))
///             .build());
///
///         var exampleCopy = new SnapshotCopy("exampleCopy", SnapshotCopyArgs.builder()
///             .sourceSnapshotId(exampleSnapshot.id())
///             .sourceRegion("us-west-2")
///             .tags(Map.of("Name", "HelloWorld_copy_snap"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ebs:Volume
///     properties:
///       availabilityZone: us-west-2a
///       size: 40
///       tags:
///         Name: HelloWorld
///   exampleSnapshot:
///     type: aws:ebs:Snapshot
///     name: example_snapshot
///     properties:
///       volumeId: ${example.id}
///       tags:
///         Name: HelloWorld_snap
///   exampleCopy:
///     type: aws:ebs:SnapshotCopy
///     name: example_copy
///     properties:
///       sourceSnapshotId: ${exampleSnapshot.id}
///       sourceRegion: us-west-2
///       tags:
///         Name: HelloWorld_copy_snap
/// ```
class SnapshotCopy extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the EBS Snapshot.
  late final pulumi.Output<String> arn;
  /// Specifies a completion duration to initiate a time-based snapshot copy. Time-based snapshot copy operations complete within the specified duration.  Value must be between 15 and 2880 minutes, in 15 minute increments only.
  late final pulumi.Output<int?> completionDurationMinutes;
  /// The data encryption key identifier for the snapshot.
  late final pulumi.Output<String> dataEncryptionKeyId;
  /// A description of what the snapshot is.
  late final pulumi.Output<String?> description;
  /// Whether the snapshot is encrypted.
  late final pulumi.Output<bool?> encrypted;
  /// The ARN for the KMS encryption key.
  late final pulumi.Output<String?> kmsKeyId;
  late final pulumi.Output<String> outpostArn;
  /// Value from an Amazon-maintained list (`amazon`, `aws-marketplace`, `microsoft`) of snapshot owners.
  late final pulumi.Output<String> ownerAlias;
  /// The AWS account ID of the snapshot owner.
  late final pulumi.Output<String> ownerId;
  /// Indicates whether to permanently restore an archived snapshot.
  late final pulumi.Output<bool?> permanentRestore;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The region of the source snapshot.
  late final pulumi.Output<String> sourceRegion;
  /// The ARN for the snapshot to be copied.
  late final pulumi.Output<String> sourceSnapshotId;
  /// The name of the storage tier. Valid values are `archive` and `standard`. Default value is `standard`.
  late final pulumi.Output<String> storageTier;
  /// A map of tags for the snapshot.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  late final pulumi.Output<int?> temporaryRestoreDays;
  late final pulumi.Output<String> volumeId;
  /// The size of the drive in GiBs.
  late final pulumi.Output<int> volumeSize;

  /// Creates a new [SnapshotCopy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SnapshotCopy]. {@macro pulumi_ebs_snapshot_copy_snapshot_copy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SnapshotCopy(
    String name, {
    SnapshotCopyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ebs/snapshotCopy:SnapshotCopy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    completionDurationMinutes = registerOutput<int?>('completionDurationMinutes');
    dataEncryptionKeyId = registerOutput<String>('dataEncryptionKeyId');
    description = registerOutput<String?>('description');
    encrypted = registerOutput<bool?>('encrypted');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    outpostArn = registerOutput<String>('outpostArn');
    ownerAlias = registerOutput<String>('ownerAlias');
    ownerId = registerOutput<String>('ownerId');
    permanentRestore = registerOutput<bool?>('permanentRestore');
    region = registerOutput<String>('region');
    sourceRegion = registerOutput<String>('sourceRegion');
    sourceSnapshotId = registerOutput<String>('sourceSnapshotId');
    storageTier = registerOutput<String>('storageTier');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    temporaryRestoreDays = registerOutput<int?>('temporaryRestoreDays');
    volumeId = registerOutput<String>('volumeId');
    volumeSize = registerOutput<int>('volumeSize');
  }

  /// Gets an existing [SnapshotCopy] resource's state with the given [name] and [id].
  static SnapshotCopy get(
    String name,
    pulumi.Input<String> id, {
    SnapshotCopyState? state,
  }) {
    return SnapshotCopy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SnapshotCopy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ebs/snapshotCopy:SnapshotCopy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    completionDurationMinutes = registerOutput<int?>('completionDurationMinutes');
    dataEncryptionKeyId = registerOutput<String>('dataEncryptionKeyId');
    description = registerOutput<String?>('description');
    encrypted = registerOutput<bool?>('encrypted');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    outpostArn = registerOutput<String>('outpostArn');
    ownerAlias = registerOutput<String>('ownerAlias');
    ownerId = registerOutput<String>('ownerId');
    permanentRestore = registerOutput<bool?>('permanentRestore');
    region = registerOutput<String>('region');
    sourceRegion = registerOutput<String>('sourceRegion');
    sourceSnapshotId = registerOutput<String>('sourceSnapshotId');
    storageTier = registerOutput<String>('storageTier');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    temporaryRestoreDays = registerOutput<int?>('temporaryRestoreDays');
    volumeId = registerOutput<String>('volumeId');
    volumeSize = registerOutput<int>('volumeSize');
  }
}
