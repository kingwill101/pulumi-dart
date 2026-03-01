/// day of week
enum GooglePrivacyDlpV2ValueDayOfWeekValue {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const GooglePrivacyDlpV2ValueDayOfWeekValue(this.value);
  final String value;

  static GooglePrivacyDlpV2ValueDayOfWeekValue fromValue(String value) {
    for (final item in GooglePrivacyDlpV2ValueDayOfWeekValue.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GooglePrivacyDlpV2ValueDayOfWeekValue value: $value',
    );
  }
}
