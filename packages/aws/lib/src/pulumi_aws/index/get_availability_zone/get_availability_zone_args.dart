// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_availability_zone_filter/get_availability_zone_filter.dart';

/// Arguments for getAvailabilityZone.
class GetAvailabilityZoneArgs {
  /// Set to `true` to include all Availability Zones and Local Zones regardless of your opt in status.
  final Input<bool>? allAvailabilityZones;

  /// Configuration block(s) for filtering. Detailed below.
  final Input<List<GetAvailabilityZoneFilter>>? filters;

  /// Full name of the availability zone to select.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specific availability zone state to require. May be any of `"available"`, `"information"` or `"impaired"`.
  final Input<String>? state;

  /// Zone ID of the availability zone to select.
  ///
  /// The arguments of this data source act as filters for querying the available
  /// availability zones. The given filters must match exactly one availability
  /// zone whose data will be exported as attributes.
  final Input<String>? zoneId;

  GetAvailabilityZoneArgs({
    this.allAvailabilityZones,
    this.filters,
    this.name,
    this.region,
    this.state,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allAvailabilityZonesValue = allAvailabilityZones;
    if (allAvailabilityZonesValue != null) {
      map['allAvailabilityZones'] = allAvailabilityZonesValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetAvailabilityZoneFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetAvailabilityZoneFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final zoneIdValue = zoneId;
    if (zoneIdValue != null) {
      map['zoneId'] = zoneIdValue;
    }
    return map;
  }

  factory GetAvailabilityZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetAvailabilityZoneArgs(
      allAvailabilityZones:
          Input.asOptionalInput<bool>(map['allAvailabilityZones']),
      filters: Input.asOptionalInput<List<GetAvailabilityZoneFilter>>(
          map['filters']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      state: Input.asOptionalInput<String>(map['state']),
      zoneId: Input.asOptionalInput<String>(map['zoneId']),
    );
  }
}
