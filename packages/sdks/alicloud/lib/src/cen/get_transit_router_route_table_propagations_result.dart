// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_router_route_table_propagations_propagation.dart';

/// Result data returned by getTransitRouterRouteTablePropagations.
class GetTransitRouterRouteTablePropagationsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  /// A list of Transit Router Route Table Propagations. Each element contains the following attributes:
  final List<GetTransitRouterRouteTablePropagationsPropagation> propagations;
  /// The status of the route learning correlation.
  final String? status;
  /// The ID of the network instance connection.
  final String? transitRouterAttachmentId;
  /// The ID of the route table of the Enterprise Edition transit router.
  final String transitRouterRouteTableId;

  /// Creates a new [GetTransitRouterRouteTablePropagationsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [propagations] A list of Transit Router Route Table Propagations. Each element contains the following attributes:
  /// [status] The status of the route learning correlation.
  /// [transitRouterAttachmentId] The ID of the network instance connection.
  /// [transitRouterRouteTableId] The ID of the route table of the Enterprise Edition transit router.
  GetTransitRouterRouteTablePropagationsResult({
    required this.id,
    required this.ids,
    this.outputFile,
    required this.propagations,
    this.status,
    this.transitRouterAttachmentId,
    required this.transitRouterRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'propagations': pulumi.Input.encodeList<GetTransitRouterRouteTablePropagationsPropagation, Map<String, dynamic>>(propagations, (value) => value.toMap()),
      'status': ?status,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
      'transitRouterRouteTableId': transitRouterRouteTableId,
    };
  }

  factory GetTransitRouterRouteTablePropagationsResult.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterRouteTablePropagationsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      propagations: pulumi.Input.decodeList<GetTransitRouterRouteTablePropagationsPropagation>(map['propagations'], (value) => GetTransitRouterRouteTablePropagationsPropagation.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status']! as String,
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : map['transitRouterAttachmentId']! as String,
      transitRouterRouteTableId: map['transitRouterRouteTableId'] as String,
    );
  }
}

