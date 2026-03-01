/// A list of administrative states which once set can override health probe so that Load Balancer will always forward new connections to backend, or deny new connections and reset existing connections.
enum LoadBalancerBackendAddressAdminState {
  valueNone("None"),
  valueUp("Up"),
  valueDown("Down");

  const LoadBalancerBackendAddressAdminState(this.value);
  final String value;

  static LoadBalancerBackendAddressAdminState fromValue(String value) {
    for (final item in LoadBalancerBackendAddressAdminState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadBalancerBackendAddressAdminState value: $value');
  }
}

