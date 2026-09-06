import 'package:pulumi/pulumi.dart' as pulumi;

/// Flag specifying if the resource monitoring is enabled or disabled.
enum MonitoringStatus implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const MonitoringStatus(this.wireValue);
  @override
  final String wireValue;

  static MonitoringStatus fromValue(String value) {
    for (final item in MonitoringStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitoringStatus value: $value');
  }
}
