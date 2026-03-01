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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<String>? transitRouteTableAggregationCidr,
    required pulumi.Output<String> transitRouteTableId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouteTableAggregationCidr = pulumi.Input.asOptionalInput<String>(transitRouteTableAggregationCidr),
      transitRouteTableId = pulumi.Input.asInput<String>(transitRouteTableId);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transitRouteTableAggregationCidr: map['transitRouteTableAggregationCidr'] == null ? null : pulumi.Output.create<String>(map['transitRouteTableAggregationCidr'] as String),
      transitRouteTableId: pulumi.Output.create<String>(map['transitRouteTableId'] as String),
    );
  }
}

