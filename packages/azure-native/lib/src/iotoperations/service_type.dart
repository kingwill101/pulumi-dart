/// Kubernetes Service type of this listener.
enum ServiceType {
  clusterIp("ClusterIp"),
  loadBalancer("LoadBalancer"),
  nodePort("NodePort");

  const ServiceType(this.value);
  final String value;

  static ServiceType fromValue(String value) {
    for (final item in ServiceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceType value: $value');
  }
}

