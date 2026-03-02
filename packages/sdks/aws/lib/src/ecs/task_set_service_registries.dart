// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskSetServiceRegistries {
  /// The container name value, already specified in the task definition, to be used for your service discovery service.
  final pulumi.Input<String>? containerName;
  /// The port value, already specified in the task definition, to be used for your service discovery service.
  final pulumi.Input<int>? containerPort;
  /// The port value used if your Service Discovery service specified an SRV record.
  final pulumi.Input<int>? port;
  /// The ARN of the Service Registry. The currently supported service registry is Amazon Route 53 Auto Naming Service(`aws.servicediscovery.Service` resource). For more information, see [Service](https://docs.aws.amazon.com/Route53/latest/APIReference/API_autonaming_Service.html).
  final pulumi.Input<String> registryArn;

  /// Creates a new [TaskSetServiceRegistries].
  /// [containerName] The container name value, already specified in the task definition, to be used for your service discovery service.
  /// [containerPort] The port value, already specified in the task definition, to be used for your service discovery service.
  /// [port] The port value used if your Service Discovery service specified an SRV record.
  /// [registryArn] The ARN of the Service Registry. The currently supported service registry is Amazon Route 53 Auto Naming Service(`aws.servicediscovery.Service` resource). For more information, see [Service](https://docs.aws.amazon.com/Route53/latest/APIReference/API_autonaming_Service.html).
  TaskSetServiceRegistries({
    this.containerName,
    this.containerPort,
    this.port,
    required this.registryArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'containerPort': ?containerPort,
      'port': ?port,
      'registryArn': registryArn,
    };
  }

  factory TaskSetServiceRegistries.fromMap(Map<String, dynamic> map) {
    return TaskSetServiceRegistries(
      containerName: map['containerName'] == null ? null : (map['containerName'] as String).input(),
      containerPort: map['containerPort'] == null ? null : (map['containerPort'] as int).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      registryArn: (map['registryArn'] as String).input(),
    );
  }
}

