/// Frequency of a notification. Represents how long the notification will be silent after triggering an alert for a threshold breach. If not specified, the frequency will be set by default based on the timeGrain (Weekly when timeGrain: Last7Days, Monthly when timeGrain: Last30Days).
///
/// Supported for CategoryType(s): ReservationUtilization.
enum Frequency {
  daily("Daily"),
  weekly("Weekly"),
  monthly("Monthly");

  const Frequency(this.value);
  final String value;

  static Frequency fromValue(String value) {
    for (final item in Frequency.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Frequency value: $value');
  }
}

