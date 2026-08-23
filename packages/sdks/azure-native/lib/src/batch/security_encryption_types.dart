/// Specifies the EncryptionType of the managed disk. It is set to VMGuestStateOnly for encryption of just the VMGuestState blob, and NonPersistedTPM for not persisting firmware state in the VMGuestState blob. **Note**: It can be set for only Confidential VMs and required when using Confidential VMs.
enum SecurityEncryptionTypes {
  nonPersistedTPM("NonPersistedTPM"),
  vMGuestStateOnly("VMGuestStateOnly");

  const SecurityEncryptionTypes(this.wireValue);
  final String wireValue;

  static SecurityEncryptionTypes fromValue(String value) {
    for (final item in SecurityEncryptionTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityEncryptionTypes value: $value');
  }
}
