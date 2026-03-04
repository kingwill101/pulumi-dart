enum LifecycleTagStatus {
  any("any"),
  untagged("untagged"),
  tagged("tagged");

  const LifecycleTagStatus(this.wireValue);
  final String wireValue;

  static LifecycleTagStatus fromValue(String value) {
    for (final item in LifecycleTagStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LifecycleTagStatus value: $value');
  }
}
