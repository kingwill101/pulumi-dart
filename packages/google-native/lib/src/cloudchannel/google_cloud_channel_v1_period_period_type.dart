/// Period Type.
enum GoogleCloudChannelV1PeriodPeriodType {
  periodTypeUnspecified("PERIOD_TYPE_UNSPECIFIED"),
  day("DAY"),
  month("MONTH"),
  year("YEAR");

  const GoogleCloudChannelV1PeriodPeriodType(this.value);
  final String value;

  static GoogleCloudChannelV1PeriodPeriodType fromValue(String value) {
    for (final item in GoogleCloudChannelV1PeriodPeriodType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudChannelV1PeriodPeriodType value: $value');
  }
}

