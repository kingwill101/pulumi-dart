// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_type_offerings_filter.dart';

/// Result data returned by getInstanceTypeOfferings.
class GetInstanceTypeOfferingsResult {
  final List<GetInstanceTypeOfferingsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of EC2 Instance Types.
  final List<String>? instanceTypes;
  final String? locationType;
  /// List of location types.
  final List<String>? locationTypes;
  /// List of locations.
  final List<String>? locations;
  final String? region;

  /// Creates a new [GetInstanceTypeOfferingsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceTypes] List of EC2 Instance Types.
  /// [locationType] Optional.
  /// [locationTypes] List of location types.
  /// [locations] List of locations.
  /// [region] Optional.
  const GetInstanceTypeOfferingsResult({
    this.filters,
    this.id,
    this.instanceTypes,
    this.locationType,
    this.locationTypes,
    this.locations,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceTypeOfferingsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'instanceTypes': ?instanceTypes,
      'locationType': ?locationType,
      'locationTypes': ?locationTypes,
      'locations': ?locations,
      'region': ?region,
    };
  }

  factory GetInstanceTypeOfferingsResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeOfferingsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceTypeOfferingsFilter>(guardedValue, (value) => GetInstanceTypeOfferingsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceTypes: (() { final guardedValue = map['instanceTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      locationType: (() { final guardedValue = map['locationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locationTypes: (() { final guardedValue = map['locationTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
