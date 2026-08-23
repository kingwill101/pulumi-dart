/// Upgrade mode.
enum UpgradeMode {
  fullyManaged("FullyManaged"),
  selfManaged("SelfManaged");

  const UpgradeMode(this.wireValue);
  final String wireValue;

  static UpgradeMode fromValue(String value) {
    for (final item in UpgradeMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpgradeMode value: $value');
  }
}
