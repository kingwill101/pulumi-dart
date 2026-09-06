// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_port.dart';

/// Defines a Broker listener. A listener is a collection of ports on which the broker accepts connections from clients.
class BrokerListenerProperties {
  /// Ports on which this listener accepts client connections.
  final pulumi.Input<List<ListenerPort>> ports;
  /// Kubernetes Service name of this listener.
  final pulumi.Input<String?>? serviceName;
  /// Kubernetes Service type of this listener.
  final pulumi.Input<dynamic>? serviceType;

  /// Creates a new [BrokerListenerProperties].
  /// [ports] Ports on which this listener accepts client connections.
  /// [serviceName] Kubernetes Service name of this listener.
  /// [serviceType] Kubernetes Service type of this listener.
  BrokerListenerProperties({
    required this.ports,
    this.serviceName,
    pulumi.Input<dynamic>? serviceType,
  }) : serviceType = serviceType ?? pulumi.Input.fromValue('ClusterIp');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ports': pulumi.Input.mapInputValue<List<ListenerPort>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<ListenerPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceName': ?serviceName,
      'serviceType': ?serviceType,
    };
  }

  factory BrokerListenerProperties.fromMap(Map<String, dynamic> map) {
    return BrokerListenerProperties(
      ports: pulumi.Input.fromValue(pulumi.Input.decodeList<ListenerPort>(map['ports']!, (value) => ListenerPort.fromMap((value as Map).cast<String, dynamic>()))),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceType: (() { final guardedValue = map['serviceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
