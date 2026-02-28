// ignore_for_file: unused_element, unnecessary_cast

class EntitlementAdditionalNotificationTargets {
  /// Optional. Additional email addresses to be notified when a principal(requester) is granted access.
  final List<String>? adminEmailRecipients;

  /// Optional. Additional email address to be notified about an eligible entitlement.
  final List<String>? requesterEmailRecipients;

  /// Creates a new [EntitlementAdditionalNotificationTargets].
  /// [adminEmailRecipients] Optional. Additional email addresses to be notified when a principal(requester) is granted access.
  /// [requesterEmailRecipients] Optional. Additional email address to be notified about an eligible entitlement.
  EntitlementAdditionalNotificationTargets({
    this.adminEmailRecipients,
    this.requesterEmailRecipients,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adminEmailRecipientsValue = adminEmailRecipients;
    if (adminEmailRecipientsValue != null) {
      map['adminEmailRecipients'] = adminEmailRecipientsValue;
    }
    final requesterEmailRecipientsValue = requesterEmailRecipients;
    if (requesterEmailRecipientsValue != null) {
      map['requesterEmailRecipients'] = requesterEmailRecipientsValue;
    }
    return map;
  }

  factory EntitlementAdditionalNotificationTargets.fromMap(
      Map<String, dynamic> map) {
    return EntitlementAdditionalNotificationTargets(
      adminEmailRecipients: map['adminEmailRecipients'] == null
          ? null
          : (map['adminEmailRecipients'] as List).cast<String>(),
      requesterEmailRecipients: map['requesterEmailRecipients'] == null
          ? null
          : (map['requesterEmailRecipients'] as List).cast<String>(),
    );
  }
}
