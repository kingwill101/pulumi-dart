// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource for a regional service location.
class GraphAPIComputeRegionalServiceResourceResponse {
  /// The regional endpoint for GraphAPICompute.
  final pulumi.Input<String> graphApiComputeEndpoint;
  /// The location name.
  final pulumi.Input<String> location;
  /// The regional service name.
  final pulumi.Input<String> name;
  /// Describes the status of a service.
  final pulumi.Input<String> status;

  /// Creates a new [GraphAPIComputeRegionalServiceResourceResponse].
  /// [graphApiComputeEndpoint] The regional endpoint for GraphAPICompute.
  /// [location] The location name.
  /// [name] The regional service name.
  /// [status] Describes the status of a service.
  GraphAPIComputeRegionalServiceResourceResponse({
    required this.graphApiComputeEndpoint,
    required this.location,
    required this.name,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'graphApiComputeEndpoint': graphApiComputeEndpoint,
      'location': location,
      'name': name,
      'status': status,
    };
  }

  factory GraphAPIComputeRegionalServiceResourceResponse.fromMap(Map<String, dynamic> map) {
    return GraphAPIComputeRegionalServiceResourceResponse(
      graphApiComputeEndpoint: (map['graphApiComputeEndpoint'] as String).input(),
      location: (map['location'] as String).input(),
      name: (map['name'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

