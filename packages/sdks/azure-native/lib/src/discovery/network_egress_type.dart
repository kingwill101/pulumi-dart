/// Network egress type provisioned for the supercomputer workloads.
/// Defaults to LoadBalancer if not specified.
/// If None is specified, the customer is responsible for providing outbound connectivity for Supercomputer functionality.
enum NetworkEgressType {
  loadBalancer("LoadBalancer"),
  none("None");

  const NetworkEgressType(this.wireValue);
  final String wireValue;

  static NetworkEgressType fromValue(String value) {
    for (final item in NetworkEgressType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkEgressType value: $value');
  }
}
