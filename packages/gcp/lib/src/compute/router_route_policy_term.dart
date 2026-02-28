// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_route_policy_term_action.dart';
import 'router_route_policy_term_match.dart';

class RouterRoutePolicyTerm {
  /// 'CEL expressions to evaluate to modify a route when this term matches.'\
  /// Structure is documented below.
  final List<RouterRoutePolicyTermAction>? actions;

  /// CEL expression evaluated against a route to determine if this term applies (see Policy Language).
  /// Structure is documented below.
  final RouterRoutePolicyTermMatch match;

  /// The evaluation priority for this term, which must be between 0 (inclusive) and 231 (exclusive), and unique within the list.
  final int priority;

  /// Creates a new [RouterRoutePolicyTerm].
  /// [actions] 'CEL expressions to evaluate to modify a route when this term matches.'\
  /// [match] CEL expression evaluated against a route to determine if this term applies (see Policy Language).
  /// [priority] The evaluation priority for this term, which must be between 0 (inclusive) and 231 (exclusive), and unique within the list.
  RouterRoutePolicyTerm({
    this.actions,
    required this.match,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionsValue = actions;
    if (actionsValue != null) {
      map['actions'] = pulumi.Input.encodeList<RouterRoutePolicyTermAction,
          Map<String, dynamic>>(actionsValue, (value) => value.toMap());
    }
    map['match'] = match.toMap();
    map['priority'] = priority;
    return map;
  }

  factory RouterRoutePolicyTerm.fromMap(Map<String, dynamic> map) {
    return RouterRoutePolicyTerm(
      actions: map['actions'] == null
          ? null
          : pulumi.Input.decodeList<RouterRoutePolicyTermAction>(
              map['actions'],
              (value) => RouterRoutePolicyTermAction.fromMap(
                  (value as Map).cast<String, dynamic>())),
      match: RouterRoutePolicyTermMatch.fromMap(
          (map['match'] as Map).cast<String, dynamic>()),
      priority: map['priority'] as int,
    );
  }
}
