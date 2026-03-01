// ignore_for_file: unused_element, unnecessary_cast


/// MqttBridgeRoute Shared subscription properties
class MqttBridgeRouteSharedSubscriptionResponse {
  /// The group shared subscription minimum share number.
  final int groupMinimumShareNumber;
  /// The group name for Shared subscription.
  final String groupName;

  /// Creates a new [MqttBridgeRouteSharedSubscriptionResponse].
  /// [groupMinimumShareNumber] The group shared subscription minimum share number.
  /// [groupName] The group name for Shared subscription.
  MqttBridgeRouteSharedSubscriptionResponse({
    required this.groupMinimumShareNumber,
    required this.groupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupMinimumShareNumber': groupMinimumShareNumber,
      'groupName': groupName,
    };
  }

  factory MqttBridgeRouteSharedSubscriptionResponse.fromMap(Map<String, dynamic> map) {
    return MqttBridgeRouteSharedSubscriptionResponse(
      groupMinimumShareNumber: map['groupMinimumShareNumber'] as int,
      groupName: map['groupName'] as String,
    );
  }
}

