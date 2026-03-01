/// Allow large file shares if sets to Enabled. It cannot be disabled once it is enabled.
enum LargeFileSharesState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const LargeFileSharesState(this.value);
  final String value;

  static LargeFileSharesState fromValue(String value) {
    for (final item in LargeFileSharesState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LargeFileSharesState value: $value');
  }
}

