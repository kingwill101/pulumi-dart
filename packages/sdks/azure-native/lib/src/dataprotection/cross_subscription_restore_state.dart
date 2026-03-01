/// CrossSubscriptionRestore state
enum CrossSubscriptionRestoreState {
  valueDisabled("Disabled"),
  valuePermanentlyDisabled("PermanentlyDisabled"),
  valueEnabled("Enabled");

  const CrossSubscriptionRestoreState(this.value);
  final String value;

  static CrossSubscriptionRestoreState fromValue(String value) {
    for (final item in CrossSubscriptionRestoreState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CrossSubscriptionRestoreState value: $value');
  }
}

