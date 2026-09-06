import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum CredentialProviderType implements pulumi.PulumiEnum<String> {
  sECRETSMANAGER("SECRETS_MANAGER");

  const CredentialProviderType(this.wireValue);
  @override
  final String wireValue;

  static CredentialProviderType fromValue(String value) {
    for (final item in CredentialProviderType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CredentialProviderType value: $value');
  }
}
