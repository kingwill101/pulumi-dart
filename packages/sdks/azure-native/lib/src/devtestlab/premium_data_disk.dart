/// The setting to enable usage of premium data disks.
/// When its value is 'Enabled', creation of standard or premium data disks is allowed.
/// When its value is 'Disabled', only creation of standard data disks is allowed.
enum PremiumDataDisk {
  disabled("Disabled"),
  enabled("Enabled");

  const PremiumDataDisk(this.wireValue);
  final String wireValue;

  static PremiumDataDisk fromValue(String value) {
    for (final item in PremiumDataDisk.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PremiumDataDisk value: $value');
  }
}
