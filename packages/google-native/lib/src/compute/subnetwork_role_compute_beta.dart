/// The role of subnetwork. Currently, this field is only used when purpose = REGIONAL_MANAGED_PROXY. The value can be set to ACTIVE or BACKUP. An ACTIVE subnetwork is one that is currently being used for Envoy-based load balancers in a region. A BACKUP subnetwork is one that is ready to be promoted to ACTIVE or is currently draining. This field can be updated with a patch request.
enum SubnetworkRoleComputeBeta {
  active("ACTIVE"),
  backup("BACKUP");

  const SubnetworkRoleComputeBeta(this.value);
  final String value;

  static SubnetworkRoleComputeBeta fromValue(String value) {
    for (final item in SubnetworkRoleComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetworkRoleComputeBeta value: $value');
  }
}
