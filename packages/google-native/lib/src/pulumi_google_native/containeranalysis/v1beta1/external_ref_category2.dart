/// An External Reference allows a Package to reference an external source of additional information, metadata, enumerations, asset identifiers, or downloadable content believed to be relevant to the Package
enum ExternalRefCategory2 {
  categoryUnspecified("CATEGORY_UNSPECIFIED"),
  security("SECURITY"),
  packageManager("PACKAGE_MANAGER"),
  persistentId("PERSISTENT_ID"),
  other("OTHER");

  const ExternalRefCategory2(this.value);
  final String value;

  static ExternalRefCategory2 fromValue(String value) {
    for (final item in ExternalRefCategory2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExternalRefCategory2 value: $value');
  }
}
