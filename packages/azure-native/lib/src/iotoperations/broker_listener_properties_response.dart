// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_port_response.dart';

/// Defines a Broker listener. A listener is a collection of ports on which the broker accepts connections from clients.
class BrokerListenerPropertiesResponse {
  /// Ports on which this listener accepts client connections.
  final List<ListenerPortResponse> ports;
  /// The status of the last operation.
  final String provisioningState;
  /// Kubernetes Service name of this listener.
  final String? serviceName;
  /// Kubernetes Service type of this listener.
  final String? serviceType;

  /// Creates a new [BrokerListenerPropertiesResponse].
  /// [ports] Ports on which this listener accepts client connections.
  /// [provisioningState] The status of the last operation.
  /// [serviceName] Kubernetes Service name of this listener.
  /// [serviceType] Kubernetes Service type of this listener.
  BrokerListenerPropertiesResponse({
    required this.ports,
    required this.provisioningState,
    this.serviceName,
    this.serviceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ports': pulumi.Input.encodeList<ListenerPortResponse, Map<String, dynamic>>(ports, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'serviceName': ?serviceName,
      'serviceType': ?serviceType,
    };
  }

  factory BrokerListenerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BrokerListenerPropertiesResponse(
      ports: pulumi.Input.decodeList<ListenerPortResponse>(map['ports'], (value) => ListenerPortResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
      serviceType: map['serviceType'] == null ? null : map['serviceType'] as String,
    );
  }
}

