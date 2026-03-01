/// Frequency of period in terms of 'Hour', 'Minute' or 'Second'.
enum FrequencyType {
  valueHour("Hour"),
  valueMinute("Minute"),
  valueSecond("Second");

  const FrequencyType(this.value);
  final String value;

  static FrequencyType fromValue(String value) {
    for (final item in FrequencyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrequencyType value: $value');
  }
}

