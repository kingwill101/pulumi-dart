// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointGroupsGroupEndpointConfiguration {
  /// Indicates whether client IP addresses are reserved.
  final pulumi.Input<bool> enableClientipPreservation;
  /// The IP address or domain name of Endpoint N in the endpoint group.
  final pulumi.Input<String> endpoint;
  /// Probe Port.
  final pulumi.Input<int> probePort;
  /// Probe Protocol.
  final pulumi.Input<String> probeProtocol;
  /// The type of Endpoint N in the endpoint group.
  final pulumi.Input<String> type;
  /// The weight of Endpoint N in the endpoint group.
  final pulumi.Input<int> weight;

  /// Creates a new [GetEndpointGroupsGroupEndpointConfiguration].
  /// [enableClientipPreservation] Indicates whether client IP addresses are reserved.
  /// [endpoint] The IP address or domain name of Endpoint N in the endpoint group.
  /// [probePort] Probe Port.
  /// [probeProtocol] Probe Protocol.
  /// [type] The type of Endpoint N in the endpoint group.
  /// [weight] The weight of Endpoint N in the endpoint group.
  const GetEndpointGroupsGroupEndpointConfiguration({
    required this.enableClientipPreservation,
    required this.endpoint,
    required this.probePort,
    required this.probeProtocol,
    required this.type,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableClientipPreservation': enableClientipPreservation,
      'endpoint': endpoint,
      'probePort': probePort,
      'probeProtocol': probeProtocol,
      'type': type,
      'weight': weight,
    };
  }

  factory GetEndpointGroupsGroupEndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return GetEndpointGroupsGroupEndpointConfiguration(
      enableClientipPreservation: pulumi.Input.fromValue(map['enableClientipPreservation'] as bool),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      probePort: pulumi.Input.fromValue(map['probePort'] as int),
      probeProtocol: pulumi.Input.fromValue(map['probeProtocol'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}

