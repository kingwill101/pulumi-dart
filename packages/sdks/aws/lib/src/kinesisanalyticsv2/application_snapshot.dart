import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_snapshot_args.dart';
import 'application_snapshot_state.dart';

/// Manages a Kinesis Analytics v2 Application Snapshot.
/// Snapshots are the AWS implementation of [Flink Savepoints](https://ci.apache.org/projects/flink/flink-docs-release-1.11/ops/state/savepoints.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kinesisanalyticsv2.ApplicationSnapshot("example", {
///     applicationName: exampleAwsKinesisanalyticsv2Application.name,
///     snapshotName: "example-snapshot",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kinesisanalyticsv2.ApplicationSnapshot("example",
///     application_name=example_aws_kinesisanalyticsv2_application["name"],
///     snapshot_name="example-snapshot")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.KinesisAnalyticsV2.ApplicationSnapshot("example", new()
///     {
///         ApplicationName = exampleAwsKinesisanalyticsv2Application.Name,
///         SnapshotName = "example-snapshot",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesisanalyticsv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kinesisanalyticsv2.NewApplicationSnapshot(ctx, "example", &kinesisanalyticsv2.ApplicationSnapshotArgs{
/// 			ApplicationName: pulumi.Any(exampleAwsKinesisanalyticsv2Application.Name),
/// 			SnapshotName:    pulumi.String("example-snapshot"),
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
/// import com.pulumi.aws.kinesisanalyticsv2.ApplicationSnapshot;
/// import com.pulumi.aws.kinesisanalyticsv2.ApplicationSnapshotArgs;
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
///         var example = new ApplicationSnapshot("example", ApplicationSnapshotArgs.builder()
///             .applicationName(exampleAwsKinesisanalyticsv2Application.name())
///             .snapshotName("example-snapshot")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kinesisanalyticsv2:ApplicationSnapshot
///     properties:
///       applicationName: ${exampleAwsKinesisanalyticsv2Application.name}
///       snapshotName: example-snapshot
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.kinesisanalyticsv2.Application` using `application_name` together with `snapshot_name`. For example:
///
/// ```sh
/// $ pulumi import aws:kinesisanalyticsv2/applicationSnapshot:ApplicationSnapshot example example-application/example-snapshot
/// ```
class ApplicationSnapshot extends pulumi.CustomResource {
  /// The name of an existing  Kinesis Analytics v2 Application. Note that the application must be running for a snapshot to be created.
  late final pulumi.Output<String> applicationName;
  /// The current application version ID when the snapshot was created.
  late final pulumi.Output<int> applicationVersionId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The timestamp of the application snapshot.
  late final pulumi.Output<String> snapshotCreationTimestamp;
  /// The name of the application snapshot.
  late final pulumi.Output<String> snapshotName;

  /// Creates a new [ApplicationSnapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationSnapshot]. {@macro pulumi_kinesisanalyticsv2_application_snapshot_application_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationSnapshot(
    String name, {
    ApplicationSnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kinesisanalyticsv2/applicationSnapshot:ApplicationSnapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationName = registerOutput<String>('applicationName');
    this.applicationVersionId = registerOutput<int>('applicationVersionId');
    this.region = registerOutput<String>('region');
    this.snapshotCreationTimestamp = registerOutput<String>('snapshotCreationTimestamp');
    this.snapshotName = registerOutput<String>('snapshotName');
  }

  /// Gets an existing [ApplicationSnapshot] resource's state with the given [name] and [id].
  static ApplicationSnapshot get(
    String name,
    pulumi.Input<String> id, {
    ApplicationSnapshotState? state,
  }) {
    return ApplicationSnapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationSnapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kinesisanalyticsv2/applicationSnapshot:ApplicationSnapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationName = registerOutput<String>('applicationName');
    this.applicationVersionId = registerOutput<int>('applicationVersionId');
    this.region = registerOutput<String>('region');
    this.snapshotCreationTimestamp = registerOutput<String>('snapshotCreationTimestamp');
    this.snapshotName = registerOutput<String>('snapshotName');
  }
}
