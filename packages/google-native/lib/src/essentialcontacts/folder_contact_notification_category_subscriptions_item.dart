enum FolderContactNotificationCategorySubscriptionsItem {
  notificationCategoryUnspecified("NOTIFICATION_CATEGORY_UNSPECIFIED"),
  all("ALL"),
  suspension("SUSPENSION"),
  security("SECURITY"),
  technical("TECHNICAL"),
  billing("BILLING"),
  legal("LEGAL"),
  productUpdates("PRODUCT_UPDATES"),
  technicalIncidents("TECHNICAL_INCIDENTS");

  const FolderContactNotificationCategorySubscriptionsItem(this.value);
  final String value;

  static FolderContactNotificationCategorySubscriptionsItem fromValue(
    String value,
  ) {
    for (final item
        in FolderContactNotificationCategorySubscriptionsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown FolderContactNotificationCategorySubscriptionsItem value: $value',
    );
  }
}
