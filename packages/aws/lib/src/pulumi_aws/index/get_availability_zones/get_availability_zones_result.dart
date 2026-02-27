// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_availability_zones_filter/get_availability_zones_filter.dart';

/// Result data returned by getAvailabilityZones.
class GetAvailabilityZonesResult {
  final bool? allAvailabilityZones;
  final List<String>? excludeNames;
  final List<String>? excludeZoneIds;
  final List<GetAvailabilityZonesFilter>? filters;

  /// A set of the Availability Zone Group names. For Availability Zones, this is the same value as the Region name. For Local Zones, the name of the associated group, for example `us-west-2-lax-1`.
  final List<String> groupNames;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of the Availability Zone names available to the account.
  final List<String> names;
  final String region;
  final String? state;

  /// List of the Availability Zone IDs available to the account.
  final List<String> zoneIds;

  GetAvailabilityZonesResult({
    this.allAvailabilityZones,
    this.excludeNames,
    this.excludeZoneIds,
    this.filters,
    required this.groupNames,
    required this.id,
    required this.names,
    required this.region,
    this.state,
    required this.zoneIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allAvailabilityZonesValue = allAvailabilityZones;
    if (allAvailabilityZonesValue != null) {
      map['allAvailabilityZones'] = allAvailabilityZonesValue;
    }
    final excludeNamesValue = excludeNames;
    if (excludeNamesValue != null) {
      map['excludeNames'] = excludeNamesValue;
    }
    final excludeZoneIdsValue = excludeZoneIds;
    if (excludeZoneIdsValue != null) {
      map['excludeZoneIds'] = excludeZoneIdsValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<GetAvailabilityZonesFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['groupNames'] = groupNames;
    map['id'] = id;
    map['names'] = names;
    map['region'] = region;
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    map['zoneIds'] = zoneIds;
    return map;
  }

  factory GetAvailabilityZonesResult.fromMap(Map<String, dynamic> map) {
    return GetAvailabilityZonesResult(
      allAvailabilityZones: map['allAvailabilityZones'] == null
          ? null
          : map['allAvailabilityZones'] as bool,
      excludeNames: map['excludeNames'] == null
          ? null
          : (map['excludeNames'] as List).cast<String>(),
      excludeZoneIds: map['excludeZoneIds'] == null
          ? null
          : (map['excludeZoneIds'] as List).cast<String>(),
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetAvailabilityZonesFilter>(
              map['filters'],
              (value) => GetAvailabilityZonesFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      groupNames: (map['groupNames'] as List).cast<String>(),
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      region: map['region'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      zoneIds: (map['zoneIds'] as List).cast<String>(),
    );
  }
}
