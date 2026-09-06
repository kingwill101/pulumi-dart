import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of SSIS package location.
enum SsisPackageLocationType implements pulumi.PulumiEnum<String> {
  sSISDB("SSISDB"),
  file("File"),
  inlinePackage("InlinePackage"),
  packageStore("PackageStore");

  const SsisPackageLocationType(this.wireValue);
  @override
  final String wireValue;

  static SsisPackageLocationType fromValue(String value) {
    for (final item in SsisPackageLocationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SsisPackageLocationType value: $value');
  }
}
