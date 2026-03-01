// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_type_offerings_filter.dart';

/// Result data returned by getInstanceTypeOfferings.
class GetInstanceTypeOfferingsResult {
  final List<GetInstanceTypeOfferingsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of EC2 Instance Types.
  final List<String> instanceTypes;
  final String? locationType;

  /// List of location types.
  final List<String> locationTypes;

  /// List of locations.
  final List<String> locations;
  final String region;

  /// Creates a new [GetInstanceTypeOfferingsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceTypes] List of EC2 Instance Types.
  /// [locationType] Optional.
  /// [locationTypes] List of location types.
  /// [locations] List of locations.
  /// [region] Required.
  GetInstanceTypeOfferingsResult({
    this.filters,
    required this.id,
    required this.instanceTypes,
    this.locationType,
    required this.locationTypes,
    required this.locations,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null
          ? null
          : pulumi.Input.encodeList<
              GetInstanceTypeOfferingsFilter,
              Map<String, dynamic>
            >(filters!, (value) => value.toMap()),
      'id': id,
      'instanceTypes': instanceTypes,
      'locationType': ?locationType,
      'locationTypes': locationTypes,
      'locations': locations,
      'region': region,
    };
  }

  factory GetInstanceTypeOfferingsResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeOfferingsResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetInstanceTypeOfferingsFilter>(
              map['filters'],
              (value) => GetInstanceTypeOfferingsFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      id: map['id'] as String,
      instanceTypes: (map['instanceTypes'] as List).cast<String>(),
      locationType: map['locationType'] == null
          ? null
          : map['locationType'] as String,
      locationTypes: (map['locationTypes'] as List).cast<String>(),
      locations: (map['locations'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
