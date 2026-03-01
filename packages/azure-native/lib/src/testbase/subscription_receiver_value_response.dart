// ignore_for_file: unused_element, unnecessary_cast


/// The subscription role receiver value.
class SubscriptionReceiverValueResponse {
  /// The role of the notification receiver.
  final String? role;
  /// The subscription id of the notification receiver.
  final String? subscriptionId;
  /// The subscription name of the notification receiver.
  final String? subscriptionName;

  /// Creates a new [SubscriptionReceiverValueResponse].
  /// [role] The role of the notification receiver.
  /// [subscriptionId] The subscription id of the notification receiver.
  /// [subscriptionName] The subscription name of the notification receiver.
  SubscriptionReceiverValueResponse({
    this.role,
    this.subscriptionId,
    this.subscriptionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'role': ?role,
      'subscriptionId': ?subscriptionId,
      'subscriptionName': ?subscriptionName,
    };
  }

  factory SubscriptionReceiverValueResponse.fromMap(Map<String, dynamic> map) {
    return SubscriptionReceiverValueResponse(
      role: map['role'] == null ? null : map['role'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      subscriptionName: map['subscriptionName'] == null ? null : map['subscriptionName'] as String,
    );
  }
}

