// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFlowDestinationEndpoints.
class GetFlowDestinationEndpointsResult {
  /// The destination endpoints for the flow stream
  final List<String>? endpoints;

  /// Creates a new [GetFlowDestinationEndpointsResult].
  /// [endpoints] The destination endpoints for the flow stream
  GetFlowDestinationEndpointsResult({
    this.endpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': ?endpoints,
    };
  }

  factory GetFlowDestinationEndpointsResult.fromMap(Map<String, dynamic> map) {
    return GetFlowDestinationEndpointsResult(
      endpoints: map['endpoints'] == null ? null : (map['endpoints']! as List).cast<String>(),
    );
  }
}

