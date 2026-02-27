// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../composite_alarm_actions_suppressor/composite_alarm_actions_suppressor.dart';

/// The set of arguments for CompositeAlarm.
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

  CompositeAlarmArgs({
    this.actionsEnabled,
    this.actionsSuppressor,
    this.alarmActions,
    this.alarmDescription,
    required this.alarmName,
    required this.alarmRule,
    this.insufficientDataActions,
    this.okActions,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionsEnabledValue = actionsEnabled;
    if (actionsEnabledValue != null) {
      map['actionsEnabled'] = actionsEnabledValue;
    }
    final actionsSuppressorValue = actionsSuppressor;
    if (actionsSuppressorValue != null) {
      map['actionsSuppressor'] = pulumi.Input.mapOptionalInputValue<
              CompositeAlarmActionsSuppressor, Map<String, dynamic>>(
          actionsSuppressorValue, (value) => value.toMap());
    }
    final alarmActionsValue = alarmActions;
    if (alarmActionsValue != null) {
      map['alarmActions'] = alarmActionsValue;
    }
    final alarmDescriptionValue = alarmDescription;
    if (alarmDescriptionValue != null) {
      map['alarmDescription'] = alarmDescriptionValue;
    }
    map['alarmName'] = alarmName;
    map['alarmRule'] = alarmRule;
    final insufficientDataActionsValue = insufficientDataActions;
    if (insufficientDataActionsValue != null) {
      map['insufficientDataActions'] = insufficientDataActionsValue;
    }
    final okActionsValue = okActions;
    if (okActionsValue != null) {
      map['okActions'] = okActionsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory CompositeAlarmArgs.fromMap(Map<String, dynamic> map) {
    return CompositeAlarmArgs(
      actionsEnabled: pulumi.Input.asOptionalInput<bool>(map['actionsEnabled']),
      actionsSuppressor:
          pulumi.Input.asOptionalInput<CompositeAlarmActionsSuppressor>(
              map['actionsSuppressor']),
      alarmActions:
          pulumi.Input.asOptionalInput<List<String>>(map['alarmActions']),
      alarmDescription:
          pulumi.Input.asOptionalInput<String>(map['alarmDescription']),
      alarmName: pulumi.Input.asInput<String>(map['alarmName']),
      alarmRule: pulumi.Input.asInput<String>(map['alarmRule']),
      insufficientDataActions: pulumi.Input.asOptionalInput<List<String>>(
          map['insufficientDataActions']),
      okActions: pulumi.Input.asOptionalInput<List<String>>(map['okActions']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
