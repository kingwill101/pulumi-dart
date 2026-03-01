// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoints_endpoint.dart';

/// Result data returned by getEndpoints.
class GetEndpointsResult {
  final List<GetEndpointsEndpoint> endpoints;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetEndpointsResult].
  /// [endpoints] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  GetEndpointsResult({
    required this.endpoints,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': pulumi.Input.encodeList<GetEndpointsEndpoint, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetEndpointsResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointsResult(
      endpoints: pulumi.Input.decodeList<GetEndpointsEndpoint>(map['endpoints'], (value) => GetEndpointsEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

