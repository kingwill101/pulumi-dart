import 'package:pulumi/pulumi.dart' as pulumi;

/// Kubernetes Service type of this listener.
enum ServiceType implements pulumi.PulumiEnum<String> {
  clusterIp("ClusterIp"),
  loadBalancer("LoadBalancer"),
  nodePort("NodePort");

  const ServiceType(this.wireValue);
  @override
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
