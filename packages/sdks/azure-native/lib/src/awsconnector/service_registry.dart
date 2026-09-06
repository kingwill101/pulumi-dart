// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ServiceRegistry
class ServiceRegistry {
  /// The container name value to be used for your service discovery service. It's already specified in the task definition. If the task definition that your service task specifies uses the ``bridge`` or ``host`` network mode, you must specify a ``containerName`` and ``containerPort`` combination from the task definition. If the task definition that your service task specifies uses the ``awsvpc`` network mode and a type SRV DNS record is used, you must specify either a ``containerName`` and ``containerPort`` combination or a ``port`` value. However, you can't specify both.
  final pulumi.Input<String?>? containerName;
  /// The port value to be used for your service discovery service. It's already specified in the task definition. If the task definition your service task specifies uses the ``bridge`` or ``host`` network mode, you must specify a ``containerName`` and ``containerPort`` combination from the task definition. If the task definition your service task specifies uses the ``awsvpc`` network mode and a type SRV DNS record is used, you must specify either a ``containerName`` and ``containerPort`` combination or a ``port`` value. However, you can't specify both.
  final pulumi.Input<int?>? containerPort;
  /// The port value used if your service discovery service specified an SRV record. This field might be used if both the ``awsvpc`` network mode and SRV records are used.
  final pulumi.Input<int?>? port;
  /// The Amazon Resource Name (ARN) of the service registry. The currently supported service registry is CMAP. For more information, see [CreateService](https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html).
  final pulumi.Input<String?>? registryArn;

  /// Creates a new [ServiceRegistry].
  /// [containerName] The container name value to be used for your service discovery service. It's already specified in the task definition. If the task definition that your service task specifies uses the ``bridge`` or ``host`` network mode, you must specify a ``containerName`` and ``containerPort`` combination from the task definition. If the task definition that your service task specifies uses the ``awsvpc`` network mode and a type SRV DNS record is used, you must specify either a ``containerName`` and ``containerPort`` combination or a ``port`` value. However, you can't specify both.
  /// [containerPort] The port value to be used for your service discovery service. It's already specified in the task definition. If the task definition your service task specifies uses the ``bridge`` or ``host`` network mode, you must specify a ``containerName`` and ``containerPort`` combination from the task definition. If the task definition your service task specifies uses the ``awsvpc`` network mode and a type SRV DNS record is used, you must specify either a ``containerName`` and ``containerPort`` combination or a ``port`` value. However, you can't specify both.
  /// [port] The port value used if your service discovery service specified an SRV record. This field might be used if both the ``awsvpc`` network mode and SRV records are used.
  /// [registryArn] The Amazon Resource Name (ARN) of the service registry. The currently supported service registry is CMAP. For more information, see [CreateService](https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html).
  const ServiceRegistry({
    this.containerName,
    this.containerPort,
    this.port,
    this.registryArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'containerPort': ?containerPort,
      'port': ?port,
      'registryArn': ?registryArn,
    };
  }

  factory ServiceRegistry.fromMap(Map<String, dynamic> map) {
    return ServiceRegistry(
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerPort: (() { final guardedValue = map['containerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      registryArn: (() { final guardedValue = map['registryArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
