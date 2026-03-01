// ignore_for_file: unused_element, unnecessary_cast

class AnomalySubscriptionSubscriber {
  /// The address of the subscriber. If type is `SNS`, this will be the arn of the sns topic. If type is `EMAIL`, this will be the destination email address.
  final String address;

  /// The type of subscription. Valid Values: `SNS` | `EMAIL`.
  final String type;

  /// Creates a new [AnomalySubscriptionSubscriber].
  /// [address] The address of the subscriber. If type is `SNS`, this will be the arn of the sns topic. If type is `EMAIL`, this will be the destination email address.
  /// [type] The type of subscription. Valid Values: `SNS` | `EMAIL`.
  AnomalySubscriptionSubscriber({required this.address, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'address': address, 'type': type};
  }

  factory AnomalySubscriptionSubscriber.fromMap(Map<String, dynamic> map) {
    return AnomalySubscriptionSubscriber(
      address: map['address'] as String,
      type: map['type'] as String,
    );
  }
}
