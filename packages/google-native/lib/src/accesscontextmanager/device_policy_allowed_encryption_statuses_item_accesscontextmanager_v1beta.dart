enum DevicePolicyAllowedEncryptionStatusesItemAccesscontextmanagerV1beta {
  encryptionUnspecified("ENCRYPTION_UNSPECIFIED"),
  encryptionUnsupported("ENCRYPTION_UNSUPPORTED"),
  unencrypted("UNENCRYPTED"),
  encrypted("ENCRYPTED");

  const DevicePolicyAllowedEncryptionStatusesItemAccesscontextmanagerV1beta(
    this.value,
  );
  final String value;

  static DevicePolicyAllowedEncryptionStatusesItemAccesscontextmanagerV1beta
  fromValue(String value) {
    for (final item
        in DevicePolicyAllowedEncryptionStatusesItemAccesscontextmanagerV1beta
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown DevicePolicyAllowedEncryptionStatusesItemAccesscontextmanagerV1beta value: $value',
    );
  }
}
