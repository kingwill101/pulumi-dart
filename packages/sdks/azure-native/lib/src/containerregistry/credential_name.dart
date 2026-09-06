import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of the credential.
enum CredentialName implements pulumi.PulumiEnum<String> {
  valueCredential1("Credential1");

  const CredentialName(this.wireValue);
  @override
  final String wireValue;

  static CredentialName fromValue(String value) {
    for (final item in CredentialName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CredentialName value: $value');
  }
}
