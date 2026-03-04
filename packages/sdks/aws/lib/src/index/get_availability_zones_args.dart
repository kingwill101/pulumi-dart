// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_availability_zones_filter.dart';

/// {@template pulumi_index_get_availability_zones_get_availability_zones_args_doc}
/// Arguments for getAvailabilityZones.
/// {@endtemplate}
/// {@macro pulumi_index_get_availability_zones_get_availability_zones_args_doc}
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

  /// Creates a new [GetAvailabilityZonesArgs].
  /// [allAvailabilityZones] Set to `true` to include all Availability Zones and Local Zones regardless of your opt in status.
  /// [excludeNames] List of Availability Zone names to exclude.
  /// [excludeZoneIds] List of Availability Zone IDs to exclude.
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] Allows to filter list of Availability Zones based on their
  GetAvailabilityZonesArgs({
    this.allAvailabilityZones,
    this.excludeNames,
    this.excludeZoneIds,
    this.filters,
    this.region,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allAvailabilityZones': ?allAvailabilityZones,
      'excludeNames': ?excludeNames,
      'excludeZoneIds': ?excludeZoneIds,
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetAvailabilityZonesFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetAvailabilityZonesFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'state': ?state,
    };
  }

  factory GetAvailabilityZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetAvailabilityZonesArgs(
      allAvailabilityZones: (() {
        final guardedValue = map['allAvailabilityZones'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      excludeNames: (() {
        final guardedValue = map['excludeNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      excludeZoneIds: (() {
        final guardedValue = map['excludeZoneIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetAvailabilityZonesFilter>(
            guardedValue,
            (value) => GetAvailabilityZonesFilter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
