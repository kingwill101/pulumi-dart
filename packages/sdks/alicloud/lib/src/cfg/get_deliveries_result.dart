// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_deliveries_delivery.dart';

/// Result data returned by getDeliveries.
class GetDeliveriesResult {
  /// A list of Config Deliveries. Each element contains the following attributes:
  final List<GetDeliveriesDelivery> deliveries;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Config Delivery names.
  final List<String> names;
  final String? outputFile;
  /// The status of the delivery method. Valid values: `0`: The delivery method is disabled. `1`: The delivery destination is enabled.
  final int? status;

  /// Creates a new [GetDeliveriesResult].
  /// [deliveries] A list of Config Deliveries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Config Delivery names.
  /// [outputFile] Optional.
  /// [status] The status of the delivery method. Valid values: `0`: The delivery method is disabled. `1`: The delivery destination is enabled.
  const GetDeliveriesResult({
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
      'deliveries': pulumi.Input.encodeList<GetDeliveriesDelivery, Map<String, dynamic>>(deliveries, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetDeliveriesResult.fromMap(Map<String, dynamic> map) {
    return GetDeliveriesResult(
      deliveries: pulumi.Input.decodeList<GetDeliveriesDelivery>(map['deliveries']!, (value) => GetDeliveriesDelivery.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}

