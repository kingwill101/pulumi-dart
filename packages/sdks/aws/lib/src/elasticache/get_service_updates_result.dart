// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_updates_service_update.dart';

/// Result data returned by getServiceUpdates.
class GetServiceUpdatesResult {
  final String region;
  /// Set of Service Updates. Each element has the following attributes:
  final List<GetServiceUpdatesServiceUpdate> serviceUpdates;
  /// Availability of the update. One of `available`, `cancelled`, or `expired`.
  final List<String>? statuses;

  /// Creates a new [GetServiceUpdatesResult].
  /// [region] Required.
  /// [serviceUpdates] Set of Service Updates. Each element has the following attributes:
  /// [statuses] Availability of the update. One of `available`, `cancelled`, or `expired`.
  const GetServiceUpdatesResult({
    required this.region,
    required this.serviceUpdates,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
      'serviceUpdates': pulumi.Input.encodeList<GetServiceUpdatesServiceUpdate, Map<String, dynamic>>(serviceUpdates, (value) => value.toMap()),
      'statuses': ?statuses,
    };
  }

  factory GetServiceUpdatesResult.fromMap(Map<String, dynamic> map) {
    return GetServiceUpdatesResult(
      region: map['region'] as String,
      serviceUpdates: pulumi.Input.decodeList<GetServiceUpdatesServiceUpdate>(map['serviceUpdates']!, (value) => GetServiceUpdatesServiceUpdate.fromMap((value as Map).cast<String, dynamic>())),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
