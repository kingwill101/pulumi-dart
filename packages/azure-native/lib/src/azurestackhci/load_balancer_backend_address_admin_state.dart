/// admin state - if set to false, the address is removed from the pool
enum LoadBalancerBackendAddressAdminState {
  up("Up"),
  down("Down");

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

