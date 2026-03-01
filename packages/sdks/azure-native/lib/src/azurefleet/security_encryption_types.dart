/// Specifies the EncryptionType of the managed disk. It is set to
/// DiskWithVMGuestState for encryption of the managed disk along with VMGuestState
/// blob, VMGuestStateOnly for encryption of just the VMGuestState blob, and
/// NonPersistedTPM for not persisting firmware state in the VMGuestState blob..
/// **Note:** It can be set for only Confidential VMs.
enum SecurityEncryptionTypes {
  vMGuestStateOnly("VMGuestStateOnly"),
  diskWithVMGuestState("DiskWithVMGuestState"),
  nonPersistedTPM("NonPersistedTPM");

  const SecurityEncryptionTypes(this.value);
  final String value;

  static SecurityEncryptionTypes fromValue(String value) {
    for (final item in SecurityEncryptionTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityEncryptionTypes value: $value');
  }
}

