/// Connection type used for connecting to the instance.
enum ManagedInstanceProxyOverride {
  valueProxy("Proxy"),
  valueRedirect("Redirect"),
  valueDefault("Default");

  const ManagedInstanceProxyOverride(this.value);
  final String value;

  static ManagedInstanceProxyOverride fromValue(String value) {
    for (final item in ManagedInstanceProxyOverride.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedInstanceProxyOverride value: $value');
  }
}

