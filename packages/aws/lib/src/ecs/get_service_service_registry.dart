// ignore_for_file: unused_element, unnecessary_cast

class GetServiceServiceRegistry {
  /// Name of the container to associate with the load balancer.
  final String containerName;

  /// Port on the container to associate with the load balancer.
  final int containerPort;

  /// Port value for service discovery
  final int port;

  /// ARN of the service registry
  final String registryArn;

  /// Creates a new [GetServiceServiceRegistry].
  /// [containerName] Name of the container to associate with the load balancer.
  /// [containerPort] Port on the container to associate with the load balancer.
  /// [port] Port value for service discovery
  /// [registryArn] ARN of the service registry
  GetServiceServiceRegistry({
    required this.containerName,
    required this.containerPort,
    required this.port,
    required this.registryArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerName'] = containerName;
    map['containerPort'] = containerPort;
    map['port'] = port;
    map['registryArn'] = registryArn;
    return map;
  }

  factory GetServiceServiceRegistry.fromMap(Map<String, dynamic> map) {
    return GetServiceServiceRegistry(
      containerName: map['containerName'] as String,
      containerPort: map['containerPort'] as int,
      port: map['port'] as int,
      registryArn: map['registryArn'] as String,
    );
  }
}
