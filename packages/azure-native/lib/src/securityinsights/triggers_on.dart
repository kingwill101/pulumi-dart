enum TriggersOn {
  valueIncidents("Incidents"),
  valueAlerts("Alerts");

  const TriggersOn(this.value);
  final String value;

  static TriggersOn fromValue(String value) {
    for (final item in TriggersOn.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggersOn value: $value');
  }
}

