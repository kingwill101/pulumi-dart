// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_availability_zones_filter/get_availability_zones_filter.dart';

/// Arguments for getAvailabilityZones.
class GetAvailabilityZonesArgs {
  /// Set to `true` to include all Availability Zones and Local Zones regardless of your opt in status.
  final pulumi.Input<bool>? allAvailabilityZones;

  /// List of Availability Zone names to exclude.
  final pulumi.Input<List<String>>? excludeNames;

  /// List of Availability Zone IDs to exclude.
  final pulumi.Input<List<String>>? excludeZoneIds;

  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetAvailabilityZonesFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Allows to filter list of Availability Zones based on their
  /// current state. Can be either `"available"`, `"information"`, `"impaired"` or
  /// `"unavailable"`. By default the list includes a complete set of Availability Zones
  /// to which the underlying AWS account has access, regardless of their state.
  final pulumi.Input<String>? state;

  GetAvailabilityZonesArgs({
    this.allAvailabilityZones,
    this.excludeNames,
    this.excludeZoneIds,
    this.filters,
    this.region,
    this.state,
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
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetAvailabilityZonesFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetAvailabilityZonesFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory GetAvailabilityZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetAvailabilityZonesArgs(
      allAvailabilityZones:
          pulumi.Input.asOptionalInput<bool>(map['allAvailabilityZones']),
      excludeNames:
          pulumi.Input.asOptionalInput<List<String>>(map['excludeNames']),
      excludeZoneIds:
          pulumi.Input.asOptionalInput<List<String>>(map['excludeZoneIds']),
      filters: pulumi.Input.asOptionalInput<List<GetAvailabilityZonesFilter>>(
          map['filters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      state: pulumi.Input.asOptionalInput<String>(map['state']),
    );
  }
}
