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
  AliasRoutingStrategy({
    this.fleetId,
    this.message,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetId': ?fleetId,
      'message': ?message,
      'type': type,
    };
  }

  factory AliasRoutingStrategy.fromMap(Map<String, dynamic> map) {
    return AliasRoutingStrategy(
      fleetId: map['fleetId'] == null ? null : (map['fleetId'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

