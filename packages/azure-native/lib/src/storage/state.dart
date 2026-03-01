/// Gets the state of virtual network rule.
enum State {
  valueProvisioning("Provisioning"),
  valueDeprovisioning("Deprovisioning"),
  valueSucceeded("Succeeded"),
  valueFailed("Failed"),
  valueNetworkSourceDeleted("NetworkSourceDeleted");

  const State(this.value);
  final String value;

  static State fromValue(String value) {
    for (final item in State.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown State value: $value');
  }
}

