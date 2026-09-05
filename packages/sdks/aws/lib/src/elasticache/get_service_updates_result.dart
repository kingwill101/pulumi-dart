// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_updates_service_update.dart';

/// Result data returned by getServiceUpdates.
class GetServiceUpdatesResult {
  final String? region;
  /// Set of Service Updates. Each element has the following attributes:
  final List<GetServiceUpdatesServiceUpdate>? serviceUpdates;
  /// Availability of the update. One of `available`, `cancelled`, or `expired`.
  final List<String>? statuses;

  /// Creates a new [GetServiceUpdatesResult].
  /// [region] Optional.
  /// [serviceUpdates] Set of Service Updates. Each element has the following attributes:
  /// [statuses] Availability of the update. One of `available`, `cancelled`, or `expired`.
  const GetServiceUpdatesResult({
    this.region,
    this.serviceUpdates,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'serviceUpdates': ?(() { final guardedValue = serviceUpdates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceUpdatesServiceUpdate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'statuses': ?statuses,
    };
  }

  factory GetServiceUpdatesResult.fromMap(Map<String, dynamic> map) {
    return GetServiceUpdatesResult(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceUpdates: (() { final guardedValue = map['serviceUpdates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceUpdatesServiceUpdate>(guardedValue, (value) => GetServiceUpdatesServiceUpdate.fromMap((value as Map).cast<String, dynamic>())); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
