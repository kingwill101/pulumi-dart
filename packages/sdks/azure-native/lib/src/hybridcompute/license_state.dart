/// Describes the state of the license.
enum LicenseState {
  valueActivated("Activated"),
  valueDeactivated("Deactivated");

  const LicenseState(this.wireValue);
  final String wireValue;

  static LicenseState fromValue(String value) {
    for (final item in LicenseState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseState value: $value');
  }
}
