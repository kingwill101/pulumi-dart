// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_get_aggregate_deliveries_get_aggregate_deliveries_args_doc}
/// Arguments for getAggregateDeliveries.
/// {@endtemplate}
/// {@macro pulumi_cfg_get_aggregate_deliveries_get_aggregate_deliveries_args_doc}
class GetAggregateDeliveriesArgs {
  /// The ID of the Aggregator.
  final pulumi.Input<String> aggregatorId;
  /// A list of Aggregate Delivery IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Aggregate Delivery name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the delivery method. Valid values: `0`: The delivery method is disabled. `1`: The delivery destination is enabled.
  final pulumi.Input<int>? status;

  /// Creates a new [GetAggregateDeliveriesArgs].
  /// [aggregatorId] The ID of the Aggregator.
  /// [ids] A list of Aggregate Delivery IDs.
  /// [nameRegex] A regex string to filter results by Aggregate Delivery name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the delivery method. Valid values: `0`: The delivery method is disabled. `1`: The delivery destination is enabled.
  GetAggregateDeliveriesArgs({
    required this.aggregatorId,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregatorId': aggregatorId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetAggregateDeliveriesArgs.fromMap(Map<String, dynamic> map) {
    return GetAggregateDeliveriesArgs(
      aggregatorId: (map['aggregatorId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as int).input(),
    );
  }
}

