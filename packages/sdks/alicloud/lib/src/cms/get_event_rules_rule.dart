// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_event_rules_rule_event_pattern.dart';

class GetEventRulesRule {
  /// The description of the rule.
  final pulumi.Input<String> description;

  /// Event mode, used to describe the trigger conditions for this event.
  final pulumi.Input<List<GetEventRulesRuleEventPattern>> eventPatterns;

  /// The name of the event rule.
  final pulumi.Input<String> eventRuleName;

  /// The type of event.
  final pulumi.Input<String> eventType;

  /// The ID of the application Group.
  final pulumi.Input<String> groupId;

  /// The ID of the Event Rule. Its value is same as Event Rule Name.
  final pulumi.Input<String> id;

  /// The mute period during which new alerts are not sent even if the trigger conditions are met.
  final pulumi.Input<int> silenceTime;

  /// The status of the resource.
  final pulumi.Input<String> status;

  /// Creates a new [GetEventRulesRule].
  /// [description] The description of the rule.
  /// [eventPatterns] Event mode, used to describe the trigger conditions for this event.
  /// [eventRuleName] The name of the event rule.
  /// [eventType] The type of event.
  /// [groupId] The ID of the application Group.
  /// [id] The ID of the Event Rule. Its value is same as Event Rule Name.
  /// [silenceTime] The mute period during which new alerts are not sent even if the trigger conditions are met.
  /// [status] The status of the resource.
  GetEventRulesRule({
    required this.description,
    required this.eventPatterns,
    required this.eventRuleName,
    required this.eventType,
    required this.groupId,
    required this.id,
    required this.silenceTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'eventPatterns':
          pulumi.Input.mapInputValue<
            List<GetEventRulesRuleEventPattern>,
            List<Map<String, dynamic>>
          >(
            eventPatterns,
            (value) =>
                pulumi.Input.encodeList<
                  GetEventRulesRuleEventPattern,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'eventRuleName': eventRuleName,
      'eventType': eventType,
      'groupId': groupId,
      'id': id,
      'silenceTime': silenceTime,
      'status': status,
    };
  }

  factory GetEventRulesRule.fromMap(Map<String, dynamic> map) {
    return GetEventRulesRule(
      description: pulumi.Input.fromValue(map['description'] as String),
      eventPatterns: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetEventRulesRuleEventPattern>(
          map['eventPatterns']!,
          (value) => GetEventRulesRuleEventPattern.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      eventRuleName: pulumi.Input.fromValue(map['eventRuleName'] as String),
      eventType: pulumi.Input.fromValue(map['eventType'] as String),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      silenceTime: pulumi.Input.fromValue(map['silenceTime'] as int),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
