/// The role of subnetwork. Currently, this field is only used when purpose = REGIONAL_MANAGED_PROXY. The value can be set to ACTIVE or BACKUP. An ACTIVE subnetwork is one that is currently being used for Envoy-based load balancers in a region. A BACKUP subnetwork is one that is ready to be promoted to ACTIVE or is currently draining. This field can be updated with a patch request.
enum SubnetworkRole3 {
  active("ACTIVE"),
  backup("BACKUP");

  const SubnetworkRole3(this.value);
  final String value;

  static SubnetworkRole3 fromValue(String value) {
    for (final item in SubnetworkRole3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetworkRole3 value: $value');
  }
}
