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
      enableClientipPreservation: (map['enableClientipPreservation'] as bool).input(),
      endpoint: (map['endpoint'] as String).input(),
      probePort: (map['probePort'] as int).input(),
      probeProtocol: (map['probeProtocol'] as String).input(),
      type: (map['type'] as String).input(),
      weight: (map['weight'] as int).input(),
    );
  }
}

