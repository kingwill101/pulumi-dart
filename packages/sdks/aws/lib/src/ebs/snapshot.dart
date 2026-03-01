import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_args.dart';
import 'snapshot_state.dart';

/// Creates a Snapshot of an EBS Volume.
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
/// 		_, err = ebs.NewSnapshot(ctx, "example_snapshot", &ebs.SnapshotArgs{
/// 			VolumeId: example.ID(),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("HelloWorld_snap"),
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
/// import com.pulumi.aws.ebs.Volume;
/// import com.pulumi.aws.ebs.VolumeArgs;
/// import com.pulumi.aws.ebs.Snapshot;
/// import com.pulumi.aws.ebs.SnapshotArgs;
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
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EBS Snapshot using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ebs/snapshot:Snapshot id snap-049df61146c4d7901
/// ```
class Snapshot extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the EBS Snapshot.
  late final pulumi.Output<String> arn;
  /// The data encryption key identifier for the snapshot.
  late final pulumi.Output<String> dataEncryptionKeyId;
  /// A description of what the snapshot is.
  late final pulumi.Output<String?> description;
  /// Whether the snapshot is encrypted.
  late final pulumi.Output<bool> encrypted;
  /// The ARN for the KMS encryption key.
  late final pulumi.Output<String> kmsKeyId;
  /// The Amazon Resource Name (ARN) of the Outpost on which to create a local snapshot.
  late final pulumi.Output<String?> outpostArn;
  /// Value from an Amazon-maintained list (`amazon`, `aws-marketplace`, `microsoft`) of snapshot owners.
  late final pulumi.Output<String> ownerAlias;
  /// The AWS account ID of the EBS snapshot owner.
  late final pulumi.Output<String> ownerId;
  /// Indicates whether to permanently restore an archived snapshot.
  late final pulumi.Output<bool?> permanentRestore;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The name of the storage tier. Valid values are `archive` and `standard`. Default value is `standard`.
  late final pulumi.Output<String> storageTier;
  /// A map of tags to assign to the snapshot. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  late final pulumi.Output<int?> temporaryRestoreDays;
  /// The Volume ID of which to make a snapshot.
  late final pulumi.Output<String> volumeId;
  /// The size of the drive in GiBs.
  late final pulumi.Output<int> volumeSize;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_ebs_snapshot_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ebs/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dataEncryptionKeyId = registerOutput<String>('dataEncryptionKeyId');
    this.description = registerOutput<String?>('description');
    this.encrypted = registerOutput<bool>('encrypted');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.outpostArn = registerOutput<String?>('outpostArn');
    this.ownerAlias = registerOutput<String>('ownerAlias');
    this.ownerId = registerOutput<String>('ownerId');
    this.permanentRestore = registerOutput<bool?>('permanentRestore');
    this.region = registerOutput<String>('region');
    this.storageTier = registerOutput<String>('storageTier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.temporaryRestoreDays = registerOutput<int?>('temporaryRestoreDays');
    this.volumeId = registerOutput<String>('volumeId');
    this.volumeSize = registerOutput<int>('volumeSize');
  }

  /// Gets an existing [Snapshot] resource's state with the given [name] and [id].
  static Snapshot get(
    String name,
    pulumi.Input<String> id, {
    SnapshotState? state,
  }) {
    return Snapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Snapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ebs/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dataEncryptionKeyId = registerOutput<String>('dataEncryptionKeyId');
    this.description = registerOutput<String?>('description');
    this.encrypted = registerOutput<bool>('encrypted');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.outpostArn = registerOutput<String?>('outpostArn');
    this.ownerAlias = registerOutput<String>('ownerAlias');
    this.ownerId = registerOutput<String>('ownerId');
    this.permanentRestore = registerOutput<bool?>('permanentRestore');
    this.region = registerOutput<String>('region');
    this.storageTier = registerOutput<String>('storageTier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.temporaryRestoreDays = registerOutput<int?>('temporaryRestoreDays');
    this.volumeId = registerOutput<String>('volumeId');
    this.volumeSize = registerOutput<int>('volumeSize');
  }
}
