import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_args.dart';
import 'schedule_state.dart';

/// &gt; **NOTE:** This resource has been deprecated from v1.45.0. New resource `alicloud.ess.ScheduledTask` will replace.
class Schedule extends pulumi.CustomResource {
  late final pulumi.Output<String> description;
  late final pulumi.Output<int?> desiredCapacity;
  late final pulumi.Output<int?> launchExpirationTime;
  late final pulumi.Output<String?> launchTime;
  late final pulumi.Output<int?> maxValue;
  late final pulumi.Output<int?> minValue;
  late final pulumi.Output<String> recurrenceEndTime;
  late final pulumi.Output<String> recurrenceType;
  late final pulumi.Output<String> recurrenceValue;
  late final pulumi.Output<String> scalingGroupId;
  late final pulumi.Output<String?> scheduledAction;
  late final pulumi.Output<String?> scheduledTaskName;
  late final pulumi.Output<bool?> taskEnabled;

  /// Creates a new [Schedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schedule]. {@macro pulumi_ess_schedule_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schedule(
    String name, {
    ScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ess/schedule:Schedule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String>('description');
    desiredCapacity = registerOutput<int?>('desiredCapacity');
    launchExpirationTime = registerOutput<int?>('launchExpirationTime');
    launchTime = registerOutput<String?>('launchTime');
    maxValue = registerOutput<int?>('maxValue');
    minValue = registerOutput<int?>('minValue');
    recurrenceEndTime = registerOutput<String>('recurrenceEndTime');
    recurrenceType = registerOutput<String>('recurrenceType');
    recurrenceValue = registerOutput<String>('recurrenceValue');
    scalingGroupId = registerOutput<String>('scalingGroupId');
    scheduledAction = registerOutput<String?>('scheduledAction');
    scheduledTaskName = registerOutput<String?>('scheduledTaskName');
    taskEnabled = registerOutput<bool?>('taskEnabled');
  }

  /// Gets an existing [Schedule] resource's state with the given [name] and [id].
  static Schedule get(
    String name,
    pulumi.Input<String> id, {
    ScheduleState? state,
  }) {
    return Schedule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Schedule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ess/schedule:Schedule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String>('description');
    desiredCapacity = registerOutput<int?>('desiredCapacity');
    launchExpirationTime = registerOutput<int?>('launchExpirationTime');
    launchTime = registerOutput<String?>('launchTime');
    maxValue = registerOutput<int?>('maxValue');
    minValue = registerOutput<int?>('minValue');
    recurrenceEndTime = registerOutput<String>('recurrenceEndTime');
    recurrenceType = registerOutput<String>('recurrenceType');
    recurrenceValue = registerOutput<String>('recurrenceValue');
    scalingGroupId = registerOutput<String>('scalingGroupId');
    scheduledAction = registerOutput<String?>('scheduledAction');
    scheduledTaskName = registerOutput<String?>('scheduledTaskName');
    taskEnabled = registerOutput<bool?>('taskEnabled');
  }
}
