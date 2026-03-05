/// Specifies the EncryptionType of the managed disk. It is set to NonPersistedTPM for not persisting firmware state in the VMGuestState blob. NOTE: It can be set for only Confidential VMs.
enum SecurityEncryptionType {
  nonPersistedTPM("NonPersistedTPM");

  const SecurityEncryptionType(this.wireValue);
  final String wireValue;

  static SecurityEncryptionType fromValue(String value) {
    for (final item in SecurityEncryptionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityEncryptionType value: $value');
  }
}

