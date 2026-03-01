/// The subscription state.
enum SubscriptionState {
  notDefined("NotDefined"),
  enabled("Enabled"),
  warned("Warned"),
  pastDue("PastDue"),
  disabled("Disabled"),
  deleted("Deleted");

  const SubscriptionState(this.value);
  final String value;

  static SubscriptionState fromValue(String value) {
    for (final item in SubscriptionState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubscriptionState value: $value');
  }
}

