import 'package:pulumi/pulumi.dart' as pulumi;
import 'fast_snapshot_restore_args.dart';
import 'fast_snapshot_restore_state.dart';
import 'fast_snapshot_restore_timeouts.dart';

/// Resource for managing an EBS (Elastic Block Storage) Fast Snapshot Restore.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ebs.FastSnapshotRestore("example", {
///     availabilityZone: "us-west-2a",
///     snapshotId: exampleAwsEbsSnapshot.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ebs.FastSnapshotRestore("example",
///     availability_zone="us-west-2a",
///     snapshot_id=example_aws_ebs_snapshot["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ebs.FastSnapshotRestore("example", new()
///     {
///         AvailabilityZone = "us-west-2a",
///         SnapshotId = exampleAwsEbsSnapshot.Id,
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
/// 		_, err := ebs.NewFastSnapshotRestore(ctx, "example", &ebs.FastSnapshotRestoreArgs{
/// 			AvailabilityZone: pulumi.String("us-west-2a"),
/// 			SnapshotId:       pulumi.Any(exampleAwsEbsSnapshot.Id),
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
/// import com.pulumi.aws.ebs.FastSnapshotRestore;
/// import com.pulumi.aws.ebs.FastSnapshotRestoreArgs;
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
///         var example = new FastSnapshotRestore("example", FastSnapshotRestoreArgs.builder()
///             .availabilityZone("us-west-2a")
///             .snapshotId(exampleAwsEbsSnapshot.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ebs:FastSnapshotRestore
///     properties:
///       availabilityZone: us-west-2a
///       snapshotId: ${exampleAwsEbsSnapshot.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EC2 (Elastic Compute Cloud) EBS Fast Snapshot Restore using the `availability_zone` and `snapshot_id` separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:ebs/fastSnapshotRestore:FastSnapshotRestore example us-west-2a,snap-abcdef123456
/// ```
class FastSnapshotRestore extends pulumi.CustomResource {
  /// Availability zone in which to enable fast snapshot restores.
  late final pulumi.Output<String> availabilityZone;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ID of the snapshot.
  late final pulumi.Output<String> snapshotId;

  /// State of fast snapshot restores. Valid values are `enabling`, `optimizing`, `enabled`, `disabling`, `disabled`.
  late final pulumi.Output<String> state;
  late final pulumi.Output<FastSnapshotRestoreTimeouts?> timeouts;

  /// Creates a new [FastSnapshotRestore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FastSnapshotRestore]. {@macro pulumi_ebs_fast_snapshot_restore_fast_snapshot_restore_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FastSnapshotRestore(
    String name, {
    FastSnapshotRestoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ebs/fastSnapshotRestore:FastSnapshotRestore',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    availabilityZone = registerOutput<String>('availabilityZone');
    region = registerOutput<String>('region');
    snapshotId = registerOutput<String>('snapshotId');
    state = registerOutput<String>('state');
    timeouts = registerOutput<FastSnapshotRestoreTimeouts?>('timeouts');
  }

  /// Gets an existing [FastSnapshotRestore] resource's state with the given [name] and [id].
  static FastSnapshotRestore get(
    String name,
    pulumi.Input<String> id, {
    FastSnapshotRestoreState? state,
  }) {
    return FastSnapshotRestore._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FastSnapshotRestore._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ebs/fastSnapshotRestore:FastSnapshotRestore',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    availabilityZone = registerOutput<String>('availabilityZone');
    region = registerOutput<String>('region');
    snapshotId = registerOutput<String>('snapshotId');
    this.state = registerOutput<String>('state');
    timeouts = registerOutput<FastSnapshotRestoreTimeouts?>('timeouts');
  }
}
