import 'package:pulumi/pulumi.dart' as pulumi;

/// Credential reference type.
enum CredentialReferenceType implements pulumi.PulumiEnum<String> {
  credentialReference("CredentialReference");

  const CredentialReferenceType(this.wireValue);
  @override
  final String wireValue;

  static CredentialReferenceType fromValue(String value) {
    for (final item in CredentialReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CredentialReferenceType value: $value');
  }
}
