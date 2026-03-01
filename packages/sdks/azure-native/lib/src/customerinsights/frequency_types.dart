/// The frequency to update.
enum FrequencyTypes {
  valueMinute("Minute"),
  valueHour("Hour"),
  valueDay("Day"),
  valueWeek("Week"),
  valueMonth("Month");

  const FrequencyTypes(this.value);
  final String value;

  static FrequencyTypes fromValue(String value) {
    for (final item in FrequencyTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrequencyTypes value: $value');
  }
}

