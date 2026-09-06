import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum MonitoringState implements pulumi.PulumiEnum<String> {
  disabled("disabled"),
  disabling("disabling"),
  enabled("enabled"),
  pending("pending");

  const MonitoringState(this.wireValue);
  @override
  final String wireValue;

  static MonitoringState fromValue(String value) {
    for (final item in MonitoringState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitoringState value: $value');
  }
}
