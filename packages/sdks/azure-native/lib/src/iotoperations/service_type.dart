/// Kubernetes Service type of this listener.
enum ServiceType {
  clusterIp("ClusterIp"),
  loadBalancer("LoadBalancer"),
  nodePort("NodePort");

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
