// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_instance_type_offering_filter/get_instance_type_offering_filter.dart';

/// Result data returned by getInstanceTypeOffering.
class GetInstanceTypeOfferingResult {
  final List<GetInstanceTypeOfferingFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// EC2 Instance Type.
  final String instanceType;

  /// Identifier for the location.
  final String location;
  final String? locationType;
  final List<String>? preferredInstanceTypes;
  final String region;

  GetInstanceTypeOfferingResult({
    this.filters,
    required this.id,
    required this.instanceType,
    required this.location,
    this.locationType,
    this.preferredInstanceTypes,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<GetInstanceTypeOfferingFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['instanceType'] = instanceType;
    map['location'] = location;
    final locationTypeValue = locationType;
    if (locationTypeValue != null) {
      map['locationType'] = locationTypeValue;
    }
    final preferredInstanceTypesValue = preferredInstanceTypes;
    if (preferredInstanceTypesValue != null) {
      map['preferredInstanceTypes'] = preferredInstanceTypesValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetInstanceTypeOfferingResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeOfferingResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetInstanceTypeOfferingFilter>(
              map['filters'],
              (value) => GetInstanceTypeOfferingFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instanceType: map['instanceType'] as String,
      location: map['location'] as String,
      locationType:
          map['locationType'] == null ? null : map['locationType'] as String,
      preferredInstanceTypes: map['preferredInstanceTypes'] == null
          ? null
          : (map['preferredInstanceTypes'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
