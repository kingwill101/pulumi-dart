// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_event_rules_rule_event_pattern.dart';

class GetEventRulesRule {
  /// The description of the rule.
  final String description;
  /// Event mode, used to describe the trigger conditions for this event.
  final List<GetEventRulesRuleEventPattern> eventPatterns;
  /// The name of the event rule.
  final String eventRuleName;
  /// The type of event.
  final String eventType;
  /// The ID of the application Group.
  final String groupId;
  /// The ID of the Event Rule. Its value is same as Event Rule Name.
  final String id;
  /// The mute period during which new alerts are not sent even if the trigger conditions are met.
  final int silenceTime;
  /// The status of the resource.
  final String status;

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
      'eventPatterns': pulumi.Input.encodeList<GetEventRulesRuleEventPattern, Map<String, dynamic>>(eventPatterns, (value) => value.toMap()),
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
      description: map['description'] as String,
      eventPatterns: pulumi.Input.decodeList<GetEventRulesRuleEventPattern>(map['eventPatterns'], (value) => GetEventRulesRuleEventPattern.fromMap((value as Map).cast<String, dynamic>())),
      eventRuleName: map['eventRuleName'] as String,
      eventType: map['eventType'] as String,
      groupId: map['groupId'] as String,
      id: map['id'] as String,
      silenceTime: map['silenceTime'] as int,
      status: map['status'] as String,
    );
  }
}

