import 'package:pulumi/pulumi.dart' as pulumi;

/// Profile type of the certificate.
enum ProfileType implements pulumi.PulumiEnum<String> {
  publicTrust("PublicTrust"),
  privateTrust("PrivateTrust"),
  privateTrustCIPolicy("PrivateTrustCIPolicy"),
  vBSEnclave("VBSEnclave"),
  publicTrustTest("PublicTrustTest");

  const ProfileType(this.wireValue);
  @override
  final String wireValue;

  static ProfileType fromValue(String value) {
    for (final item in ProfileType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProfileType value: $value');
  }
}
