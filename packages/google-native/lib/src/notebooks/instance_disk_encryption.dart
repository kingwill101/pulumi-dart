/// Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
enum InstanceDiskEncryption {
  diskEncryptionUnspecified("DISK_ENCRYPTION_UNSPECIFIED"),
  gmek("GMEK"),
  cmek("CMEK");

  const InstanceDiskEncryption(this.value);
  final String value;

  static InstanceDiskEncryption fromValue(String value) {
    for (final item in InstanceDiskEncryption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceDiskEncryption value: $value');
  }
}

