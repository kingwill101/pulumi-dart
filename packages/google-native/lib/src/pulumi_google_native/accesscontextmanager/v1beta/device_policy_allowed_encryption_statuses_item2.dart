enum DevicePolicyAllowedEncryptionStatusesItem2 {
  encryptionUnspecified("ENCRYPTION_UNSPECIFIED"),
  encryptionUnsupported("ENCRYPTION_UNSUPPORTED"),
  unencrypted("UNENCRYPTED"),
  encrypted("ENCRYPTED");

  const DevicePolicyAllowedEncryptionStatusesItem2(this.value);
  final String value;

  static DevicePolicyAllowedEncryptionStatusesItem2 fromValue(String value) {
    for (final item in DevicePolicyAllowedEncryptionStatusesItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown DevicePolicyAllowedEncryptionStatusesItem2 value: $value');
  }
}
