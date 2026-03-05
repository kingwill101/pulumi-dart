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
    this.allAvailabilityZones,
    this.filters,
    this.name,
    this.region,
    this.state,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allAvailabilityZones': ?allAvailabilityZones,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetAvailabilityZoneFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetAvailabilityZoneFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'state': ?state,
      'zoneId': ?zoneId,
    };
  }

  factory GetAvailabilityZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetAvailabilityZoneArgs(
      allAvailabilityZones: (() { final guardedValue = map['allAvailabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAvailabilityZoneFilter>(guardedValue, (value) => GetAvailabilityZoneFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

