import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_schedule_args.dart';

/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Snapshot Schedule using the `identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/snapshotSchedule:SnapshotSchedule default tf-redshift-snapshot-schedule
/// ```
class SnapshotSchedule extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the Redshift Snapshot Schedule.
  late final pulumi.Output<String> arn;

  /// The definition of the snapshot schedule. The definition is made up of schedule expressions, for example `cron(30 12 *)` or `rate(12 hours)`.
  late final pulumi.Output<List<String>> definitions;

  /// The description of the snapshot schedule.
  late final pulumi.Output<String?> description;

  /// Whether to destroy all associated clusters with this snapshot schedule on deletion. Must be enabled and applied before attempting deletion.
  late final pulumi.Output<bool?> forceDestroy;

  /// The snapshot schedule identifier. If omitted, this provider will assign a random, unique identifier.
  late final pulumi.Output<String> identifier;

  /// Creates a unique
  /// identifier beginning with the specified prefix. Conflicts with `identifier`.
  late final pulumi.Output<String> identifierPrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  SnapshotSchedule(
    String name, {
    SnapshotScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/snapshotSchedule:SnapshotSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.definitions = registerOutput<List<String>>('definitions');
    this.description = registerOutput<String?>('description');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.identifier = registerOutput<String>('identifier');
    this.identifierPrefix = registerOutput<String>('identifierPrefix');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
