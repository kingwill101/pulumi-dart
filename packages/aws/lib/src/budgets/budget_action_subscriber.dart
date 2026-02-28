// ignore_for_file: unused_element, unnecessary_cast

class BudgetActionSubscriber {
  /// The address that AWS sends budget notifications to, either an SNS topic or an email.
  final String address;

  /// The type of notification that AWS sends to a subscriber. Valid values are `SNS` or `EMAIL`.
  final String subscriptionType;

  /// Creates a new [BudgetActionSubscriber].
  /// [address] The address that AWS sends budget notifications to, either an SNS topic or an email.
  /// [subscriptionType] The type of notification that AWS sends to a subscriber. Valid values are `SNS` or `EMAIL`.
  BudgetActionSubscriber({
    required this.address,
    required this.subscriptionType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['subscriptionType'] = subscriptionType;
    return map;
  }

  factory BudgetActionSubscriber.fromMap(Map<String, dynamic> map) {
    return BudgetActionSubscriber(
      address: map['address'] as String,
      subscriptionType: map['subscriptionType'] as String,
    );
  }
}
