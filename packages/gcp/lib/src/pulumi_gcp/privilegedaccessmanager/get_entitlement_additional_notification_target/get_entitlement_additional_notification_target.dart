// ignore_for_file: unused_element, unnecessary_cast

class GetEntitlementAdditionalNotificationTarget {
  /// Optional. Additional email addresses to be notified when a principal(requester) is granted access.
  final List<String> adminEmailRecipients;

  /// Optional. Additional email address to be notified about an eligible entitlement.
  final List<String> requesterEmailRecipients;

  GetEntitlementAdditionalNotificationTarget({
    required this.adminEmailRecipients,
    required this.requesterEmailRecipients,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['adminEmailRecipients'] = adminEmailRecipients;
    map['requesterEmailRecipients'] = requesterEmailRecipients;
    return map;
  }

  factory GetEntitlementAdditionalNotificationTarget.fromMap(
      Map<String, dynamic> map) {
    return GetEntitlementAdditionalNotificationTarget(
      adminEmailRecipients:
          (map['adminEmailRecipients'] as List).cast<String>(),
      requesterEmailRecipients:
          (map['requesterEmailRecipients'] as List).cast<String>(),
    );
  }
}
