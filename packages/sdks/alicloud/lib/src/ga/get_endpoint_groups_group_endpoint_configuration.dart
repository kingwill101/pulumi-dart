// ignore_for_file: unused_element, unnecessary_cast


class GetEndpointGroupsGroupEndpointConfiguration {
  /// Indicates whether client IP addresses are reserved.
  final bool enableClientipPreservation;
  /// The IP address or domain name of Endpoint N in the endpoint group.
  final String endpoint;
  /// Probe Port.
  final int probePort;
  /// Probe Protocol.
  final String probeProtocol;
  /// The type of Endpoint N in the endpoint group.
  final String type;
  /// The weight of Endpoint N in the endpoint group.
  final int weight;

  /// Creates a new [GetEndpointGroupsGroupEndpointConfiguration].
  /// [enableClientipPreservation] Indicates whether client IP addresses are reserved.
  /// [endpoint] The IP address or domain name of Endpoint N in the endpoint group.
  /// [probePort] Probe Port.
  /// [probeProtocol] Probe Protocol.
  /// [type] The type of Endpoint N in the endpoint group.
  /// [weight] The weight of Endpoint N in the endpoint group.
  GetEndpointGroupsGroupEndpointConfiguration({
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
      enableClientipPreservation: map['enableClientipPreservation'] as bool,
      endpoint: map['endpoint'] as String,
      probePort: map['probePort'] as int,
      probeProtocol: map['probeProtocol'] as String,
      type: map['type'] as String,
      weight: map['weight'] as int,
    );
  }
}

