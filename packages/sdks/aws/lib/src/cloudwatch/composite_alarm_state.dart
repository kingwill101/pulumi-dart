// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'composite_alarm_actions_suppressor.dart';

/// Input properties used for looking up and filtering CompositeAlarm resources.
class CompositeAlarmState {
  /// Indicates whether actions should be executed during any changes to the alarm state of the composite alarm. Defaults to `true`.
  final pulumi.Input<bool>? actionsEnabled;
  /// Actions will be suppressed if the suppressor alarm is in the ALARM state.
  final pulumi.Input<CompositeAlarmActionsSuppressor>? actionsSuppressor;
  /// The set of actions to execute when this alarm transitions to the `ALARM` state from any other state. Each action is specified as an ARN. Up to 5 actions are allowed.
  final pulumi.Input<List<String>>? alarmActions;
  /// The description for the composite alarm.
  final pulumi.Input<String>? alarmDescription;
  /// The name for the composite alarm. This name must be unique within the region.
  final pulumi.Input<String>? alarmName;
  /// An expression that specifies which other alarms are to be evaluated to determine this composite alarm's state. For syntax, see [Creating a Composite Alarm](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Create_Composite_Alarm.html). The maximum length is 10240 characters.
  final pulumi.Input<String>? alarmRule;
  /// The ARN of the composite alarm.
  final pulumi.Input<String>? arn;
  /// The set of actions to execute when this alarm transitions to the `INSUFFICIENT_DATA` state from any other state. Each action is specified as an ARN. Up to 5 actions are allowed.
  final pulumi.Input<List<String>>? insufficientDataActions;
  /// The set of actions to execute when this alarm transitions to an `OK` state from any other state. Each action is specified as an ARN. Up to 5 actions are allowed.
  final pulumi.Input<List<String>>? okActions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to associate with the alarm. Up to 50 tags are allowed. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [CompositeAlarmState].
  /// [actionsEnabled] Indicates whether actions should be executed during any changes to the alarm state of the composite alarm. Defaults to `true`.
  /// [actionsSuppressor] Actions will be suppressed if the suppressor alarm is in the ALARM state.
  /// [alarmActions] The set of actions to execute when this alarm transitions to the `ALARM` state from any other state. Each action is specified as an ARN. Up to 5 actions are allowed.
  /// [alarmDescription] The description for the composite alarm.
  /// [alarmName] The name for the composite alarm. This name must be unique within the region.
  /// [alarmRule] An expression that specifies which other alarms are to be evaluated to determine this composite alarm's state. For syntax, see [Creating a Composite Alarm](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Create_Composite_Alarm.html). The maximum length is 10240 characters.
  /// [arn] The ARN of the composite alarm.
  /// [insufficientDataActions] The set of actions to execute when this alarm transitions to the `INSUFFICIENT_DATA` state from any other state. Each action is specified as an ARN. Up to 5 actions are allowed.
  /// [okActions] The set of actions to execute when this alarm transitions to an `OK` state from any other state. Each action is specified as an ARN. Up to 5 actions are allowed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to associate with the alarm. Up to 50 tags are allowed. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  CompositeAlarmState({
    pulumi.Output<bool>? actionsEnabled,
    pulumi.Output<CompositeAlarmActionsSuppressor>? actionsSuppressor,
    pulumi.Output<List<String>>? alarmActions,
    pulumi.Output<String>? alarmDescription,
    pulumi.Output<String>? alarmName,
    pulumi.Output<String>? alarmRule,
    pulumi.Output<String>? arn,
    pulumi.Output<List<String>>? insufficientDataActions,
    pulumi.Output<List<String>>? okActions,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      actionsEnabled = pulumi.Input.asOptionalInput<bool>(actionsEnabled),
      actionsSuppressor = pulumi.Input.asOptionalInput<CompositeAlarmActionsSuppressor>(actionsSuppressor),
      alarmActions = pulumi.Input.asOptionalInput<List<String>>(alarmActions),
      alarmDescription = pulumi.Input.asOptionalInput<String>(alarmDescription),
      alarmName = pulumi.Input.asOptionalInput<String>(alarmName),
      alarmRule = pulumi.Input.asOptionalInput<String>(alarmRule),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      insufficientDataActions = pulumi.Input.asOptionalInput<List<String>>(insufficientDataActions),
      okActions = pulumi.Input.asOptionalInput<List<String>>(okActions),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsEnabled': ?actionsEnabled,
      'actionsSuppressor': ?pulumi.Input.mapOptionalInputValue<CompositeAlarmActionsSuppressor, Map<String, dynamic>>(actionsSuppressor, (value) => value.toMap()),
      'alarmActions': ?alarmActions,
      'alarmDescription': ?alarmDescription,
      'alarmName': ?alarmName,
      'alarmRule': ?alarmRule,
      'arn': ?arn,
      'insufficientDataActions': ?insufficientDataActions,
      'okActions': ?okActions,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory CompositeAlarmState.fromMap(Map<String, dynamic> map) {
    return CompositeAlarmState(
      actionsEnabled: map['actionsEnabled'] == null ? null : pulumi.Output.create<bool>(map['actionsEnabled'] as bool),
      actionsSuppressor: map['actionsSuppressor'] == null ? null : pulumi.Output.create<CompositeAlarmActionsSuppressor>(CompositeAlarmActionsSuppressor.fromMap((map['actionsSuppressor'] as Map).cast<String, dynamic>())),
      alarmActions: map['alarmActions'] == null ? null : pulumi.Output.create<List<String>>((map['alarmActions'] as List).cast<String>()),
      alarmDescription: map['alarmDescription'] == null ? null : pulumi.Output.create<String>(map['alarmDescription'] as String),
      alarmName: map['alarmName'] == null ? null : pulumi.Output.create<String>(map['alarmName'] as String),
      alarmRule: map['alarmRule'] == null ? null : pulumi.Output.create<String>(map['alarmRule'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      insufficientDataActions: map['insufficientDataActions'] == null ? null : pulumi.Output.create<List<String>>((map['insufficientDataActions'] as List).cast<String>()),
      okActions: map['okActions'] == null ? null : pulumi.Output.create<List<String>>((map['okActions'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

