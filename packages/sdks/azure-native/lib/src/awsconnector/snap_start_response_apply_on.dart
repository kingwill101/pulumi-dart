/// When set to ``PublishedVersions``, Lambda creates a snapshot of the execution environment when you publish a function version.
enum SnapStartResponseApplyOn {
  none("None"),
  publishedVersions("PublishedVersions");

  const SnapStartResponseApplyOn(this.wireValue);
  final String wireValue;

  static SnapStartResponseApplyOn fromValue(String value) {
    for (final item in SnapStartResponseApplyOn.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnapStartResponseApplyOn value: $value');
  }
}
