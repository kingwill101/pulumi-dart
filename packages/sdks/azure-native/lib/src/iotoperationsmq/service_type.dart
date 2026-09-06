import 'package:pulumi/pulumi.dart' as pulumi;

/// The Kubernetes Service type to deploy for Listener.
enum ServiceType implements pulumi.PulumiEnum<String> {
  clusterIp("clusterIp"),
  loadBalancer("loadBalancer"),
  nodePort("nodePort");

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
