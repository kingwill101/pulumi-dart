// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFlowDestinationEndpointPorts.
class GetFlowDestinationEndpointPortsResult {
  /// The destination endpoint port for the flow stream
  final List<double>? ports;

  /// Creates a new [GetFlowDestinationEndpointPortsResult].
  /// [ports] The destination endpoint port for the flow stream
  GetFlowDestinationEndpointPortsResult({
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ports': ?ports,
    };
  }

  factory GetFlowDestinationEndpointPortsResult.fromMap(Map<String, dynamic> map) {
    return GetFlowDestinationEndpointPortsResult(
      ports: map['ports'] == null ? null : (map['ports']! as List).cast<double>(),
    );
  }
}

