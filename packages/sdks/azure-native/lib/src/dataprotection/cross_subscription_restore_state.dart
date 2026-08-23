/// CrossSubscriptionRestore state
enum CrossSubscriptionRestoreState {
  valueDisabled("Disabled"),
  valuePermanentlyDisabled("PermanentlyDisabled"),
  valueEnabled("Enabled");

  const CrossSubscriptionRestoreState(this.wireValue);
  final String wireValue;

  static CrossSubscriptionRestoreState fromValue(String value) {
    for (final item in CrossSubscriptionRestoreState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CrossSubscriptionRestoreState value: $value');
  }
}
