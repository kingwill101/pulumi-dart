/// Required. The frequency unit of this recurring schedule.
enum RecurringScheduleFrequency {
  frequencyUnspecified("FREQUENCY_UNSPECIFIED"),
  weekly("WEEKLY"),
  monthly("MONTHLY"),
  daily("DAILY");

  const RecurringScheduleFrequency(this.value);
  final String value;

  static RecurringScheduleFrequency fromValue(String value) {
    for (final item in RecurringScheduleFrequency.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecurringScheduleFrequency value: $value');
  }
}

