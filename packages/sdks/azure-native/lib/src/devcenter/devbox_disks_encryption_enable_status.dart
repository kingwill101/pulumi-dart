/// Devbox disk encryption enable or disable status. Indicates if Devbox disks encryption using DevCenter CMK is enabled or not.
enum DevboxDisksEncryptionEnableStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DevboxDisksEncryptionEnableStatus(this.wireValue);
  final String wireValue;

  static DevboxDisksEncryptionEnableStatus fromValue(String value) {
    for (final item in DevboxDisksEncryptionEnableStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DevboxDisksEncryptionEnableStatus value: $value');
  }
}

