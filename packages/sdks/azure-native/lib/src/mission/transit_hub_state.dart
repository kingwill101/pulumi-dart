/// The state of the transitHub.
enum TransitHubState {
  pendingApproval("PendingApproval"),
  approved("Approved"),
  pendingUpdate("PendingUpdate"),
  active("Active"),
  failed("Failed");

  const TransitHubState(this.value);
  final String value;

  static TransitHubState fromValue(String value) {
    for (final item in TransitHubState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransitHubState value: $value');
  }
}

