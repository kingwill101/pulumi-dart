// ignore_for_file: unused_element, unnecessary_cast

class ServiceServiceRegistries {
  /// Container name value, already specified in the task definition, to be used for your service discovery service.
  final String? containerName;

  /// Port value, already specified in the task definition, to be used for your service discovery service.
  final int? containerPort;

  /// Port value used if your Service Discovery service specified an SRV record.
  final int? port;

  /// ARN of the Service Registry. The currently supported service registry is Amazon Route 53 Auto Naming Service(<span pulumi-lang-nodejs="`aws.servicediscovery.Service`" pulumi-lang-dotnet="`aws.servicediscovery.Service`" pulumi-lang-go="`servicediscovery.Service`" pulumi-lang-python="`servicediscovery.Service`" pulumi-lang-yaml="`aws.servicediscovery.Service`" pulumi-lang-java="`aws.servicediscovery.Service`">`aws.servicediscovery.Service`</span>). For more information, see [Service](https://docs.aws.amazon.com/Route53/latest/APIReference/API_autonaming_Service.html)
  final String registryArn;

  ServiceServiceRegistries({
    this.containerName,
    this.containerPort,
    this.port,
    required this.registryArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerNameValue = containerName;
    if (containerNameValue != null) {
      map['containerName'] = containerNameValue;
    }
    final containerPortValue = containerPort;
    if (containerPortValue != null) {
      map['containerPort'] = containerPortValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    map['registryArn'] = registryArn;
    return map;
  }

  factory ServiceServiceRegistries.fromMap(Map<String, dynamic> map) {
    return ServiceServiceRegistries(
      containerName:
          map['containerName'] == null ? null : map['containerName'] as String,
      containerPort:
          map['containerPort'] == null ? null : map['containerPort'] as int,
      port: map['port'] == null ? null : map['port'] as int,
      registryArn: map['registryArn'] as String,
    );
  }
}
