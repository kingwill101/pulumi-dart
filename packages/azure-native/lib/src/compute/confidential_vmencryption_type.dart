/// confidential VM encryption types
enum ConfidentialVMEncryptionType {
  encryptedVMGuestStateOnlyWithPmk("EncryptedVMGuestStateOnlyWithPmk"),
  encryptedWithPmk("EncryptedWithPmk"),
  encryptedWithCmk("EncryptedWithCmk"),
  nonPersistedTPM("NonPersistedTPM");

  const ConfidentialVMEncryptionType(this.value);
  final String value;

  static ConfidentialVMEncryptionType fromValue(String value) {
    for (final item in ConfidentialVMEncryptionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfidentialVMEncryptionType value: $value');
  }
}

