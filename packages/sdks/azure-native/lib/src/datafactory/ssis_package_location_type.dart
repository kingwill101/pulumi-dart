/// The type of SSIS package location.
enum SsisPackageLocationType {
  valueSSISDB("SSISDB"),
  valueFile("File"),
  valueInlinePackage("InlinePackage"),
  valuePackageStore("PackageStore");

  const SsisPackageLocationType(this.value);
  final String value;

  static SsisPackageLocationType fromValue(String value) {
    for (final item in SsisPackageLocationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SsisPackageLocationType value: $value');
  }
}

