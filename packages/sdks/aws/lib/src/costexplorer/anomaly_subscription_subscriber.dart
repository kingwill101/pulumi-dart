// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnomalySubscriptionSubscriber {
  /// The address of the subscriber. If type is `SNS`, this will be the arn of the sns topic. If type is `EMAIL`, this will be the destination email address.
  final pulumi.Input<String> address;
  /// The type of subscription. Valid Values: `SNS` | `EMAIL`.
  final pulumi.Input<String> type;

  /// Creates a new [AnomalySubscriptionSubscriber].
  /// [address] The address of the subscriber. If type is `SNS`, this will be the arn of the sns topic. If type is `EMAIL`, this will be the destination email address.
  /// [type] The type of subscription. Valid Values: `SNS` | `EMAIL`.
  const AnomalySubscriptionSubscriber({
    required this.address,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'type': type,
    };
  }

  factory AnomalySubscriptionSubscriber.fromMap(Map<String, dynamic> map) {
    return AnomalySubscriptionSubscriber(
      address: pulumi.Input.fromValue(map['address'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
