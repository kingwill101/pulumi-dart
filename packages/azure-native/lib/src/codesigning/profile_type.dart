/// Profile type of the certificate.
enum ProfileType {
  publicTrust("PublicTrust"),
  privateTrust("PrivateTrust"),
  privateTrustCIPolicy("PrivateTrustCIPolicy"),
  vBSEnclave("VBSEnclave"),
  publicTrustTest("PublicTrustTest");

  const ProfileType(this.value);
  final String value;

  static ProfileType fromValue(String value) {
    for (final item in ProfileType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProfileType value: $value');
  }
}

