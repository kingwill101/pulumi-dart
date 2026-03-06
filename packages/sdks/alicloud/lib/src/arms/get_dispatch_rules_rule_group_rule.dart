// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDispatchRulesRuleGroupRule {
  /// The duration for which the system waits after the first alert is sent. After the duration, all alerts are sent in a single notification to the handler.
  final pulumi.Input<int> groupInterval;
  /// The duration for which the system waits after the first alert is sent. After the duration, all alerts are sent in a single notification to the handler.
  final pulumi.Input<int> groupWaitTime;
  /// The fields that are used to group events. Events with the same field content are assigned to a group. Alerts with the same specified grouping field are sent to the handler in separate notifications.
  final pulumi.Input<List<String>> groupingFields;
  /// The silence period of repeated alerts. All alerts are repeatedly sent at specified intervals until the alerts are cleared. The minimum value is 61. Default to 600.
  final pulumi.Input<int> repeatInterval;

  /// Creates a new [GetDispatchRulesRuleGroupRule].
  /// [groupInterval] The duration for which the system waits after the first alert is sent. After the duration, all alerts are sent in a single notification to the handler.
  /// [groupWaitTime] The duration for which the system waits after the first alert is sent. After the duration, all alerts are sent in a single notification to the handler.
  /// [groupingFields] The fields that are used to group events. Events with the same field content are assigned to a group. Alerts with the same specified grouping field are sent to the handler in separate notifications.
  /// [repeatInterval] The silence period of repeated alerts. All alerts are repeatedly sent at specified intervals until the alerts are cleared. The minimum value is 61. Default to 600.
  const GetDispatchRulesRuleGroupRule({
    required this.groupInterval,
    required this.groupWaitTime,
    required this.groupingFields,
    required this.repeatInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupInterval': groupInterval,
      'groupWaitTime': groupWaitTime,
      'groupingFields': groupingFields,
      'repeatInterval': repeatInterval,
    };
  }

  factory GetDispatchRulesRuleGroupRule.fromMap(Map<String, dynamic> map) {
    return GetDispatchRulesRuleGroupRule(
      groupInterval: pulumi.Input.fromValue(map['groupInterval'] as int),
      groupWaitTime: pulumi.Input.fromValue(map['groupWaitTime'] as int),
      groupingFields: pulumi.Input.fromValue((map['groupingFields'] as List).cast<String>()),
      repeatInterval: pulumi.Input.fromValue(map['repeatInterval'] as int),
    );
  }
}

