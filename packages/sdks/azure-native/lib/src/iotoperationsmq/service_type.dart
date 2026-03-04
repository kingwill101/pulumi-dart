/// The Kubernetes Service type to deploy for Listener.
enum ServiceType {
  clusterIp("clusterIp"),
  loadBalancer("loadBalancer"),
  nodePort("nodePort");

  const ServiceType(this.wireValue);
  final String wireValue;

  static ServiceType fromValue(String value) {
    for (final item in ServiceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceType value: $value');
  }
}
