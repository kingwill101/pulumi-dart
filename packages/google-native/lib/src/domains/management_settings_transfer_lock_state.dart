/// Controls whether the domain can be transferred to another registrar.
enum ManagementSettingsTransferLockState {
  transferLockStateUnspecified("TRANSFER_LOCK_STATE_UNSPECIFIED"),
  unlocked("UNLOCKED"),
  locked("LOCKED");

  const ManagementSettingsTransferLockState(this.value);
  final String value;

  static ManagementSettingsTransferLockState fromValue(String value) {
    for (final item in ManagementSettingsTransferLockState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ManagementSettingsTransferLockState value: $value',
    );
  }
}
