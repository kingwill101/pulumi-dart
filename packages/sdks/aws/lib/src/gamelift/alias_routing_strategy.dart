// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AliasRoutingStrategy {
  /// ID of the GameLift Fleet to point the alias to.
  final pulumi.Input<String>? fleetId;

  /// Message text to be used with the `TERMINAL` routing strategy.
  final pulumi.Input<String>? message;

  /// Type of routing strategyE.g., `SIMPLE` or `TERMINAL`
  final pulumi.Input<String> type;

  /// Creates a new [AliasRoutingStrategy].
  /// [fleetId] ID of the GameLift Fleet to point the alias to.
  /// [message] Message text to be used with the `TERMINAL` routing strategy.
  /// [type] Type of routing strategyE.g., `SIMPLE` or `TERMINAL`
  AliasRoutingStrategy({this.fleetId, this.message, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetId': ?fleetId,
      'message': ?message,
      'type': type,
    };
  }

  factory AliasRoutingStrategy.fromMap(Map<String, dynamic> map) {
    return AliasRoutingStrategy(
      fleetId: (() {
        final guardedValue = map['fleetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
