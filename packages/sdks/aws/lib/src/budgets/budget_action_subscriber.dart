// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BudgetActionSubscriber {
  /// The address that AWS sends budget notifications to, either an SNS topic or an email.
  final pulumi.Input<String> address;
  /// The type of notification that AWS sends to a subscriber. Valid values are `SNS` or `EMAIL`.
  final pulumi.Input<String> subscriptionType;

  /// Creates a new [BudgetActionSubscriber].
  /// [address] The address that AWS sends budget notifications to, either an SNS topic or an email.
  /// [subscriptionType] The type of notification that AWS sends to a subscriber. Valid values are `SNS` or `EMAIL`.
  BudgetActionSubscriber({
    required this.address,
    required this.subscriptionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'subscriptionType': subscriptionType,
    };
  }

  factory BudgetActionSubscriber.fromMap(Map<String, dynamic> map) {
    return BudgetActionSubscriber(
      address: pulumi.Input.fromValue(map['address'] as String),
      subscriptionType: pulumi.Input.fromValue(map['subscriptionType'] as String),
    );
  }
}

