/// Specifies the EncryptionType of the managed disk. It is set to NonPersistedTPM for not persisting firmware state in the VMGuestState blob. NOTE: It can be set for only Confidential VMs.
enum SecurityEncryptionType {
  nonPersistedTPM("NonPersistedTPM");

  const SecurityEncryptionType(this.value);
  final String value;

  static SecurityEncryptionType fromValue(String value) {
    for (final item in SecurityEncryptionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityEncryptionType value: $value');
  }
}

