/// Controls whether the domain can be transferred to another registrar.
enum ManagementSettingsTransferLockState2 {
  transferLockStateUnspecified("TRANSFER_LOCK_STATE_UNSPECIFIED"),
  unlocked("UNLOCKED"),
  locked("LOCKED");

  const ManagementSettingsTransferLockState2(this.value);
  final String value;

  static ManagementSettingsTransferLockState2 fromValue(String value) {
    for (final item in ManagementSettingsTransferLockState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ManagementSettingsTransferLockState2 value: $value');
  }
}
