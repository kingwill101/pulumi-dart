import 'package:pulumi/pulumi.dart';
import 'schedule_group_args.dart';

/// Provides an EventBridge Scheduler Schedule Group resource.
///
/// You can find out more about EventBridge Scheduler in the [User Guide](https://docs.aws.amazon.com/scheduler/latest/UserGuide/what-is-scheduler.html).
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import schedule groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:scheduler/scheduleGroup:ScheduleGroup example my-schedule-group
/// ```
class ScheduleGroup extends CustomResource {
  /// ARN of the schedule group.
  late final Output<String> arn;

  /// Time at which the schedule group was created.
  late final Output<String> creationDate;

  /// Time at which the schedule group was last modified.
  late final Output<String> lastModificationDate;

  /// Name of the schedule group. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// State of the schedule group. Can be `ACTIVE` or `DELETING`.
  late final Output<String> state;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  ScheduleGroup(
    String name, {
    ScheduleGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:scheduler/scheduleGroup:ScheduleGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.creationDate = registerOutput<String>('creationDate');
    this.lastModificationDate = registerOutput<String>('lastModificationDate');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
