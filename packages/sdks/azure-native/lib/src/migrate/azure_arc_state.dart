/// AzureArc state indicates whether to include azure arc related costs in on-premises or not.
enum AzureArcState {
  disabled("Disabled"),
  enabled("Enabled"),
  unknown("Unknown");

  const AzureArcState(this.wireValue);
  final String wireValue;

  static AzureArcState fromValue(String value) {
    for (final item in AzureArcState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureArcState value: $value');
  }
}

