// ignore_for_file: unused_element, unnecessary_cast


/// Kafka Shared Subscription properties
class KafkaSharedSubscriptionProperties {
  /// The minimum number to use in a group for subscription.
  final int groupMinimumShareNumber;
  /// The name of the shared subscription.
  final String groupName;

  /// Creates a new [KafkaSharedSubscriptionProperties].
  /// [groupMinimumShareNumber] The minimum number to use in a group for subscription.
  /// [groupName] The name of the shared subscription.
  KafkaSharedSubscriptionProperties({
    required this.groupMinimumShareNumber,
    required this.groupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupMinimumShareNumber': groupMinimumShareNumber,
      'groupName': groupName,
    };
  }

  factory KafkaSharedSubscriptionProperties.fromMap(Map<String, dynamic> map) {
    return KafkaSharedSubscriptionProperties(
      groupMinimumShareNumber: map['groupMinimumShareNumber'] as int,
      groupName: map['groupName'] as String,
    );
  }
}

