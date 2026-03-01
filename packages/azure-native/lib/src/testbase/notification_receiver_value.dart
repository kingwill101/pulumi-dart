// ignore_for_file: unused_element, unnecessary_cast

import 'distribution_group_list_receiver_value.dart';
import 'subscription_receiver_value.dart';
import 'user_object_receiver_value.dart';

/// A notification event receiver value.
class NotificationReceiverValue {
  /// The user object receiver value.
  final DistributionGroupListReceiverValue? distributionGroupListReceiverValue;
  /// The user object receiver value.
  final SubscriptionReceiverValue? subscriptionReceiverValue;
  /// The user object receiver value.
  final UserObjectReceiverValue? userObjectReceiverValue;

  /// Creates a new [NotificationReceiverValue].
  /// [distributionGroupListReceiverValue] The user object receiver value.
  /// [subscriptionReceiverValue] The user object receiver value.
  /// [userObjectReceiverValue] The user object receiver value.
  NotificationReceiverValue({
    this.distributionGroupListReceiverValue,
    this.subscriptionReceiverValue,
    this.userObjectReceiverValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionGroupListReceiverValue': ?distributionGroupListReceiverValue == null ? null : distributionGroupListReceiverValue!.toMap(),
      'subscriptionReceiverValue': ?subscriptionReceiverValue == null ? null : subscriptionReceiverValue!.toMap(),
      'userObjectReceiverValue': ?userObjectReceiverValue == null ? null : userObjectReceiverValue!.toMap(),
    };
  }

  factory NotificationReceiverValue.fromMap(Map<String, dynamic> map) {
    return NotificationReceiverValue(
      distributionGroupListReceiverValue: map['distributionGroupListReceiverValue'] == null ? null : DistributionGroupListReceiverValue.fromMap((map['distributionGroupListReceiverValue'] as Map).cast<String, dynamic>()),
      subscriptionReceiverValue: map['subscriptionReceiverValue'] == null ? null : SubscriptionReceiverValue.fromMap((map['subscriptionReceiverValue'] as Map).cast<String, dynamic>()),
      userObjectReceiverValue: map['userObjectReceiverValue'] == null ? null : UserObjectReceiverValue.fromMap((map['userObjectReceiverValue'] as Map).cast<String, dynamic>()),
    );
  }
}

