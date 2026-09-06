import 'package:pulumi/pulumi.dart' as pulumi;

/// License kind
enum LicenseKind implements pulumi.PulumiEnum<String> {
  vmwareFirewall("VmwareFirewall");

  const LicenseKind(this.wireValue);
  @override
  final String wireValue;

  static LicenseKind fromValue(String value) {
    for (final item in LicenseKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseKind value: $value');
  }
}
