/// admin state - if set to false, the address is removed from the pool
enum LoadBalancerBackendAddressAdminState {
  up("Up"),
  down("Down");

  const LoadBalancerBackendAddressAdminState(this.wireValue);
  final String wireValue;

  static LoadBalancerBackendAddressAdminState fromValue(String value) {
    for (final item in LoadBalancerBackendAddressAdminState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown LoadBalancerBackendAddressAdminState value: $value',
    );
  }
}
