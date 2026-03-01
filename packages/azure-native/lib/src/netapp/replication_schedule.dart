/// Schedule
enum ReplicationSchedule {
  value10minutely("_10minutely"),
  valueHourly("hourly"),
  valueDaily("daily");

  const ReplicationSchedule(this.value);
  final String value;

  static ReplicationSchedule fromValue(String value) {
    for (final item in ReplicationSchedule.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicationSchedule value: $value');
  }
}

