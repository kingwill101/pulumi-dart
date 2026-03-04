/// Rai policy mode. The enum value mapping is as below: Default = 0, Deferred=1, Blocking=2, Asynchronous_filter =3. Please use 'Asynchronous_filter' after 2025-06-01. It is the same as 'Deferred' in previous version.
enum RaiPolicyMode {
  valueDefault("Default"),
  valueDeferred("Deferred"),
  valueBlocking("Blocking"),
  valueAsynchronousFilter("Asynchronous_filter");

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
