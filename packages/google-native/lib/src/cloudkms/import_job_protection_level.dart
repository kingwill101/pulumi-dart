/// Required. Immutable. The protection level of the ImportJob. This must match the protection_level of the version_template on the CryptoKey you attempt to import into.
enum ImportJobProtectionLevel {
  protectionLevelUnspecified("PROTECTION_LEVEL_UNSPECIFIED"),
  software("SOFTWARE"),
  hsm("HSM"),
  external("EXTERNAL"),
  externalVpc("EXTERNAL_VPC");

  const ImportJobProtectionLevel(this.value);
  final String value;

  static ImportJobProtectionLevel fromValue(String value) {
    for (final item in ImportJobProtectionLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImportJobProtectionLevel value: $value');
  }
}
