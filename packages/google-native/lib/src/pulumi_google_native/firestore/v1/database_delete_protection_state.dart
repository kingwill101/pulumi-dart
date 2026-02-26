/// State of delete protection for the database.
enum DatabaseDeleteProtectionState {
  deleteProtectionStateUnspecified("DELETE_PROTECTION_STATE_UNSPECIFIED"),
  deleteProtectionDisabled("DELETE_PROTECTION_DISABLED"),
  deleteProtectionEnabled("DELETE_PROTECTION_ENABLED");

  const DatabaseDeleteProtectionState(this.value);
  final String value;

  static DatabaseDeleteProtectionState fromValue(String value) {
    for (final item in DatabaseDeleteProtectionState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseDeleteProtectionState value: $value');
  }
}
