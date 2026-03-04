// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_real_time_log_deliveries_delivery.dart';

/// Result data returned by getRealTimeLogDeliveries.
class GetRealTimeLogDeliveriesResult {
  final List<GetRealTimeLogDeliveriesDelivery> deliveries;
  final String domain;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetRealTimeLogDeliveriesResult].
  /// [deliveries] Required.
  /// [domain] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  /// [status] Optional.
  GetRealTimeLogDeliveriesResult({
    required this.deliveries,
    required this.domain,
    required this.id,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveries':
          pulumi.Input.encodeList<
            GetRealTimeLogDeliveriesDelivery,
            Map<String, dynamic>
          >(deliveries, (value) => value.toMap()),
      'domain': domain,
      'id': id,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetRealTimeLogDeliveriesResult.fromMap(Map<String, dynamic> map) {
    return GetRealTimeLogDeliveriesResult(
      deliveries: pulumi.Input.decodeList<GetRealTimeLogDeliveriesDelivery>(
        map['deliveries']!,
        (value) => GetRealTimeLogDeliveriesDelivery.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      domain: map['domain'] as String,
      id: map['id'] as String,
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
