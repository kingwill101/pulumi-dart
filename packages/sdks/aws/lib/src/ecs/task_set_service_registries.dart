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
  const TaskSetServiceRegistries({
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
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerPort: (() { final guardedValue = map['containerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      registryArn: pulumi.Input.fromValue(map['registryArn'] as String),
    );
  }
}

