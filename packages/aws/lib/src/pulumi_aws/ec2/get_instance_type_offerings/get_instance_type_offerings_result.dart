// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_type_offerings_filter/get_instance_type_offerings_filter.dart';

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
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.encodeList<GetInstanceTypeOfferingsFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['instanceTypes'] = instanceTypes;
    final locationTypeValue = locationType;
    if (locationTypeValue != null) {
      map['locationType'] = locationTypeValue;
    }
    map['locationTypes'] = locationTypes;
    map['locations'] = locations;
    map['region'] = region;
    return map;
  }

  factory GetInstanceTypeOfferingsResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeOfferingsResult(
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetInstanceTypeOfferingsFilter>(
              map['filters'],
              (value) => GetInstanceTypeOfferingsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instanceTypes: (map['instanceTypes'] as List).cast<String>(),
      locationType:
          map['locationType'] == null ? null : map['locationType'] as String,
      locationTypes: (map['locationTypes'] as List).cast<String>(),
      locations: (map['locations'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
