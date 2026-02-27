import 'package:pulumi/pulumi.dart';
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
class SnapshotSchedule extends CustomResource {
  /// Amazon Resource Name (ARN) of the Redshift Snapshot Schedule.
  late final Output<String> arn;

  /// The definition of the snapshot schedule. The definition is made up of schedule expressions, for example `cron(30 12 *)` or `rate(12 hours)`.
  late final Output<List<String>> definitions;

  /// The description of the snapshot schedule.
  late final Output<String?> description;

  /// Whether to destroy all associated clusters with this snapshot schedule on deletion. Must be enabled and applied before attempting deletion.
  late final Output<bool?> forceDestroy;

  /// The snapshot schedule identifier. If omitted, this provider will assign a random, unique identifier.
  late final Output<String> identifier;

  /// Creates a unique
  /// identifier beginning with the specified prefix. Conflicts with `identifier`.
  late final Output<String> identifierPrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  SnapshotSchedule(
    String name, {
    SnapshotScheduleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/snapshotSchedule:SnapshotSchedule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
