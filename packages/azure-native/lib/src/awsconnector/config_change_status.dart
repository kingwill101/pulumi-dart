/// Property value
enum ConfigChangeStatus {
  applyingChanges("ApplyingChanges"),
  cancelled("Cancelled"),
  completed("Completed"),
  initializing("Initializing"),
  pending("Pending"),
  pendingUserInput("PendingUserInput"),
  validating("Validating"),
  validationFailed("ValidationFailed");

  const ConfigChangeStatus(this.value);
  final String value;

  static ConfigChangeStatus fromValue(String value) {
    for (final item in ConfigChangeStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfigChangeStatus value: $value');
  }
}

