/// ProtectionLevel to use when creating a CryptoKeyVersion based on this template. Immutable. Defaults to SOFTWARE.
enum CryptoKeyVersionTemplateProtectionLevel {
  protectionLevelUnspecified("PROTECTION_LEVEL_UNSPECIFIED"),
  software("SOFTWARE"),
  hsm("HSM"),
  external("EXTERNAL"),
  externalVpc("EXTERNAL_VPC");

  const CryptoKeyVersionTemplateProtectionLevel(this.value);
  final String value;

  static CryptoKeyVersionTemplateProtectionLevel fromValue(String value) {
    for (final item in CryptoKeyVersionTemplateProtectionLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CryptoKeyVersionTemplateProtectionLevel value: $value');
  }
}

