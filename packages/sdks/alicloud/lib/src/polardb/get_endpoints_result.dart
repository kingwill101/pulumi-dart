// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoints_endpoint.dart';

/// Result data returned by getEndpoints.
class GetEndpointsResult {
  final String dbClusterId;
  /// The endpoint ID.
  final String? dbEndpointId;
  /// A list of PolarDB cluster endpoints. Each element contains the following attributes:
  final List<GetEndpointsEndpoint> endpoints;
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Creates a new [GetEndpointsResult].
  /// [dbClusterId] Required.
  /// [dbEndpointId] The endpoint ID.
  /// [endpoints] A list of PolarDB cluster endpoints. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  GetEndpointsResult({
    required this.dbClusterId,
    this.dbEndpointId,
    required this.endpoints,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterId': dbClusterId,
      'dbEndpointId': ?dbEndpointId,
      'endpoints': pulumi.Input.encodeList<GetEndpointsEndpoint, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'id': id,
    };
  }

  factory GetEndpointsResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointsResult(
      dbClusterId: map['dbClusterId'] as String,
      dbEndpointId: (() { final guardedValue = map['dbEndpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoints: pulumi.Input.decodeList<GetEndpointsEndpoint>(map['endpoints']!, (value) => GetEndpointsEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
    );
  }
}

