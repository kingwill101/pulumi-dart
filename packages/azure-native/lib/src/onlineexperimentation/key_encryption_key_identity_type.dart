/// The type of identity to use. Values can be systemAssignedIdentity, userAssignedIdentity, or delegatedResourceIdentity.
enum KeyEncryptionKeyIdentityType {
  systemAssignedIdentity("SystemAssignedIdentity"),
  userAssignedIdentity("UserAssignedIdentity");

  const KeyEncryptionKeyIdentityType(this.value);
  final String value;

  static KeyEncryptionKeyIdentityType fromValue(String value) {
    for (final item in KeyEncryptionKeyIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyEncryptionKeyIdentityType value: $value');
  }
}

