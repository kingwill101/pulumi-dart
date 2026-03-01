// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'match_condition_response.dart';

/// Defines a rate limiting rule that can be included in a waf policy
class RateLimitRuleResponse {
  /// Describes what action to be applied when rule matches
  final String action;
  /// Describes if the custom rule is in enabled or disabled state. Defaults to Enabled if not specified.
  final String? enabledState;
  /// List of match conditions.
  final List<MatchConditionResponse> matchConditions;
  /// Defines the name of the custom rule
  final String name;
  /// Defines in what order this rule be evaluated in the overall list of custom rules
  final int priority;
  /// Defines rate limit duration. Default is 1 minute.
  final int rateLimitDurationInMinutes;
  /// Defines rate limit threshold.
  final int rateLimitThreshold;

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
      'matchConditions': pulumi.Input.encodeList<MatchConditionResponse, Map<String, dynamic>>(matchConditions, (value) => value.toMap()),
      'name': name,
      'priority': priority,
      'rateLimitDurationInMinutes': rateLimitDurationInMinutes,
      'rateLimitThreshold': rateLimitThreshold,
    };
  }

  factory RateLimitRuleResponse.fromMap(Map<String, dynamic> map) {
    return RateLimitRuleResponse(
      action: map['action'] as String,
      enabledState: map['enabledState'] == null ? null : map['enabledState'] as String,
      matchConditions: pulumi.Input.decodeList<MatchConditionResponse>(map['matchConditions'], (value) => MatchConditionResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      priority: map['priority'] as int,
      rateLimitDurationInMinutes: map['rateLimitDurationInMinutes'] as int,
      rateLimitThreshold: map['rateLimitThreshold'] as int,
    );
  }
}

