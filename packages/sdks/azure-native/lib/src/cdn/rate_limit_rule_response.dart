// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'match_condition_response.dart';

/// Defines a rate limiting rule that can be included in a waf policy
class RateLimitRuleResponse {
  /// Describes what action to be applied when rule matches
  final pulumi.Input<String> action;

  /// Describes if the custom rule is in enabled or disabled state. Defaults to Enabled if not specified.
  final pulumi.Input<String>? enabledState;

  /// List of match conditions.
  final pulumi.Input<List<MatchConditionResponse>> matchConditions;

  /// Defines the name of the custom rule
  final pulumi.Input<String> name;

  /// Defines in what order this rule be evaluated in the overall list of custom rules
  final pulumi.Input<int> priority;

  /// Defines rate limit duration. Default is 1 minute.
  final pulumi.Input<int> rateLimitDurationInMinutes;

  /// Defines rate limit threshold.
  final pulumi.Input<int> rateLimitThreshold;

  /// Creates a new [RateLimitRuleResponse].
  /// [action] Describes what action to be applied when rule matches
  /// [enabledState] Describes if the custom rule is in enabled or disabled state. Defaults to Enabled if not specified.
  /// [matchConditions] List of match conditions.
  /// [name] Defines the name of the custom rule
  /// [priority] Defines in what order this rule be evaluated in the overall list of custom rules
  /// [rateLimitDurationInMinutes] Defines rate limit duration. Default is 1 minute.
  /// [rateLimitThreshold] Defines rate limit threshold.
  RateLimitRuleResponse({
    required this.action,
    this.enabledState,
    required this.matchConditions,
    required this.name,
    required this.priority,
    required this.rateLimitDurationInMinutes,
    required this.rateLimitThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'enabledState': ?enabledState,
      'matchConditions':
          pulumi.Input.mapInputValue<
            List<MatchConditionResponse>,
            List<Map<String, dynamic>>
          >(
            matchConditions,
            (value) =>
                pulumi.Input.encodeList<
                  MatchConditionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
      'priority': priority,
      'rateLimitDurationInMinutes': rateLimitDurationInMinutes,
      'rateLimitThreshold': rateLimitThreshold,
    };
  }

  factory RateLimitRuleResponse.fromMap(Map<String, dynamic> map) {
    return RateLimitRuleResponse(
      action: pulumi.Input.fromValue(map['action'] as String),
      enabledState: (() {
        final guardedValue = map['enabledState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      matchConditions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<MatchConditionResponse>(
          map['matchConditions']!,
          (value) => MatchConditionResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      rateLimitDurationInMinutes: pulumi.Input.fromValue(
        map['rateLimitDurationInMinutes'] as int,
      ),
      rateLimitThreshold: pulumi.Input.fromValue(
        map['rateLimitThreshold'] as int,
      ),
    );
  }
}
