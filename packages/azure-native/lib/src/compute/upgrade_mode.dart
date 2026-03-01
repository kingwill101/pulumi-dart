/// Specifies the mode of an upgrade to virtual machines in the scale set.<br /><br /> Possible values are:<br /><br /> **Manual** - You  control the application of updates to virtual machines in the scale set. You do this by using the manualUpgrade action.<br /><br /> **Automatic** - All virtual machines in the scale set are  automatically updated at the same time.
enum UpgradeMode {
  valueAutomatic("Automatic"),
  valueManual("Manual"),
  valueRolling("Rolling");

  const UpgradeMode(this.value);
  final String value;

  static UpgradeMode fromValue(String value) {
    for (final item in UpgradeMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpgradeMode value: $value');
  }
}

