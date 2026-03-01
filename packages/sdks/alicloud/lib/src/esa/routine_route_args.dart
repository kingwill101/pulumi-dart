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
    pulumi.Output<String>? bypass,
    pulumi.Output<String>? fallback,
    pulumi.Output<String>? routeEnable,
    pulumi.Output<String>? routeName,
    required pulumi.Output<String> routineName,
    pulumi.Output<String>? rule,
    pulumi.Output<int>? sequence,
    required pulumi.Output<String> siteId,
  }) :
      bypass = pulumi.Input.asOptionalInput<String>(bypass),
      fallback = pulumi.Input.asOptionalInput<String>(fallback),
      routeEnable = pulumi.Input.asOptionalInput<String>(routeEnable),
      routeName = pulumi.Input.asOptionalInput<String>(routeName),
      routineName = pulumi.Input.asInput<String>(routineName),
      rule = pulumi.Input.asOptionalInput<String>(rule),
      sequence = pulumi.Input.asOptionalInput<int>(sequence),
      siteId = pulumi.Input.asInput<String>(siteId);

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
      bypass: map['bypass'] == null ? null : pulumi.Output.create<String>(map['bypass'] as String),
      fallback: map['fallback'] == null ? null : pulumi.Output.create<String>(map['fallback'] as String),
      routeEnable: map['routeEnable'] == null ? null : pulumi.Output.create<String>(map['routeEnable'] as String),
      routeName: map['routeName'] == null ? null : pulumi.Output.create<String>(map['routeName'] as String),
      routineName: pulumi.Output.create<String>(map['routineName'] as String),
      rule: map['rule'] == null ? null : pulumi.Output.create<String>(map['rule'] as String),
      sequence: map['sequence'] == null ? null : pulumi.Output.create<int>(map['sequence'] as int),
      siteId: pulumi.Output.create<String>(map['siteId'] as String),
    );
  }
}

