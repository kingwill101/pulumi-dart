/// Release channel
enum UpgradeReleaseChannel {
  rapid("Rapid"),
  stable("Stable");

  const UpgradeReleaseChannel(this.wireValue);
  final String wireValue;

  static UpgradeReleaseChannel fromValue(String value) {
    for (final item in UpgradeReleaseChannel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpgradeReleaseChannel value: $value');
  }
}
