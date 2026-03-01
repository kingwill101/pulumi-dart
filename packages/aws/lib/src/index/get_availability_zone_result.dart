// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_availability_zone_filter.dart';

/// Result data returned by getAvailabilityZone.
class GetAvailabilityZoneResult {
  final bool? allAvailabilityZones;
  final List<GetAvailabilityZoneFilter>? filters;

  /// The long name of the Availability Zone group, Local Zone group, or Wavelength Zone group.
  final String groupLongName;

  /// The name of the zone group. For example: `us-east-1-zg-1`, `us-west-2-lax-1`, or `us-east-1-wl1-bos-wlz-1`.
  final String groupName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// Part of the AZ name that appears after the region name, uniquely identifying the AZ within its region.
  /// For Availability Zones this is usually a single letter, for example `a` for the `us-west-2a` zone.
  /// For Local and Wavelength Zones this is a longer string, for example `wl1-sfo-wlz-1` for the `us-west-2-wl1-sfo-wlz-1` zone.
  final String nameSuffix;

  /// The name of the location from which the address is advertised.
  final String networkBorderGroup;

  /// For Availability Zones, this always has the value of `opt-in-not-required`. For Local Zones, this is the opt in status. The possible values are `opted-in` and `not-opted-in`.
  final String optInStatus;

  /// ID of the zone that handles some of the Local Zone or Wavelength Zone control plane operations, such as API calls.
  final String parentZoneId;

  /// Name of the zone that handles some of the Local Zone or Wavelength Zone control plane operations, such as API calls.
  final String parentZoneName;
  final String region;
  final String state;
  final String zoneId;

  /// Type of zone. Values are `availability-zone`, `local-zone`, and `wavelength-zone`.
  final String zoneType;

  /// Creates a new [GetAvailabilityZoneResult].
  /// [allAvailabilityZones] Optional.
  /// [filters] Optional.
  /// [groupLongName] The long name of the Availability Zone group, Local Zone group, or Wavelength Zone group.
  /// [groupName] The name of the zone group. For example: `us-east-1-zg-1`, `us-west-2-lax-1`, or `us-east-1-wl1-bos-wlz-1`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [nameSuffix] Part of the AZ name that appears after the region name, uniquely identifying the AZ within its region.
  /// [networkBorderGroup] The name of the location from which the address is advertised.
  /// [optInStatus] For Availability Zones, this always has the value of `opt-in-not-required`. For Local Zones, this is the opt in status. The possible values are `opted-in` and `not-opted-in`.
  /// [parentZoneId] ID of the zone that handles some of the Local Zone or Wavelength Zone control plane operations, such as API calls.
  /// [parentZoneName] Name of the zone that handles some of the Local Zone or Wavelength Zone control plane operations, such as API calls.
  /// [region] Required.
  /// [state] Required.
  /// [zoneId] Required.
  /// [zoneType] Type of zone. Values are `availability-zone`, `local-zone`, and `wavelength-zone`.
  GetAvailabilityZoneResult({
    this.allAvailabilityZones,
    this.filters,
    required this.groupLongName,
    required this.groupName,
    required this.id,
    required this.name,
    required this.nameSuffix,
    required this.networkBorderGroup,
    required this.optInStatus,
    required this.parentZoneId,
    required this.parentZoneName,
    required this.region,
    required this.state,
    required this.zoneId,
    required this.zoneType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allAvailabilityZones': ?allAvailabilityZones,
      'filters': ?filters == null
          ? null
          : pulumi.Input.encodeList<
              GetAvailabilityZoneFilter,
              Map<String, dynamic>
            >(filters!, (value) => value.toMap()),
      'groupLongName': groupLongName,
      'groupName': groupName,
      'id': id,
      'name': name,
      'nameSuffix': nameSuffix,
      'networkBorderGroup': networkBorderGroup,
      'optInStatus': optInStatus,
      'parentZoneId': parentZoneId,
      'parentZoneName': parentZoneName,
      'region': region,
      'state': state,
      'zoneId': zoneId,
      'zoneType': zoneType,
    };
  }

  factory GetAvailabilityZoneResult.fromMap(Map<String, dynamic> map) {
    return GetAvailabilityZoneResult(
      allAvailabilityZones: map['allAvailabilityZones'] == null
          ? null
          : map['allAvailabilityZones'] as bool,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetAvailabilityZoneFilter>(
              map['filters'],
              (value) => GetAvailabilityZoneFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      groupLongName: map['groupLongName'] as String,
      groupName: map['groupName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      nameSuffix: map['nameSuffix'] as String,
      networkBorderGroup: map['networkBorderGroup'] as String,
      optInStatus: map['optInStatus'] as String,
      parentZoneId: map['parentZoneId'] as String,
      parentZoneName: map['parentZoneName'] as String,
      region: map['region'] as String,
      state: map['state'] as String,
      zoneId: map['zoneId'] as String,
      zoneType: map['zoneType'] as String,
    );
  }
}
