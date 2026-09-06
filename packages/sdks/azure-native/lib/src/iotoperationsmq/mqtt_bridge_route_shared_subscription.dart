// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MqttBridgeRoute Shared subscription properties
class MqttBridgeRouteSharedSubscription {
  /// The group shared subscription minimum share number.
  final pulumi.Input<int> groupMinimumShareNumber;
  /// The group name for Shared subscription.
  final pulumi.Input<String> groupName;

  /// Creates a new [MqttBridgeRouteSharedSubscription].
  /// [groupMinimumShareNumber] The group shared subscription minimum share number.
  /// [groupName] The group name for Shared subscription.
  const MqttBridgeRouteSharedSubscription({
    required this.groupMinimumShareNumber,
    required this.groupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupMinimumShareNumber': groupMinimumShareNumber,
      'groupName': groupName,
    };
  }

  factory MqttBridgeRouteSharedSubscription.fromMap(Map<String, dynamic> map) {
    return MqttBridgeRouteSharedSubscription(
      groupMinimumShareNumber: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['groupMinimumShareNumber'])),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
    );
  }
}
