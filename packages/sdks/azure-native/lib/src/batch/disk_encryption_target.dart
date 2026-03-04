/// If omitted, no disks on the compute nodes in the pool will be encrypted.
enum DiskEncryptionTarget {
  osDisk("OsDisk"),
  temporaryDisk("TemporaryDisk");

  const DiskEncryptionTarget(this.wireValue);
  final String wireValue;

  static DiskEncryptionTarget fromValue(String value) {
    for (final item in DiskEncryptionTarget.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskEncryptionTarget value: $value');
  }
}
