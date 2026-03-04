// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceServiceRegistries {
  /// Container name value, already specified in the task definition, to be used for your service discovery service.
  final pulumi.Input<String>? containerName;

  /// Port value, already specified in the task definition, to be used for your service discovery service.
  final pulumi.Input<int>? containerPort;

  /// Port value used if your Service Discovery service specified an SRV record.
  final pulumi.Input<int>? port;

  /// ARN of the Service Registry. The currently supported service registry is Amazon Route 53 Auto Naming Service(`aws.servicediscovery.Service`). For more information, see [Service](https://docs.aws.amazon.com/Route53/latest/APIReference/API_autonaming_Service.html)
  final pulumi.Input<String> registryArn;

  /// Creates a new [ServiceServiceRegistries].
  /// [containerName] Container name value, already specified in the task definition, to be used for your service discovery service.
  /// [containerPort] Port value, already specified in the task definition, to be used for your service discovery service.
  /// [port] Port value used if your Service Discovery service specified an SRV record.
  /// [registryArn] ARN of the Service Registry. The currently supported service registry is Amazon Route 53 Auto Naming Service(`aws.servicediscovery.Service`). For more information, see [Service](https://docs.aws.amazon.com/Route53/latest/APIReference/API_autonaming_Service.html)
  ServiceServiceRegistries({
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

  factory ServiceServiceRegistries.fromMap(Map<String, dynamic> map) {
    return ServiceServiceRegistries(
      containerName: (() {
        final guardedValue = map['containerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      containerPort: (() {
        final guardedValue = map['containerPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      registryArn: pulumi.Input.fromValue(map['registryArn'] as String),
    );
  }
}
