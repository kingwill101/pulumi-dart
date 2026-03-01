/// AzureArc state indicates whether to include azure arc related costs in on-premises or not.
enum AzureArcState {
  disabled("Disabled"),
  enabled("Enabled"),
  unknown("Unknown");

  const AzureArcState(this.value);
  final String value;

  static AzureArcState fromValue(String value) {
    for (final item in AzureArcState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureArcState value: $value');
  }
}

