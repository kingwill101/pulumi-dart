/// This field has been deprecated in favor of `standard_isolation.priority`. If you set this field, `standard_isolation.priority` will be set instead. The priority of requests sent using this app profile.
enum AppProfilePriority {
  priorityUnspecified("PRIORITY_UNSPECIFIED"),
  priorityLow("PRIORITY_LOW"),
  priorityMedium("PRIORITY_MEDIUM"),
  priorityHigh("PRIORITY_HIGH");

  const AppProfilePriority(this.value);
  final String value;

  static AppProfilePriority fromValue(String value) {
    for (final item in AppProfilePriority.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppProfilePriority value: $value');
  }
}

