import 'package:pulumi/pulumi.dart' as pulumi;

/// The setting to enable usage of premium data disks.
/// When its value is 'Enabled', creation of standard or premium data disks is allowed.
/// When its value is 'Disabled', only creation of standard data disks is allowed.
enum PremiumDataDisk implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const PremiumDataDisk(this.wireValue);
  @override
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
