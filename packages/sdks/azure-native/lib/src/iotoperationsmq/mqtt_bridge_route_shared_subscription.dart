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
  MqttBridgeRouteSharedSubscription({
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
      groupMinimumShareNumber: pulumi.Input.fromValue(map['groupMinimumShareNumber'] as int),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
    );
  }
}

