/// Capabilities enum
enum Capabilities {
  cAPABILITYAUTOEXPAND("CAPABILITY_AUTO_EXPAND"),
  cAPABILITYIAM("CAPABILITY_IAM"),
  cAPABILITYNAMEDIAM("CAPABILITY_NAMED_IAM");

  const Capabilities(this.wireValue);
  final String wireValue;

  static Capabilities fromValue(String value) {
    for (final item in Capabilities.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Capabilities value: $value');
  }
}
