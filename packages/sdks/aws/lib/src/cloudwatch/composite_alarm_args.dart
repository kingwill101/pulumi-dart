// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'composite_alarm_actions_suppressor.dart';

/// {@template pulumi_cloudwatch_composite_alarm_composite_alarm_args_doc}
/// The set of arguments for CompositeAlarm.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_composite_alarm_composite_alarm_args_doc}
class CompositeAlarmArgs {
  /// Indicates whether actions should be executed during any changes to the alarm state of the composite alarm. Defaults to `true`.
  final pulumi.Input<bool>? actionsEnabled;
  /// Actions will be suppressed if the suppressor alarm is in the ALARM state.
  final pulumi.Input<CompositeAlarmActionsSuppressor>? actionsSuppressor;
  /// The set of actions to execute when this alarm transitions to the `ALARM` state from any other state. Each action is specified as an ARN. Up to 5 actions are allowed.
  final pulumi.Input<List<String>>? alarmActions;
  /// The description for the composite alarm.
  final pulumi.Input<String>? alarmDescription;
  /// The name for the composite alarm. This name must be unique within the region.
  final pulumi.Input<String> alarmName;
  /// An expression that specifies which other alarms are to be evaluated to determine this composite alarm's state. For syntax, see [Creating a Composite Alarm](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Create_Composite_Alarm.html). The maximum length is 10240 characters.
  final pulumi.Input<String> alarmRule;
  /// The set of actions to execute when this alarm transitions to the `INSUFFICIENT_DATA` state from any other state. Each action is specified as an ARN. Up to 5 actions are allowed.
  final pulumi.Input<List<String>>? insufficientDataActions;
  /// The set of actions to execute when this alarm transitions to an `OK` state from any other state. Each action is specified as an ARN. Up to 5 actions are allowed.
  final pulumi.Input<List<String>>? okActions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to associate with the alarm. Up to 50 tags are allowed. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CompositeAlarmArgs].
  /// [actionsEnabled] Indicates whether actions should be executed during any changes to the alarm state of the composite alarm. Defaults to `true`.
  /// [actionsSuppressor] Actions will be suppressed if the suppressor alarm is in the ALARM state.
  /// [alarmActions] The set of actions to execute when this alarm transitions to the `ALARM` state from any other state. Each action is specified as an ARN. Up to 5 actions are allowed.
  /// [alarmDescription] The description for the composite alarm.
  /// [alarmName] The name for the composite alarm. This name must be unique within the region.
  /// [alarmRule] An expression that specifies which other alarms are to be evaluated to determine this composite alarm's state. For syntax, see [Creating a Composite Alarm](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Create_Composite_Alarm.html). The maximum length is 10240 characters.
  /// [insufficientDataActions] The set of actions to execute when this alarm transitions to the `INSUFFICIENT_DATA` state from any other state. Each action is specified as an ARN. Up to 5 actions are allowed.
  /// [okActions] The set of actions to execute when this alarm transitions to an `OK` state from any other state. Each action is specified as an ARN. Up to 5 actions are allowed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to associate with the alarm. Up to 50 tags are allowed. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CompositeAlarmArgs({
    pulumi.Output<bool>? actionsEnabled,
    pulumi.Output<CompositeAlarmActionsSuppressor>? actionsSuppressor,
    pulumi.Output<List<String>>? alarmActions,
    pulumi.Output<String>? alarmDescription,
    required pulumi.Output<String> alarmName,
    required pulumi.Output<String> alarmRule,
    pulumi.Output<List<String>>? insufficientDataActions,
    pulumi.Output<List<String>>? okActions,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      actionsEnabled = pulumi.Input.asOptionalInput<bool>(actionsEnabled),
      actionsSuppressor = pulumi.Input.asOptionalInput<CompositeAlarmActionsSuppressor>(actionsSuppressor),
      alarmActions = pulumi.Input.asOptionalInput<List<String>>(alarmActions),
      alarmDescription = pulumi.Input.asOptionalInput<String>(alarmDescription),
      alarmName = pulumi.Input.asInput<String>(alarmName),
      alarmRule = pulumi.Input.asInput<String>(alarmRule),
      insufficientDataActions = pulumi.Input.asOptionalInput<List<String>>(insufficientDataActions),
      okActions = pulumi.Input.asOptionalInput<List<String>>(okActions),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsEnabled': ?actionsEnabled,
      'actionsSuppressor': ?pulumi.Input.mapOptionalInputValue<CompositeAlarmActionsSuppressor, Map<String, dynamic>>(actionsSuppressor, (value) => value.toMap()),
      'alarmActions': ?alarmActions,
      'alarmDescription': ?alarmDescription,
      'alarmName': alarmName,
      'alarmRule': alarmRule,
      'insufficientDataActions': ?insufficientDataActions,
      'okActions': ?okActions,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory CompositeAlarmArgs.fromMap(Map<String, dynamic> map) {
    return CompositeAlarmArgs(
      actionsEnabled: map['actionsEnabled'] == null ? null : pulumi.Output.create<bool>(map['actionsEnabled'] as bool),
      actionsSuppressor: map['actionsSuppressor'] == null ? null : pulumi.Output.create<CompositeAlarmActionsSuppressor>(CompositeAlarmActionsSuppressor.fromMap((map['actionsSuppressor'] as Map).cast<String, dynamic>())),
      alarmActions: map['alarmActions'] == null ? null : pulumi.Output.create<List<String>>((map['alarmActions'] as List).cast<String>()),
      alarmDescription: map['alarmDescription'] == null ? null : pulumi.Output.create<String>(map['alarmDescription'] as String),
      alarmName: pulumi.Output.create<String>(map['alarmName'] as String),
      alarmRule: pulumi.Output.create<String>(map['alarmRule'] as String),
      insufficientDataActions: map['insufficientDataActions'] == null ? null : pulumi.Output.create<List<String>>((map['insufficientDataActions'] as List).cast<String>()),
      okActions: map['okActions'] == null ? null : pulumi.Output.create<List<String>>((map['okActions'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

