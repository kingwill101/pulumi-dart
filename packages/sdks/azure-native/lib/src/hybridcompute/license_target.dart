import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the license target server.
enum LicenseTarget implements pulumi.PulumiEnum<String> {
  valueWindowsServer2012("Windows Server 2012"),
  valueWindowsServer2012R2("Windows Server 2012 R2");

  const LicenseTarget(this.wireValue);
  @override
  final String wireValue;

  static LicenseTarget fromValue(String value) {
    for (final item in LicenseTarget.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseTarget value: $value');
  }
}
