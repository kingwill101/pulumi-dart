import 'package:pulumi/pulumi.dart' as pulumi;

/// The notification level.
enum NotificationLevel implements pulumi.PulumiEnum<String> {
  none("None"),
  critical("Critical"),
  all("All");

  const NotificationLevel(this.wireValue);
  @override
  final String wireValue;

  static NotificationLevel fromValue(String value) {
    for (final item in NotificationLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationLevel value: $value');
  }
}
