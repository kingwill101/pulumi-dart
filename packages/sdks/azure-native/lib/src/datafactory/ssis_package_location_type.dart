/// The type of SSIS package location.
enum SsisPackageLocationType {
  valueSSISDB("SSISDB"),
  valueFile("File"),
  valueInlinePackage("InlinePackage"),
  valuePackageStore("PackageStore");

  const SsisPackageLocationType(this.wireValue);
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

