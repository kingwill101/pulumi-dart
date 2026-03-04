/// The severity that will be attached to every Alert fired through this event subscription.
/// This field must be provided.
enum MonitorAlertSeverity {
  valueSev0("Sev0"),
  valueSev1("Sev1"),
  valueSev2("Sev2"),
  valueSev3("Sev3"),
  valueSev4("Sev4");

  const MonitorAlertSeverity(this.wireValue);
  final String wireValue;

  static MonitorAlertSeverity fromValue(String value) {
    for (final item in MonitorAlertSeverity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitorAlertSeverity value: $value');
  }
}
