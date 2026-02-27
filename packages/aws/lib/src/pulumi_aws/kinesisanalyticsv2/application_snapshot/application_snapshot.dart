import 'package:pulumi/pulumi.dart';
import 'application_snapshot_args.dart';

/// Manages a Kinesis Analytics v2 Application Snapshot.
/// Snapshots are the AWS implementation of [Flink Savepoints](https://ci.apache.org/projects/flink/flink-docs-release-1.11/ops/state/savepoints.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.kinesisanalyticsv2.Application` using `application_name` together with `snapshot_name`. For example:
///
/// ```sh
/// $ pulumi import aws:kinesisanalyticsv2/applicationSnapshot:ApplicationSnapshot example example-application/example-snapshot
/// ```
class ApplicationSnapshot extends CustomResource {
  /// The name of an existing  Kinesis Analytics v2 Application. Note that the application must be running for a snapshot to be created.
  late final Output<String> applicationName;

  /// The current application version ID when the snapshot was created.
  late final Output<int> applicationVersionId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The timestamp of the application snapshot.
  late final Output<String> snapshotCreationTimestamp;

  /// The name of the application snapshot.
  late final Output<String> snapshotName;

  ApplicationSnapshot(
    String name, {
    ApplicationSnapshotArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:kinesisanalyticsv2/applicationSnapshot:ApplicationSnapshot',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationName = registerOutput<String>('applicationName');
    this.applicationVersionId = registerOutput<int>('applicationVersionId');
    this.region = registerOutput<String>('region');
    this.snapshotCreationTimestamp =
        registerOutput<String>('snapshotCreationTimestamp');
    this.snapshotName = registerOutput<String>('snapshotName');
  }
}
