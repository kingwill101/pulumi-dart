/// Frequency of period in terms of 'Hour', 'Minute' or 'Second'.
enum FrequencyType {
  hour("Hour"),
  minute("Minute"),
  second("Second");

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
