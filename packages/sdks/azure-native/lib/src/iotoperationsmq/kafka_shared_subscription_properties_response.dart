// ignore_for_file: unused_element, unnecessary_cast


/// Kafka Shared Subscription properties
class KafkaSharedSubscriptionPropertiesResponse {
  /// The minimum number to use in a group for subscription.
  final int groupMinimumShareNumber;
  /// The name of the shared subscription.
  final String groupName;

  /// Creates a new [KafkaSharedSubscriptionPropertiesResponse].
  /// [groupMinimumShareNumber] The minimum number to use in a group for subscription.
  /// [groupName] The name of the shared subscription.
  KafkaSharedSubscriptionPropertiesResponse({
    required this.groupMinimumShareNumber,
    required this.groupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupMinimumShareNumber': groupMinimumShareNumber,
      'groupName': groupName,
    };
  }

  factory KafkaSharedSubscriptionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KafkaSharedSubscriptionPropertiesResponse(
      groupMinimumShareNumber: map['groupMinimumShareNumber'] as int,
      groupName: map['groupName'] as String,
    );
  }
}

