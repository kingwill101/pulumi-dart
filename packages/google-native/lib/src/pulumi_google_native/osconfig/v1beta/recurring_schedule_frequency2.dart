/// Required. The frequency unit of this recurring schedule.
enum RecurringScheduleFrequency2 {
  frequencyUnspecified("FREQUENCY_UNSPECIFIED"),
  weekly("WEEKLY"),
  monthly("MONTHLY"),
  daily("DAILY");

  const RecurringScheduleFrequency2(this.value);
  final String value;

  static RecurringScheduleFrequency2 fromValue(String value) {
    for (final item in RecurringScheduleFrequency2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecurringScheduleFrequency2 value: $value');
  }
}
