// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration to bind a ContainerApp to a dev ContainerApp Service
class ServiceBind {
  /// Type of the client to be used to connect to the service
  final pulumi.Input<String>? clientType;
  /// Customized keys for customizing injected values to the app
  final pulumi.Input<Map<String, String>>? customizedKeys;
  /// Name of the service bind
  final pulumi.Input<String>? name;
  /// Resource id of the target service
  final pulumi.Input<String>? serviceId;

  /// Creates a new [ServiceBind].
  /// [clientType] Type of the client to be used to connect to the service
  /// [customizedKeys] Customized keys for customizing injected values to the app
  /// [name] Name of the service bind
  /// [serviceId] Resource id of the target service
  const ServiceBind({
    this.clientType,
    this.customizedKeys,
    this.name,
    this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientType': ?clientType,
      'customizedKeys': ?customizedKeys,
      'name': ?name,
      'serviceId': ?serviceId,
    };
  }

  factory ServiceBind.fromMap(Map<String, dynamic> map) {
    return ServiceBind(
      clientType: (() { final guardedValue = map['clientType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customizedKeys: (() { final guardedValue = map['customizedKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
