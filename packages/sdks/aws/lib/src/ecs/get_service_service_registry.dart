// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceServiceRegistry {
  /// Name of the container to associate with the load balancer.
  final pulumi.Input<String> containerName;
  /// Port on the container to associate with the load balancer.
  final pulumi.Input<int> containerPort;
  /// Port value for service discovery
  final pulumi.Input<int> port;
  /// ARN of the service registry
  final pulumi.Input<String> registryArn;

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
    return <String, dynamic>{
      'containerName': containerName,
      'containerPort': containerPort,
      'port': port,
      'registryArn': registryArn,
    };
  }

  factory GetServiceServiceRegistry.fromMap(Map<String, dynamic> map) {
    return GetServiceServiceRegistry(
      containerName: (map['containerName'] as String).input(),
      containerPort: (map['containerPort'] as int).input(),
      port: (map['port'] as int).input(),
      registryArn: (map['registryArn'] as String).input(),
    );
  }
}

