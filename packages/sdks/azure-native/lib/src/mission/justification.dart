/// Justification for entering or exiting Maintenance Mode
enum Justification {
  valueNetworking("Networking"),
  valueGovernance("Governance"),
  valueOff("Off");

  const Justification(this.wireValue);
  final String wireValue;

  static Justification fromValue(String value) {
    for (final item in Justification.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Justification value: $value');
  }
}
