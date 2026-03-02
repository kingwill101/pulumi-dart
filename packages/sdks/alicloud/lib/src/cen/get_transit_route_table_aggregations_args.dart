// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_transit_route_table_aggregations_get_transit_route_table_aggregations_args_doc}
/// Arguments for getTransitRouteTableAggregations.
/// {@endtemplate}
/// {@macro pulumi_cen_get_transit_route_table_aggregations_get_transit_route_table_aggregations_args_doc}
class GetTransitRouteTableAggregationsArgs {
  /// A list of Transit Route Table Aggregation IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Transit Route Table Aggregation name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of Transit Route Table Aggregation. Valid Values: `AllConfigured`, `Configuring`, `ConfigFailed`, `PartialConfigured`, `Deleting`.
  final pulumi.Input<String>? status;
  /// The destination CIDR block of the aggregate route.
  final pulumi.Input<String>? transitRouteTableAggregationCidr;
  /// The ID of the route table of the Enterprise Edition transit router.
  final pulumi.Input<String> transitRouteTableId;

  /// Creates a new [GetTransitRouteTableAggregationsArgs].
  /// [ids] A list of Transit Route Table Aggregation IDs.
  /// [nameRegex] A regex string to filter results by Transit Route Table Aggregation name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of Transit Route Table Aggregation. Valid Values: `AllConfigured`, `Configuring`, `ConfigFailed`, `PartialConfigured`, `Deleting`.
  /// [transitRouteTableAggregationCidr] The destination CIDR block of the aggregate route.
  /// [transitRouteTableId] The ID of the route table of the Enterprise Edition transit router.
  GetTransitRouteTableAggregationsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
    this.transitRouteTableAggregationCidr,
    required this.transitRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'transitRouteTableAggregationCidr': ?transitRouteTableAggregationCidr,
      'transitRouteTableId': transitRouteTableId,
    };
  }

  factory GetTransitRouteTableAggregationsArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitRouteTableAggregationsArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      transitRouteTableAggregationCidr: map['transitRouteTableAggregationCidr'] == null ? null : (map['transitRouteTableAggregationCidr']! as String).input(),
      transitRouteTableId: (map['transitRouteTableId'] as String).input(),
    );
  }
}

