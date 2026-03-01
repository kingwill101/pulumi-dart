// ignore_for_file: unused_element, unnecessary_cast

import 'routing_rule_condition_match_base_paths.dart';
import 'routing_rule_condition_match_headers.dart';

class RoutingRuleCondition {
  /// The base path to be matched. See below.
  final RoutingRuleConditionMatchBasePaths? matchBasePaths;
  /// The headers to be matched. See below.
  final RoutingRuleConditionMatchHeaders? matchHeaders;

  /// Creates a new [RoutingRuleCondition].
  /// [matchBasePaths] The base path to be matched. See below.
  /// [matchHeaders] The headers to be matched. See below.
  RoutingRuleCondition({
    this.matchBasePaths,
    this.matchHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchBasePaths': ?matchBasePaths == null ? null : matchBasePaths!.toMap(),
      'matchHeaders': ?matchHeaders == null ? null : matchHeaders!.toMap(),
    };
  }

  factory RoutingRuleCondition.fromMap(Map<String, dynamic> map) {
    return RoutingRuleCondition(
      matchBasePaths: map['matchBasePaths'] == null ? null : RoutingRuleConditionMatchBasePaths.fromMap((map['matchBasePaths'] as Map).cast<String, dynamic>()),
      matchHeaders: map['matchHeaders'] == null ? null : RoutingRuleConditionMatchHeaders.fromMap((map['matchHeaders'] as Map).cast<String, dynamic>()),
    );
  }
}

