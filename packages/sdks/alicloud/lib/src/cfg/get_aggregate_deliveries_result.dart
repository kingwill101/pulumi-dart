// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aggregate_deliveries_delivery.dart';

/// Result data returned by getAggregateDeliveries.
class GetAggregateDeliveriesResult {
  /// The ID of the Aggregator.
  final String aggregatorId;
  /// A list of Config Aggregate Deliveries. Each element contains the following attributes:
  final List<GetAggregateDeliveriesDelivery> deliveries;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Aggregate Delivery names.
  final List<String> names;
  final String? outputFile;
  /// The status of the delivery method. Valid values: `0`: The delivery method is disabled. `1`: The delivery destination is enabled.
  final int? status;

  /// Creates a new [GetAggregateDeliveriesResult].
  /// [aggregatorId] The ID of the Aggregator.
  /// [deliveries] A list of Config Aggregate Deliveries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Aggregate Delivery names.
  /// [outputFile] Optional.
  /// [status] The status of the delivery method. Valid values: `0`: The delivery method is disabled. `1`: The delivery destination is enabled.
  GetAggregateDeliveriesResult({
    required this.aggregatorId,
    required this.deliveries,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregatorId': aggregatorId,
      'deliveries': pulumi.Input.encodeList<GetAggregateDeliveriesDelivery, Map<String, dynamic>>(deliveries, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetAggregateDeliveriesResult.fromMap(Map<String, dynamic> map) {
    return GetAggregateDeliveriesResult(
      aggregatorId: map['aggregatorId'] as String,
      deliveries: pulumi.Input.decodeList<GetAggregateDeliveriesDelivery>(map['deliveries']!, (value) => GetAggregateDeliveriesDelivery.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}

