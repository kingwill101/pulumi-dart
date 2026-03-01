/// Set ``ApplyOn`` to ``PublishedVersions`` to create a snapshot of the initialized execution environment when you publish a function version.
enum SnapStartApplyOn {
  none("None"),
  publishedVersions("PublishedVersions");

  const SnapStartApplyOn(this.value);
  final String value;

  static SnapStartApplyOn fromValue(String value) {
    for (final item in SnapStartApplyOn.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnapStartApplyOn value: $value');
  }
}

