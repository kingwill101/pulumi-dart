/// Schedule interval type
enum JobScheduleType {
  valueOnce("Once"),
  valueRecurring("Recurring");

  const JobScheduleType(this.value);
  final String value;

  static JobScheduleType fromValue(String value) {
    for (final item in JobScheduleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobScheduleType value: $value');
  }
}

