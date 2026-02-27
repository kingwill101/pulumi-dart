import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_schedule_association_args.dart';

/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Snapshot Schedule Association using the `<cluster-identifier>/<schedule-identifier>`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/snapshotScheduleAssociation:SnapshotScheduleAssociation default tf-redshift-cluster/tf-redshift-snapshot-schedule
/// ```
class SnapshotScheduleAssociation extends pulumi.CustomResource {
  /// The cluster identifier.
  late final pulumi.Output<String> clusterIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The snapshot schedule identifier.
  late final pulumi.Output<String> scheduleIdentifier;

  SnapshotScheduleAssociation(
    String name, {
    SnapshotScheduleAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/snapshotScheduleAssociation:SnapshotScheduleAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.region = registerOutput<String>('region');
    this.scheduleIdentifier = registerOutput<String>('scheduleIdentifier');
  }
}
