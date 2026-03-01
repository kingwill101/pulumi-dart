/// Credential reference type.
enum CredentialReferenceType {
  valueCredentialReference("CredentialReference");

  const CredentialReferenceType(this.value);
  final String value;

  static CredentialReferenceType fromValue(String value) {
    for (final item in CredentialReferenceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CredentialReferenceType value: $value');
  }
}

