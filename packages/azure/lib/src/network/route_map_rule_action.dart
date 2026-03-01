// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_map_rule_action_parameter.dart';

class RouteMapRuleAction {
  /// A `parameter` block as defined below. Required if `type` is anything other than `Drop`.
  final List<RouteMapRuleActionParameter>? parameters;
  /// The type of the action to be taken. Possible values are `Add`, `Drop`, `Remove`, `Replace` and `Unknown`.
  final String type;

  /// Creates a new [RouteMapRuleAction].
  /// [parameters] A `parameter` block as defined below. Required if `type` is anything other than `Drop`.
  /// [type] The type of the action to be taken. Possible values are `Add`, `Drop`, `Remove`, `Replace` and `Unknown`.
  RouteMapRuleAction({
    this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters == null ? null : pulumi.Input.encodeList<RouteMapRuleActionParameter, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory RouteMapRuleAction.fromMap(Map<String, dynamic> map) {
    return RouteMapRuleAction(
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<RouteMapRuleActionParameter>(map['parameters'], (value) => RouteMapRuleActionParameter.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

