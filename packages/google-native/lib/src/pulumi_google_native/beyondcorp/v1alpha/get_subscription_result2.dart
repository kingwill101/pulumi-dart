// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSubscription.
class GetSubscriptionResult2 {
  /// Represents that, if subscription will renew or end when the term ends.
  final bool autoRenewEnabled;

  /// Create time of the subscription.
  final String createTime;

  /// End time of the subscription.
  final String endTime;

  /// Unique resource name of the Subscription. The name is ignored when creating a subscription.
  final String name;

  /// Optional. Number of seats in the subscription.
  final String seatCount;

  /// SKU of subscription.
  final String sku;

  /// Start time of the subscription.
  final String startTime;

  /// The current state of the subscription.
  final String state;

  /// Type of subscription.
  final String type;

  GetSubscriptionResult2({
    required this.autoRenewEnabled,
    required this.createTime,
    required this.endTime,
    required this.name,
    required this.seatCount,
    required this.sku,
    required this.startTime,
    required this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoRenewEnabled'] = autoRenewEnabled;
    map['createTime'] = createTime;
    map['endTime'] = endTime;
    map['name'] = name;
    map['seatCount'] = seatCount;
    map['sku'] = sku;
    map['startTime'] = startTime;
    map['state'] = state;
    map['type'] = type;
    return map;
  }

  factory GetSubscriptionResult2.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionResult2(
      autoRenewEnabled: map['autoRenewEnabled'] as bool,
      createTime: map['createTime'] as String,
      endTime: map['endTime'] as String,
      name: map['name'] as String,
      seatCount: map['seatCount'] as String,
      sku: map['sku'] as String,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      type: map['type'] as String,
    );
  }
}
