/// Describes the state of the license.
enum LicenseState {
  valueActivated("Activated"),
  valueDeactivated("Deactivated");

  const LicenseState(this.value);
  final String value;

  static LicenseState fromValue(String value) {
    for (final item in LicenseState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseState value: $value');
  }
}

