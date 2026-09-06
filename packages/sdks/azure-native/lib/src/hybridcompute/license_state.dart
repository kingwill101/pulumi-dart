import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the state of the license.
enum LicenseState implements pulumi.PulumiEnum<String> {
  valueActivated("Activated"),
  valueDeactivated("Deactivated");

  const LicenseState(this.wireValue);
  @override
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
