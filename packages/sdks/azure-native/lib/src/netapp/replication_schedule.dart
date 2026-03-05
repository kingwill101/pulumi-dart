/// Schedule
enum ReplicationSchedule {
  value10minutely("_10minutely"),
  valueHourly("hourly"),
  valueDaily("daily");

  const ReplicationSchedule(this.wireValue);
  final String wireValue;

  static ReplicationSchedule fromValue(String value) {
    for (final item in ReplicationSchedule.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicationSchedule value: $value');
  }
}

