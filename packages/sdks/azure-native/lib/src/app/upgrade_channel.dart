/// The upgrade channel of the agent
enum UpgradeChannel {
  preview("Preview"),
  stable("Stable");

  const UpgradeChannel(this.wireValue);
  final String wireValue;

  static UpgradeChannel fromValue(String value) {
    for (final item in UpgradeChannel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpgradeChannel value: $value');
  }
}
