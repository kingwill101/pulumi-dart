// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Kafka Shared Subscription properties
class KafkaSharedSubscriptionProperties {
  /// The minimum number to use in a group for subscription.
  final pulumi.Input<int> groupMinimumShareNumber;
  /// The name of the shared subscription.
  final pulumi.Input<String> groupName;

  /// Creates a new [KafkaSharedSubscriptionProperties].
  /// [groupMinimumShareNumber] The minimum number to use in a group for subscription.
  /// [groupName] The name of the shared subscription.
  const KafkaSharedSubscriptionProperties({
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
      groupMinimumShareNumber: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['groupMinimumShareNumber'])),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
    );
  }
}
