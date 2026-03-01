import 'package:pulumi/pulumi.dart' as pulumi;
import 'ttl_schedule_args.dart';

/// A scheduled stack destroy run.
class TtlSchedule extends pulumi.CustomResource {
  /// True if the stack and all associated history and settings should be deleted.
  late final pulumi.Output<bool?> deleteAfterDestroy;
  /// Organization name.
  late final pulumi.Output<String> organization;
  /// Project name.
  late final pulumi.Output<String> project;
  /// Schedule ID of the created schedule, assigned by Pulumi Cloud.
  late final pulumi.Output<String> scheduleId;
  /// Stack name.
  late final pulumi.Output<String> stack;
  /// The time at which the schedule should run, in ISO 8601 format. Eg: 2020-01-01T00:00:00Z.
  late final pulumi.Output<String> timestamp;

  /// Creates a new [TtlSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TtlSchedule]. {@macro pulumi_index_ttl_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TtlSchedule(
    String name, {
    TtlScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:TtlSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deleteAfterDestroy = registerOutput<bool?>('deleteAfterDestroy');
    this.organization = registerOutput<String>('organization');
    this.project = registerOutput<String>('project');
    this.scheduleId = registerOutput<String>('scheduleId');
    this.stack = registerOutput<String>('stack');
    this.timestamp = registerOutput<String>('timestamp');
  }
}
