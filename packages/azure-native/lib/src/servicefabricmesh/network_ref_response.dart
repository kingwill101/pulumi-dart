// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_ref_response.dart';

/// Describes a network reference in a service.
class NetworkRefResponse {
  /// A list of endpoints that are exposed on this network.
  final List<EndpointRefResponse>? endpointRefs;
  /// Name of the network
  final String? name;

  /// Creates a new [NetworkRefResponse].
  /// [endpointRefs] A list of endpoints that are exposed on this network.
  /// [name] Name of the network
  NetworkRefResponse({
    this.endpointRefs,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointRefs': ?endpointRefs == null ? null : pulumi.Input.encodeList<EndpointRefResponse, Map<String, dynamic>>(endpointRefs!, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory NetworkRefResponse.fromMap(Map<String, dynamic> map) {
    return NetworkRefResponse(
      endpointRefs: map['endpointRefs'] == null ? null : pulumi.Input.decodeList<EndpointRefResponse>(map['endpointRefs'], (value) => EndpointRefResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

