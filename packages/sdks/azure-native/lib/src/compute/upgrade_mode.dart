/// Specifies the mode of an upgrade to virtual machines in the scale set.&lt;br /&gt;&lt;br /&gt; Possible values are:&lt;br /&gt;&lt;br /&gt; **Manual** - You  control the application of updates to virtual machines in the scale set. You do this by using the manualUpgrade action.&lt;br /&gt;&lt;br /&gt; **Automatic** - All virtual machines in the scale set are  automatically updated at the same time.
enum UpgradeMode {
  valueAutomatic("Automatic"),
  valueManual("Manual"),
  valueRolling("Rolling");

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
