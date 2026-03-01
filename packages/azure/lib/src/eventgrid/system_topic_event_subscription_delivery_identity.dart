// ignore_for_file: unused_element, unnecessary_cast


class SystemTopicEventSubscriptionDeliveryIdentity {
  /// Specifies the type of Managed Service Identity that is used for event delivery. Allowed value is `SystemAssigned`, `UserAssigned`.
  final String type;
  /// The user identity associated with the resource.
  final String? userAssignedIdentity;

  /// Creates a new [SystemTopicEventSubscriptionDeliveryIdentity].
  /// [type] Specifies the type of Managed Service Identity that is used for event delivery. Allowed value is `SystemAssigned`, `UserAssigned`.
  /// [userAssignedIdentity] The user identity associated with the resource.
  SystemTopicEventSubscriptionDeliveryIdentity({
    required this.type,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory SystemTopicEventSubscriptionDeliveryIdentity.fromMap(Map<String, dynamic> map) {
    return SystemTopicEventSubscriptionDeliveryIdentity(
      type: map['type'] as String,
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : map['userAssignedIdentity'] as String,
    );
  }
}

