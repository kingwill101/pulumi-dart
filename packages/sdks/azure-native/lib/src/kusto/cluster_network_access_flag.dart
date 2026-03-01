/// Whether or not to restrict outbound network access.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'
enum ClusterNetworkAccessFlag {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ClusterNetworkAccessFlag(this.value);
  final String value;

  static ClusterNetworkAccessFlag fromValue(String value) {
    for (final item in ClusterNetworkAccessFlag.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterNetworkAccessFlag value: $value');
  }
}

