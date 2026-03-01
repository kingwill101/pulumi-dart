/// The state of the ReconciliationPolicy
enum ReconciliationState {
  inactive("inactive"),
  active("active");

  const ReconciliationState(this.value);
  final String value;

  static ReconciliationState fromValue(String value) {
    for (final item in ReconciliationState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReconciliationState value: $value');
  }
}

