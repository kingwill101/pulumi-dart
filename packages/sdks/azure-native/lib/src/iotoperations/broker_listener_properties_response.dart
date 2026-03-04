// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_port_response.dart';

/// Defines a Broker listener. A listener is a collection of ports on which the broker accepts connections from clients.
class BrokerListenerPropertiesResponse {
  /// Ports on which this listener accepts client connections.
  final pulumi.Input<List<ListenerPortResponse>> ports;

  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

  /// Kubernetes Service name of this listener.
  final pulumi.Input<String>? serviceName;

  /// Kubernetes Service type of this listener.
  final pulumi.Input<String>? serviceType;

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
      'ports':
          pulumi.Input.mapInputValue<
            List<ListenerPortResponse>,
            List<Map<String, dynamic>>
          >(
            ports,
            (value) =>
                pulumi.Input.encodeList<
                  ListenerPortResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'provisioningState': provisioningState,
      'serviceName': ?serviceName,
      'serviceType': ?serviceType,
    };
  }

  factory BrokerListenerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BrokerListenerPropertiesResponse(
      ports: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ListenerPortResponse>(
          map['ports']!,
          (value) => ListenerPortResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      serviceName: (() {
        final guardedValue = map['serviceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceType: (() {
        final guardedValue = map['serviceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
