// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RoutineRoute resources.
class RoutineRouteState {
  /// Bypass mode. Value range:
  /// - on: Open
  /// - off: off
  final pulumi.Input<String>? bypass;
  /// Config Id
  final pulumi.Input<int>? configId;
  /// Spare
  final pulumi.Input<String>? fallback;
  /// Routing switch. Value range:
  /// - on: Open
  /// - off: off
  final pulumi.Input<String>? routeEnable;
  /// The route name.
  final pulumi.Input<String>? routeName;
  /// The edge function Routine name.
  final pulumi.Input<String>? routineName;
  /// The rule content.
  final pulumi.Input<String>? rule;
  /// Rule execution order.
  final pulumi.Input<int>? sequence;
  /// Site Id
  final pulumi.Input<String>? siteId;

  /// Creates a new [RoutineRouteState].
  /// [bypass] Bypass mode. Value range:
  /// [configId] Config Id
  /// [fallback] Spare
  /// [routeEnable] Routing switch. Value range:
  /// [routeName] The route name.
  /// [routineName] The edge function Routine name.
  /// [rule] The rule content.
  /// [sequence] Rule execution order.
  /// [siteId] Site Id
  const RoutineRouteState({
    this.bypass,
    this.configId,
    this.fallback,
    this.routeEnable,
    this.routeName,
    this.routineName,
    this.rule,
    this.sequence,
    this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypass': ?bypass,
      'configId': ?configId,
      'fallback': ?fallback,
      'routeEnable': ?routeEnable,
      'routeName': ?routeName,
      'routineName': ?routineName,
      'rule': ?rule,
      'sequence': ?sequence,
      'siteId': ?siteId,
    };
  }

  factory RoutineRouteState.fromMap(Map<String, dynamic> map) {
    return RoutineRouteState(
      bypass: (() { final guardedValue = map['bypass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configId: (() { final guardedValue = map['configId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fallback: (() { final guardedValue = map['fallback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeEnable: (() { final guardedValue = map['routeEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeName: (() { final guardedValue = map['routeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routineName: (() { final guardedValue = map['routineName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sequence: (() { final guardedValue = map['sequence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

