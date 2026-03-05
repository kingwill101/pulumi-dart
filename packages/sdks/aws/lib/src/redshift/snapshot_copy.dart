import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_copy_args.dart';
import 'snapshot_copy_state.dart';

/// Resource for managing an AWS Redshift Snapshot Copy.
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
/// const example = new aws.redshift.SnapshotCopy("example", {
///     clusterIdentifier: exampleAwsRedshiftCluster.id,
///     destinationRegion: "us-east-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.SnapshotCopy("example",
///     cluster_identifier=example_aws_redshift_cluster["id"],
///     destination_region="us-east-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedShift.SnapshotCopy("example", new()
///     {
///         ClusterIdentifier = exampleAwsRedshiftCluster.Id,
///         DestinationRegion = "us-east-1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshift.NewSnapshotCopy(ctx, "example", &redshift.SnapshotCopyArgs{
/// 			ClusterIdentifier: pulumi.Any(exampleAwsRedshiftCluster.Id),
/// 			DestinationRegion: pulumi.String("us-east-1"),
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
/// import com.pulumi.aws.redshift.SnapshotCopy;
/// import com.pulumi.aws.redshift.SnapshotCopyArgs;
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
///         var example = new SnapshotCopy("example", SnapshotCopyArgs.builder()
///             .clusterIdentifier(exampleAwsRedshiftCluster.id())
///             .destinationRegion("us-east-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshift:SnapshotCopy
///     properties:
///       clusterIdentifier: ${exampleAwsRedshiftCluster.id}
///       destinationRegion: us-east-1
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Snapshot Copy using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/snapshotCopy:SnapshotCopy example cluster-id-12345678
/// ```
class SnapshotCopy extends pulumi.CustomResource {
  /// Identifier of the source cluster.
  late final pulumi.Output<String> clusterIdentifier;
  /// AWS Region to copy snapshots to.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> destinationRegion;
  /// Number of days to retain newly copied snapshots in the destination AWS Region after they are copied from the source AWS Region. If the value is `-1`, the manual snapshot is retained indefinitely.
  late final pulumi.Output<int> manualSnapshotRetentionPeriod;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Number of days to retain automated snapshots in the destination region after they are copied from the source region.
  late final pulumi.Output<int> retentionPeriod;
  /// Name of the snapshot copy grant to use when snapshots of an AWS KMS-encrypted cluster are copied to the destination region.
  late final pulumi.Output<String?> snapshotCopyGrantName;

  /// Creates a new [SnapshotCopy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SnapshotCopy]. {@macro pulumi_redshift_snapshot_copy_snapshot_copy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SnapshotCopy(
    String name, {
    SnapshotCopyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/snapshotCopy:SnapshotCopy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    destinationRegion = registerOutput<String>('destinationRegion');
    manualSnapshotRetentionPeriod = registerOutput<int>('manualSnapshotRetentionPeriod');
    region = registerOutput<String>('region');
    retentionPeriod = registerOutput<int>('retentionPeriod');
    snapshotCopyGrantName = registerOutput<String?>('snapshotCopyGrantName');
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
          'aws:redshift/snapshotCopy:SnapshotCopy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    destinationRegion = registerOutput<String>('destinationRegion');
    manualSnapshotRetentionPeriod = registerOutput<int>('manualSnapshotRetentionPeriod');
    region = registerOutput<String>('region');
    retentionPeriod = registerOutput<int>('retentionPeriod');
    snapshotCopyGrantName = registerOutput<String?>('snapshotCopyGrantName');
  }
}
