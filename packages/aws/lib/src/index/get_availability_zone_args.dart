// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_availability_zone_filter.dart';

/// {@template pulumi_index_get_availability_zone_get_availability_zone_args_doc}
/// Arguments for getAvailabilityZone.
/// {@endtemplate}
/// {@macro pulumi_index_get_availability_zone_get_availability_zone_args_doc}
class GetAvailabilityZoneArgs {
  /// Set to `true` to include all Availability Zones and Local Zones regardless of your opt in status.
  final pulumi.Input<bool>? allAvailabilityZones;

  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetAvailabilityZoneFilter>>? filters;

  /// Full name of the availability zone to select.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Specific availability zone state to require. May be any of `"available"`, `"information"` or `"impaired"`.
  final pulumi.Input<String>? state;

  /// Zone ID of the availability zone to select.
  ///
  /// The arguments of this data source act as filters for querying the available
  /// availability zones. The given filters must match exactly one availability
  /// zone whose data will be exported as attributes.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetAvailabilityZoneArgs].
  /// [allAvailabilityZones] Set to `true` to include all Availability Zones and Local Zones regardless of your opt in status.
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [name] Full name of the availability zone to select.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] Specific availability zone state to require. May be any of `"available"`, `"information"` or `"impaired"`.
  /// [zoneId] Zone ID of the availability zone to select.
  GetAvailabilityZoneArgs({
    bool? allAvailabilityZones,
    List<GetAvailabilityZoneFilter>? filters,
    String? name,
    String? region,
    String? state,
    String? zoneId,
  })  : allAvailabilityZones =
            pulumi.Input.asOptionalInput<bool>(allAvailabilityZones),
        filters = pulumi.Input.asOptionalInput<List<GetAvailabilityZoneFilter>>(
            filters),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        state = pulumi.Input.asOptionalInput<String>(state),
        zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allAvailabilityZonesValue = allAvailabilityZones;
    if (allAvailabilityZonesValue != null) {
      map['allAvailabilityZones'] = allAvailabilityZonesValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetAvailabilityZoneFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetAvailabilityZoneFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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
      allAvailabilityZones: map['allAvailabilityZones'] == null
          ? null
          : map['allAvailabilityZones'] as bool,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetAvailabilityZoneFilter>(
              map['filters'],
              (value) => GetAvailabilityZoneFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}
