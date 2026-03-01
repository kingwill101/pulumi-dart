/// Name of the stage.
enum NotificationStageName {
  shipped("Shipped"),
  delivered("Delivered");

  const NotificationStageName(this.value);
  final String value;

  static NotificationStageName fromValue(String value) {
    for (final item in NotificationStageName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationStageName value: $value');
  }
}

