// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_availability_zone_filter.dart';

/// Result data returned by getAvailabilityZone.
class GetAvailabilityZoneResult {
  final bool? allAvailabilityZones;
  final List<GetAvailabilityZoneFilter>? filters;
  /// Long name of the Availability Zone group, Local Zone group, or Wavelength Zone group.
  final String? groupLongName;
  /// Name of the zone group. For example: `us-east-1-zg-1`, `us-west-2-lax-1`, or `us-east-1-wl1-bos-wlz-1`.
  final String? groupName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// Part of the AZ name that appears after the region name, uniquely identifying the AZ within its region. For Availability Zones this is usually a single letter, for example `a` for the `us-west-2a` zone. For Local and Wavelength Zones this is a longer string, for example `wl1-sfo-wlz-1` for the `us-west-2-wl1-sfo-wlz-1` zone.
  final String? nameSuffix;
  /// Name of the location from which the address is advertised.
  final String? networkBorderGroup;
  /// For Availability Zones, this always has the value of `opt-in-not-required`. For Local Zones, this is the opt in status. The possible values are `opted-in` and `not-opted-in`.
  final String? optInStatus;
  /// ID of the zone that handles some of the Local Zone or Wavelength Zone control plane operations, such as API calls.
  final String? parentZoneId;
  /// Name of the zone that handles some of the Local Zone or Wavelength Zone control plane operations, such as API calls.
  final String? parentZoneName;
  final String? region;
  final String? state;
  final String? zoneId;
  /// Type of zone. Values are `availability-zone`, `local-zone`, and `wavelength-zone`.
  final String? zoneType;

  /// Creates a new [GetAvailabilityZoneResult].
  /// [allAvailabilityZones] Optional.
  /// [filters] Optional.
  /// [groupLongName] Long name of the Availability Zone group, Local Zone group, or Wavelength Zone group.
  /// [groupName] Name of the zone group. For example: `us-east-1-zg-1`, `us-west-2-lax-1`, or `us-east-1-wl1-bos-wlz-1`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [nameSuffix] Part of the AZ name that appears after the region name, uniquely identifying the AZ within its region. For Availability Zones this is usually a single letter, for example `a` for the `us-west-2a` zone. For Local and Wavelength Zones this is a longer string, for example `wl1-sfo-wlz-1` for the `us-west-2-wl1-sfo-wlz-1` zone.
  /// [networkBorderGroup] Name of the location from which the address is advertised.
  /// [optInStatus] For Availability Zones, this always has the value of `opt-in-not-required`. For Local Zones, this is the opt in status. The possible values are `opted-in` and `not-opted-in`.
  /// [parentZoneId] ID of the zone that handles some of the Local Zone or Wavelength Zone control plane operations, such as API calls.
  /// [parentZoneName] Name of the zone that handles some of the Local Zone or Wavelength Zone control plane operations, such as API calls.
  /// [region] Optional.
  /// [state] Optional.
  /// [zoneId] Optional.
  /// [zoneType] Type of zone. Values are `availability-zone`, `local-zone`, and `wavelength-zone`.
  const GetAvailabilityZoneResult({
    this.allAvailabilityZones,
    this.filters,
    this.groupLongName,
    this.groupName,
    this.id,
    this.name,
    this.nameSuffix,
    this.networkBorderGroup,
    this.optInStatus,
    this.parentZoneId,
    this.parentZoneName,
    this.region,
    this.state,
    this.zoneId,
    this.zoneType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allAvailabilityZones': ?allAvailabilityZones,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAvailabilityZoneFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'groupLongName': ?groupLongName,
      'groupName': ?groupName,
      'id': ?id,
      'name': ?name,
      'nameSuffix': ?nameSuffix,
      'networkBorderGroup': ?networkBorderGroup,
      'optInStatus': ?optInStatus,
      'parentZoneId': ?parentZoneId,
      'parentZoneName': ?parentZoneName,
      'region': ?region,
      'state': ?state,
      'zoneId': ?zoneId,
      'zoneType': ?zoneType,
    };
  }

  factory GetAvailabilityZoneResult.fromMap(Map<String, dynamic> map) {
    return GetAvailabilityZoneResult(
      allAvailabilityZones: (() { final guardedValue = map['allAvailabilityZones']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAvailabilityZoneFilter>(guardedValue, (value) => GetAvailabilityZoneFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      groupLongName: (() { final guardedValue = map['groupLongName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameSuffix: (() { final guardedValue = map['nameSuffix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkBorderGroup: (() { final guardedValue = map['networkBorderGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      optInStatus: (() { final guardedValue = map['optInStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentZoneId: (() { final guardedValue = map['parentZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentZoneName: (() { final guardedValue = map['parentZoneName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneType: (() { final guardedValue = map['zoneType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
