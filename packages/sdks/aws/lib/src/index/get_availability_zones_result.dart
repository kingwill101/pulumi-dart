// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_availability_zones_filter.dart';

/// Result data returned by getAvailabilityZones.
class GetAvailabilityZonesResult {
  final bool? allAvailabilityZones;
  final List<String>? excludeNames;
  final List<String>? excludeZoneIds;
  final List<GetAvailabilityZonesFilter>? filters;
  /// Set of the Availability Zone Group names. For Availability Zones, this is the same value as the Region name. For Local Zones, the name of the associated group, for example `us-west-2-lax-1`.
  final List<String>? groupNames;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of the Availability Zone names available to the account.
  final List<String>? names;
  final String? region;
  final String? state;
  /// List of the Availability Zone IDs available to the account.
  final List<String>? zoneIds;

  /// Creates a new [GetAvailabilityZonesResult].
  /// [allAvailabilityZones] Optional.
  /// [excludeNames] Optional.
  /// [excludeZoneIds] Optional.
  /// [filters] Optional.
  /// [groupNames] Set of the Availability Zone Group names. For Availability Zones, this is the same value as the Region name. For Local Zones, the name of the associated group, for example `us-west-2-lax-1`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] List of the Availability Zone names available to the account.
  /// [region] Optional.
  /// [state] Optional.
  /// [zoneIds] List of the Availability Zone IDs available to the account.
  const GetAvailabilityZonesResult({
    this.allAvailabilityZones,
    this.excludeNames,
    this.excludeZoneIds,
    this.filters,
    this.groupNames,
    this.id,
    this.names,
    this.region,
    this.state,
    this.zoneIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allAvailabilityZones': ?allAvailabilityZones,
      'excludeNames': ?excludeNames,
      'excludeZoneIds': ?excludeZoneIds,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAvailabilityZonesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'groupNames': ?groupNames,
      'id': ?id,
      'names': ?names,
      'region': ?region,
      'state': ?state,
      'zoneIds': ?zoneIds,
    };
  }

  factory GetAvailabilityZonesResult.fromMap(Map<String, dynamic> map) {
    return GetAvailabilityZonesResult(
      allAvailabilityZones: (() { final guardedValue = map['allAvailabilityZones']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      excludeNames: (() { final guardedValue = map['excludeNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      excludeZoneIds: (() { final guardedValue = map['excludeZoneIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAvailabilityZonesFilter>(guardedValue, (value) => GetAvailabilityZonesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      groupNames: (() { final guardedValue = map['groupNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneIds: (() { final guardedValue = map['zoneIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
