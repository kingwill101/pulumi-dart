// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_routine_route_routine_route_args_doc}
/// The set of arguments for RoutineRoute.
/// {@endtemplate}
/// {@macro pulumi_esa_routine_route_routine_route_args_doc}
class RoutineRouteArgs {
  /// Bypass mode. Value range:
  /// - on: Open
  /// - off: off
  final pulumi.Input<String>? bypass;
  /// Spare
  final pulumi.Input<String>? fallback;
  /// Routing switch. Value range:
  /// - on: Open
  /// - off: off
  final pulumi.Input<String>? routeEnable;
  /// The route name.
  final pulumi.Input<String>? routeName;
  /// The edge function Routine name.
  final pulumi.Input<String> routineName;
  /// The rule content.
  final pulumi.Input<String>? rule;
  /// Rule execution order.
  final pulumi.Input<int>? sequence;
  /// Site Id
  final pulumi.Input<String> siteId;

  /// Creates a new [RoutineRouteArgs].
  /// [bypass] Bypass mode. Value range:
  /// [fallback] Spare
  /// [routeEnable] Routing switch. Value range:
  /// [routeName] The route name.
  /// [routineName] The edge function Routine name.
  /// [rule] The rule content.
  /// [sequence] Rule execution order.
  /// [siteId] Site Id
  RoutineRouteArgs({
    this.bypass,
    this.fallback,
    this.routeEnable,
    this.routeName,
    required this.routineName,
    this.rule,
    this.sequence,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypass': ?bypass,
      'fallback': ?fallback,
      'routeEnable': ?routeEnable,
      'routeName': ?routeName,
      'routineName': routineName,
      'rule': ?rule,
      'sequence': ?sequence,
      'siteId': siteId,
    };
  }

  factory RoutineRouteArgs.fromMap(Map<String, dynamic> map) {
    return RoutineRouteArgs(
      bypass: (() { final guardedValue = map['bypass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fallback: (() { final guardedValue = map['fallback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeEnable: (() { final guardedValue = map['routeEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeName: (() { final guardedValue = map['routeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routineName: pulumi.Input.fromValue(map['routineName'] as String),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sequence: (() { final guardedValue = map['sequence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
    );
  }
}

