// ignore_for_file: unused_element, unnecessary_cast

import '../routing_rule_condition_match_base_paths/routing_rule_condition_match_base_paths.dart';
import '../routing_rule_condition_match_headers/routing_rule_condition_match_headers.dart';

class RoutingRuleCondition {
  /// The base path to be matched. See below.
  final RoutingRuleConditionMatchBasePaths? matchBasePaths;

  /// The headers to be matched. See below.
  final RoutingRuleConditionMatchHeaders? matchHeaders;

  RoutingRuleCondition({
    this.matchBasePaths,
    this.matchHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final matchBasePathsValue = matchBasePaths;
    if (matchBasePathsValue != null) {
      map['matchBasePaths'] = matchBasePathsValue.toMap();
    }
    final matchHeadersValue = matchHeaders;
    if (matchHeadersValue != null) {
      map['matchHeaders'] = matchHeadersValue.toMap();
    }
    return map;
  }

  factory RoutingRuleCondition.fromMap(Map<String, dynamic> map) {
    return RoutingRuleCondition(
      matchBasePaths: map['matchBasePaths'] == null
          ? null
          : RoutingRuleConditionMatchBasePaths.fromMap(
              (map['matchBasePaths'] as Map).cast<String, dynamic>()),
      matchHeaders: map['matchHeaders'] == null
          ? null
          : RoutingRuleConditionMatchHeaders.fromMap(
              (map['matchHeaders'] as Map).cast<String, dynamic>()),
    );
  }
}
