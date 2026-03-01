/// Enable or Disable apply network policies on private end point in the subnet.
enum PrivateEndpointNetworkPolicies {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const PrivateEndpointNetworkPolicies(this.value);
  final String value;

  static PrivateEndpointNetworkPolicies fromValue(String value) {
    for (final item in PrivateEndpointNetworkPolicies.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateEndpointNetworkPolicies value: $value');
  }
}

