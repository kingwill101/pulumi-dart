// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_rule_condition_match_base_paths.dart';
import 'routing_rule_condition_match_headers.dart';

class RoutingRuleCondition {
  /// The base path to be matched. See below.
  final pulumi.Input<RoutingRuleConditionMatchBasePaths>? matchBasePaths;
  /// The headers to be matched. See below.
  final pulumi.Input<RoutingRuleConditionMatchHeaders>? matchHeaders;

  /// Creates a new [RoutingRuleCondition].
  /// [matchBasePaths] The base path to be matched. See below.
  /// [matchHeaders] The headers to be matched. See below.
  RoutingRuleCondition({
    this.matchBasePaths,
    this.matchHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchBasePaths': ?pulumi.Input.mapOptionalInputValue<RoutingRuleConditionMatchBasePaths, Map<String, dynamic>>(matchBasePaths, (value) => value.toMap()),
      'matchHeaders': ?pulumi.Input.mapOptionalInputValue<RoutingRuleConditionMatchHeaders, Map<String, dynamic>>(matchHeaders, (value) => value.toMap()),
    };
  }

  factory RoutingRuleCondition.fromMap(Map<String, dynamic> map) {
    return RoutingRuleCondition(
      matchBasePaths: (() { final guardedValue = map['matchBasePaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutingRuleConditionMatchBasePaths.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      matchHeaders: (() { final guardedValue = map['matchHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutingRuleConditionMatchHeaders.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

