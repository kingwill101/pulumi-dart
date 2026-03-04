// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ServiceConnectClientAlias
class ServiceConnectClientAlias {
  /// The ``dnsName`` is the name that you use in the applications of client tasks to connect to this service. The name must be a valid DNS name but doesn't need to be fully-qualified. The name can include up to 127 characters. The name can include lowercase letters, numbers, underscores (_), hyphens (-), and periods (.). The name can't start with a hyphen. If this parameter isn't specified, the default value of ``discoveryName.namespace`` is used. If the ``discoveryName`` isn't specified, the port mapping name from the task definition is used in ``portName.namespace``. To avoid changing your applications in client Amazon ECS services, set this to the same name that the client application uses by default. For example, a few common names are ``database``, ``db``, or the lowercase name of a database, such as ``mysql`` or ``redis``. For more information, see [Service Connect](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html) in the *Amazon Elastic Container Service Developer Guide*.
  final pulumi.Input<String>? dnsName;

  /// The listening port number for the Service Connect proxy. This port is available inside of all of the tasks within the same namespace. To avoid changing your applications in client Amazon ECS services, set this to the same port that the client application uses by default. For more information, see [Service Connect](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html) in the *Amazon Elastic Container Service Developer Guide*.
  final pulumi.Input<int>? port;

  /// Creates a new [ServiceConnectClientAlias].
  /// [dnsName] The ``dnsName`` is the name that you use in the applications of client tasks to connect to this service. The name must be a valid DNS name but doesn't need to be fully-qualified. The name can include up to 127 characters. The name can include lowercase letters, numbers, underscores (_), hyphens (-), and periods (.). The name can't start with a hyphen. If this parameter isn't specified, the default value of ``discoveryName.namespace`` is used. If the ``discoveryName`` isn't specified, the port mapping name from the task definition is used in ``portName.namespace``. To avoid changing your applications in client Amazon ECS services, set this to the same name that the client application uses by default. For example, a few common names are ``database``, ``db``, or the lowercase name of a database, such as ``mysql`` or ``redis``. For more information, see [Service Connect](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html) in the *Amazon Elastic Container Service Developer Guide*.
  /// [port] The listening port number for the Service Connect proxy. This port is available inside of all of the tasks within the same namespace. To avoid changing your applications in client Amazon ECS services, set this to the same port that the client application uses by default. For more information, see [Service Connect](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html) in the *Amazon Elastic Container Service Developer Guide*.
  ServiceConnectClientAlias({this.dnsName, this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dnsName': ?dnsName, 'port': ?port};
  }

  factory ServiceConnectClientAlias.fromMap(Map<String, dynamic> map) {
    return ServiceConnectClientAlias(
      dnsName: (() {
        final guardedValue = map['dnsName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
