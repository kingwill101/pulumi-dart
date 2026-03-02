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
  RoutineRouteState({
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
      bypass: map['bypass'] == null ? null : (map['bypass']! as String).input(),
      configId: map['configId'] == null ? null : (map['configId']! as int).input(),
      fallback: map['fallback'] == null ? null : (map['fallback']! as String).input(),
      routeEnable: map['routeEnable'] == null ? null : (map['routeEnable']! as String).input(),
      routeName: map['routeName'] == null ? null : (map['routeName']! as String).input(),
      routineName: map['routineName'] == null ? null : (map['routineName']! as String).input(),
      rule: map['rule'] == null ? null : (map['rule']! as String).input(),
      sequence: map['sequence'] == null ? null : (map['sequence']! as int).input(),
      siteId: map['siteId'] == null ? null : (map['siteId']! as String).input(),
    );
  }
}

