/// Name of the stage.
enum NotificationStageName {
  shipped("Shipped"),
  delivered("Delivered");

  const NotificationStageName(this.wireValue);
  final String wireValue;

  static NotificationStageName fromValue(String value) {
    for (final item in NotificationStageName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationStageName value: $value');
  }
}

