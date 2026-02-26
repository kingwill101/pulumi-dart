/// Controls whether the domain can be transferred to another registrar.
enum ManagementSettingsTransferLockState3 {
  transferLockStateUnspecified("TRANSFER_LOCK_STATE_UNSPECIFIED"),
  unlocked("UNLOCKED"),
  locked("LOCKED");

  const ManagementSettingsTransferLockState3(this.value);
  final String value;

  static ManagementSettingsTransferLockState3 fromValue(String value) {
    for (final item in ManagementSettingsTransferLockState3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ManagementSettingsTransferLockState3 value: $value');
  }
}
