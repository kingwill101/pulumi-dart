/// Operational status of the Front Door load balancer. Permitted values are 'Enabled' or 'Disabled'
enum FrontDoorEnabledState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const FrontDoorEnabledState(this.wireValue);
  final String wireValue;

  static FrontDoorEnabledState fromValue(String value) {
    for (final item in FrontDoorEnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrontDoorEnabledState value: $value');
  }
}

