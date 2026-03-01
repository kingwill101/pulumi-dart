// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_routing_endpoints_custom_routing_endpoint.dart';

/// Result data returned by getCustomRoutingEndpoints.
class GetCustomRoutingEndpointsResult {
  /// The ID of the GA instance with which the endpoint is associated.
  final String acceleratorId;
  /// A list of Custom Routing Endpoints. Each element contains the following attributes:
  final List<GetCustomRoutingEndpointsCustomRoutingEndpoint> customRoutingEndpoints;
  /// The ID of the Custom Routing Endpoint Group.
  final String? endpointGroupId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// The ID of the listener with which the endpoint is associated.
  final String? listenerId;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;

  /// Creates a new [GetCustomRoutingEndpointsResult].
  /// [acceleratorId] The ID of the GA instance with which the endpoint is associated.
  /// [customRoutingEndpoints] A list of Custom Routing Endpoints. Each element contains the following attributes:
  /// [endpointGroupId] The ID of the Custom Routing Endpoint Group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [listenerId] The ID of the listener with which the endpoint is associated.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetCustomRoutingEndpointsResult({
    required this.acceleratorId,
    required this.customRoutingEndpoints,
    this.endpointGroupId,
    required this.id,
    required this.ids,
    this.listenerId,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'customRoutingEndpoints': pulumi.Input.encodeList<GetCustomRoutingEndpointsCustomRoutingEndpoint, Map<String, dynamic>>(customRoutingEndpoints, (value) => value.toMap()),
      'endpointGroupId': ?endpointGroupId,
      'id': id,
      'ids': ids,
      'listenerId': ?listenerId,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetCustomRoutingEndpointsResult.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingEndpointsResult(
      acceleratorId: map['acceleratorId'] as String,
      customRoutingEndpoints: pulumi.Input.decodeList<GetCustomRoutingEndpointsCustomRoutingEndpoint>(map['customRoutingEndpoints'], (value) => GetCustomRoutingEndpointsCustomRoutingEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      endpointGroupId: map['endpointGroupId'] == null ? null : map['endpointGroupId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      listenerId: map['listenerId'] == null ? null : map['listenerId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
    );
  }
}

