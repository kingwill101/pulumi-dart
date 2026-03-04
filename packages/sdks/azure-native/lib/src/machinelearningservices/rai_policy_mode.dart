/// Content Filters mode.
enum RaiPolicyMode {
  valueDefault("Default"),
  valueDeferred("Deferred"),
  valueBlocking("Blocking");

  const RaiPolicyMode(this.wireValue);
  final String wireValue;

  static RaiPolicyMode fromValue(String value) {
    for (final item in RaiPolicyMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RaiPolicyMode value: $value');
  }
}
