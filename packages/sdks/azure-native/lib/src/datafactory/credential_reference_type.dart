/// Credential reference type.
enum CredentialReferenceType {
  valueCredentialReference("CredentialReference");

  const CredentialReferenceType(this.wireValue);
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

