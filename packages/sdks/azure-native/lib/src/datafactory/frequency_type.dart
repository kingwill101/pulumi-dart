/// Frequency of period in terms of 'Hour', 'Minute' or 'Second'.
enum FrequencyType {
  valueHour("Hour"),
  valueMinute("Minute"),
  valueSecond("Second");

  const FrequencyType(this.wireValue);
  final String wireValue;

  static FrequencyType fromValue(String value) {
    for (final item in FrequencyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrequencyType value: $value');
  }
}

