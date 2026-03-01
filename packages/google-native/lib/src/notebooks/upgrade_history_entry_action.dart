/// Action. Rolloback or Upgrade.
enum UpgradeHistoryEntryAction {
  actionUnspecified("ACTION_UNSPECIFIED"),
  upgrade("UPGRADE"),
  rollback("ROLLBACK");

  const UpgradeHistoryEntryAction(this.value);
  final String value;

  static UpgradeHistoryEntryAction fromValue(String value) {
    for (final item in UpgradeHistoryEntryAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpgradeHistoryEntryAction value: $value');
  }
}
