/// Describes whether user engagement tracking is enabled or disabled.
enum UserEngagementTracking {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const UserEngagementTracking(this.wireValue);
  final String wireValue;

  static UserEngagementTracking fromValue(String value) {
    for (final item in UserEngagementTracking.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserEngagementTracking value: $value');
  }
}

