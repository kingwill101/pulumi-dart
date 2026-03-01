/// Offline data transfer
enum FeatureStatus {
  on("on"),
  off("off");

  const FeatureStatus(this.value);
  final String value;

  static FeatureStatus fromValue(String value) {
    for (final item in FeatureStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeatureStatus value: $value');
  }
}

