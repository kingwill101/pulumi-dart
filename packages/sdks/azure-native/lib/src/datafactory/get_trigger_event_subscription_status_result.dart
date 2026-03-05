// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTriggerEventSubscriptionStatus.
class GetTriggerEventSubscriptionStatusResult {
  /// Event Subscription Status.
  final String status;

  /// Trigger name.
  final String triggerName;

  /// Creates a new [GetTriggerEventSubscriptionStatusResult].
  /// [status] Event Subscription Status.
  /// [triggerName] Trigger name.
  GetTriggerEventSubscriptionStatusResult({
    required this.status,
    required this.triggerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'status': status, 'triggerName': triggerName};
  }

  factory GetTriggerEventSubscriptionStatusResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTriggerEventSubscriptionStatusResult(
      status: map['status'] as String,
      triggerName: map['triggerName'] as String,
    );
  }
}
