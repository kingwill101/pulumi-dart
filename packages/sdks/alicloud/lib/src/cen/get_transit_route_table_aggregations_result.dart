// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_route_table_aggregations_transit_route_table_aggregation.dart';

/// Result data returned by getTransitRouteTableAggregations.
class GetTransitRouteTableAggregationsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Transit Route Table Aggregation names.
  final List<String> names;
  final String? outputFile;
  /// The status of the Transit Route Table Aggregation.
  final String? status;
  /// The destination CIDR block of the aggregate route.
  final String? transitRouteTableAggregationCidr;
  /// A list of Cen Transit Route Table Aggregations. Each element contains the following attributes:
  final List<GetTransitRouteTableAggregationsTransitRouteTableAggregation> transitRouteTableAggregations;
  /// The ID of the route table of the Enterprise Edition transit router.
  final String transitRouteTableId;

  /// Creates a new [GetTransitRouteTableAggregationsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Transit Route Table Aggregation names.
  /// [outputFile] Optional.
  /// [status] The status of the Transit Route Table Aggregation.
  /// [transitRouteTableAggregationCidr] The destination CIDR block of the aggregate route.
  /// [transitRouteTableAggregations] A list of Cen Transit Route Table Aggregations. Each element contains the following attributes:
  /// [transitRouteTableId] The ID of the route table of the Enterprise Edition transit router.
  GetTransitRouteTableAggregationsResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
    this.transitRouteTableAggregationCidr,
    required this.transitRouteTableAggregations,
    required this.transitRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'transitRouteTableAggregationCidr': ?transitRouteTableAggregationCidr,
      'transitRouteTableAggregations': pulumi.Input.encodeList<GetTransitRouteTableAggregationsTransitRouteTableAggregation, Map<String, dynamic>>(transitRouteTableAggregations, (value) => value.toMap()),
      'transitRouteTableId': transitRouteTableId,
    };
  }

  factory GetTransitRouteTableAggregationsResult.fromMap(Map<String, dynamic> map) {
    return GetTransitRouteTableAggregationsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitRouteTableAggregationCidr: (() { final guardedValue = map['transitRouteTableAggregationCidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitRouteTableAggregations: pulumi.Input.decodeList<GetTransitRouteTableAggregationsTransitRouteTableAggregation>(map['transitRouteTableAggregations']!, (value) => GetTransitRouteTableAggregationsTransitRouteTableAggregation.fromMap((value as Map).cast<String, dynamic>())),
      transitRouteTableId: map['transitRouteTableId'] as String,
    );
  }
}

