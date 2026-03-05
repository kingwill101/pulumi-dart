/// confidential VM encryption types
enum ConfidentialVMEncryptionType {
  encryptedVMGuestStateOnlyWithPmk("EncryptedVMGuestStateOnlyWithPmk"),
  encryptedWithPmk("EncryptedWithPmk"),
  encryptedWithCmk("EncryptedWithCmk"),
  nonPersistedTPM("NonPersistedTPM");

  const ConfidentialVMEncryptionType(this.wireValue);
  final String wireValue;

  static ConfidentialVMEncryptionType fromValue(String value) {
    for (final item in ConfidentialVMEncryptionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfidentialVMEncryptionType value: $value');
  }
}

