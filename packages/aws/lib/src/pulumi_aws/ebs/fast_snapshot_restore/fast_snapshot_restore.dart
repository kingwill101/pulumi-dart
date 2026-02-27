import 'package:pulumi/pulumi.dart' as pulumi;
import '../fast_snapshot_restore_timeouts/fast_snapshot_restore_timeouts.dart';
import 'fast_snapshot_restore_args.dart';

/// Resource for managing an EBS (Elastic Block Storage) Fast Snapshot Restore.
///
/// ## Example Usage
///
/// ### Basic Usage
///
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
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.region = registerOutput<String>('region');
    this.snapshotId = registerOutput<String>('snapshotId');
    this.state = registerOutput<String>('state');
    this.timeouts = registerOutput<FastSnapshotRestoreTimeouts?>('timeouts');
  }
}
