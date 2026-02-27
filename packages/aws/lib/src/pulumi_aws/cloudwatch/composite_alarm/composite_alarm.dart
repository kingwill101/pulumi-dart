import 'package:pulumi/pulumi.dart';
import '../composite_alarm_actions_suppressor/composite_alarm_actions_suppressor.dart';
import 'composite_alarm_args.dart';

/// Provides a CloudWatch Composite Alarm resource.
///
/// > **NOTE:** An alarm (composite or metric) cannot be destroyed when there are other composite alarms depending on it. This can lead to a cyclical dependency on update, as the provider will unsuccessfully attempt to destroy alarms before updating the rule. Consider using `depends_on`, references to alarm names, and two-stage updates.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a CloudWatch Composite Alarm using the `alarm_name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/compositeAlarm:CompositeAlarm test my-alarm
/// ```
class CompositeAlarm extends CustomResource {
  /// Indicates whether actions should be executed during any changes to the alarm state of the composite alarm. Defaults to `true`.
  late final Output<bool?> actionsEnabled;

  /// Actions will be suppressed if the suppressor alarm is in the ALARM state.
  late final Output<CompositeAlarmActionsSuppressor?> actionsSuppressor;

  /// The set of actions to execute when this alarm transitions to the `ALARM` state from any other state. Each action is specified as an ARN. Up to 5 actions are allowed.
  late final Output<List<String>?> alarmActions;

  /// The description for the composite alarm.
  late final Output<String?> alarmDescription;

  /// The name for the composite alarm. This name must be unique within the region.
  late final Output<String> alarmName;

  /// An expression that specifies which other alarms are to be evaluated to determine this composite alarm's state. For syntax, see [Creating a Composite Alarm](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Create_Composite_Alarm.html). The maximum length is 10240 characters.
  late final Output<String> alarmRule;

  /// The ARN of the composite alarm.
  late final Output<String> arn;

  /// The set of actions to execute when this alarm transitions to the `INSUFFICIENT_DATA` state from any other state. Each action is specified as an ARN. Up to 5 actions are allowed.
  late final Output<List<String>?> insufficientDataActions;

  /// The set of actions to execute when this alarm transitions to an `OK` state from any other state. Each action is specified as an ARN. Up to 5 actions are allowed.
  late final Output<List<String>?> okActions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to associate with the alarm. Up to 50 tags are allowed. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  CompositeAlarm(
    String name, {
    CompositeAlarmArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/compositeAlarm:CompositeAlarm',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.actionsEnabled = registerOutput<bool?>('actionsEnabled');
    this.actionsSuppressor =
        registerOutput<CompositeAlarmActionsSuppressor?>('actionsSuppressor');
    this.alarmActions = registerOutput<List<String>?>('alarmActions');
    this.alarmDescription = registerOutput<String?>('alarmDescription');
    this.alarmName = registerOutput<String>('alarmName');
    this.alarmRule = registerOutput<String>('alarmRule');
    this.arn = registerOutput<String>('arn');
    this.insufficientDataActions =
        registerOutput<List<String>?>('insufficientDataActions');
    this.okActions = registerOutput<List<String>?>('okActions');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
