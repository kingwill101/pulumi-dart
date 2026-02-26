/// Optional. Specifies to track usage for recurring calendar period. For example, assume that CalendarPeriod.QUARTER is set. The budget tracks usage from April 1 to June 30, when the current calendar month is April, May, June. After that, it tracks usage from July 1 to September 30 when the current calendar month is July, August, September, so on.
enum GoogleCloudBillingBudgetsV1FilterCalendarPeriod {
  calendarPeriodUnspecified("CALENDAR_PERIOD_UNSPECIFIED"),
  month("MONTH"),
  quarter("QUARTER"),
  year("YEAR");

  const GoogleCloudBillingBudgetsV1FilterCalendarPeriod(this.value);
  final String value;

  static GoogleCloudBillingBudgetsV1FilterCalendarPeriod fromValue(
      String value) {
    for (final item in GoogleCloudBillingBudgetsV1FilterCalendarPeriod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudBillingBudgetsV1FilterCalendarPeriod value: $value');
  }
}
