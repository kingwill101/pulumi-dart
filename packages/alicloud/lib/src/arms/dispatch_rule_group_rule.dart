// ignore_for_file: unused_element, unnecessary_cast


class DispatchRuleGroupRule {
  /// The ID of the group rule.
  final int? groupId;
  /// The duration for which the system waits after the first alert is sent. After the duration, all alerts are sent in a single notification to the handler.
  final int groupInterval;
  /// The duration for which the system waits after the first alert is sent. After the duration, all alerts are sent in a single notification to the handler.
  final int groupWaitTime;
  /// The fields that are used to group events. Events with the same field content are assigned to a group. Alerts with the same specified grouping field are sent to the handler in separate notifications.
  final List<String> groupingFields;
  /// The silence period of repeated alerts. All alerts are repeatedly sent at specified intervals until the alerts are cleared. The minimum value is 61. Default to 600.
  final int? repeatInterval;

  /// Creates a new [DispatchRuleGroupRule].
  /// [groupId] The ID of the group rule.
  /// [groupInterval] The duration for which the system waits after the first alert is sent. After the duration, all alerts are sent in a single notification to the handler.
  /// [groupWaitTime] The duration for which the system waits after the first alert is sent. After the duration, all alerts are sent in a single notification to the handler.
  /// [groupingFields] The fields that are used to group events. Events with the same field content are assigned to a group. Alerts with the same specified grouping field are sent to the handler in separate notifications.
  /// [repeatInterval] The silence period of repeated alerts. All alerts are repeatedly sent at specified intervals until the alerts are cleared. The minimum value is 61. Default to 600.
  DispatchRuleGroupRule({
    this.groupId,
    required this.groupInterval,
    required this.groupWaitTime,
    required this.groupingFields,
    this.repeatInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'groupInterval': groupInterval,
      'groupWaitTime': groupWaitTime,
      'groupingFields': groupingFields,
      'repeatInterval': ?repeatInterval,
    };
  }

  factory DispatchRuleGroupRule.fromMap(Map<String, dynamic> map) {
    return DispatchRuleGroupRule(
      groupId: map['groupId'] == null ? null : map['groupId'] as int,
      groupInterval: map['groupInterval'] as int,
      groupWaitTime: map['groupWaitTime'] as int,
      groupingFields: (map['groupingFields'] as List).cast<String>(),
      repeatInterval: map['repeatInterval'] == null ? null : map['repeatInterval'] as int,
    );
  }
}

