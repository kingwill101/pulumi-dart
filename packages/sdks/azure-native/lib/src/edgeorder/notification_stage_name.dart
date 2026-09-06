import 'package:pulumi/pulumi.dart' as pulumi;

/// Name of the stage.
enum NotificationStageName implements pulumi.PulumiEnum<String> {
  shipped("Shipped"),
  delivered("Delivered");

  const NotificationStageName(this.wireValue);
  @override
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
