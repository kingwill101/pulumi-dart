import 'package:pulumi/pulumi.dart' as pulumi;

enum MonitoringNotificationType implements pulumi.PulumiEnum<String> {
  amlNotification("AmlNotification");

  const MonitoringNotificationType(this.wireValue);
  @override
  final String wireValue;

  static MonitoringNotificationType fromValue(String value) {
    for (final item in MonitoringNotificationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitoringNotificationType value: $value');
  }
}
