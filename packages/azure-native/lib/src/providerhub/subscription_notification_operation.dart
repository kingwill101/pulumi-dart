/// The action.
enum SubscriptionNotificationOperation {
  notDefined("NotDefined"),
  deleteAllResources("DeleteAllResources"),
  softDeleteAllResources("SoftDeleteAllResources"),
  noOp("NoOp"),
  billingCancellation("BillingCancellation"),
  undoSoftDelete("UndoSoftDelete");

  const SubscriptionNotificationOperation(this.value);
  final String value;

  static SubscriptionNotificationOperation fromValue(String value) {
    for (final item in SubscriptionNotificationOperation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubscriptionNotificationOperation value: $value');
  }
}

