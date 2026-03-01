/// If omitted, no disks on the compute nodes in the pool will be encrypted.
enum DiskEncryptionTarget {
  osDisk("OsDisk"),
  temporaryDisk("TemporaryDisk");

  const DiskEncryptionTarget(this.value);
  final String value;

  static DiskEncryptionTarget fromValue(String value) {
    for (final item in DiskEncryptionTarget.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskEncryptionTarget value: $value');
  }
}

