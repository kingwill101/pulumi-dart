// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_port.dart';

/// Defines a Broker listener. A listener is a collection of ports on which the broker accepts connections from clients.
class BrokerListenerProperties {
  /// Ports on which this listener accepts client connections.
  final List<ListenerPort> ports;
  /// Kubernetes Service name of this listener.
  final String? serviceName;
  /// Kubernetes Service type of this listener.
  final String? serviceType;

  /// Creates a new [BrokerListenerProperties].
  /// [ports] Ports on which this listener accepts client connections.
  /// [serviceName] Kubernetes Service name of this listener.
  /// [serviceType] Kubernetes Service type of this listener.
  BrokerListenerProperties({
    required this.ports,
    this.serviceName,
    this.serviceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ports': pulumi.Input.encodeList<ListenerPort, Map<String, dynamic>>(ports, (value) => value.toMap()),
      'serviceName': ?serviceName,
      'serviceType': ?serviceType,
    };
  }

  factory BrokerListenerProperties.fromMap(Map<String, dynamic> map) {
    return BrokerListenerProperties(
      ports: pulumi.Input.decodeList<ListenerPort>(map['ports'], (value) => ListenerPort.fromMap((value as Map).cast<String, dynamic>())),
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
      serviceType: map['serviceType'] == null ? null : map['serviceType'] as String,
    );
  }
}

