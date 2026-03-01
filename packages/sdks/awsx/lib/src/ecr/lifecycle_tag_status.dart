enum LifecycleTagStatus {
  any("any"),
  untagged("untagged"),
  tagged("tagged");

  const LifecycleTagStatus(this.value);
  final String value;

  static LifecycleTagStatus fromValue(String value) {
    for (final item in LifecycleTagStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LifecycleTagStatus value: $value');
  }
}

