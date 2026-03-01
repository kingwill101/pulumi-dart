/// Content Filters mode.
enum RaiPolicyMode {
  valueDefault("Default"),
  valueDeferred("Deferred"),
  valueBlocking("Blocking");

  const RaiPolicyMode(this.value);
  final String value;

  static RaiPolicyMode fromValue(String value) {
    for (final item in RaiPolicyMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RaiPolicyMode value: $value');
  }
}

