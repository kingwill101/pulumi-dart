// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_spot_price_filter/get_spot_price_filter.dart';

/// Result data returned by getSpotPrice.
class GetSpotPriceResult {
  final String? availabilityZone;
  final List<GetSpotPriceFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? instanceType;
  final String region;

  /// Most recent Spot Price value for the given instance type and AZ.
  final String spotPrice;

  /// The timestamp at which the Spot Price value was published.
  final String spotPriceTimestamp;

  GetSpotPriceResult({
    this.availabilityZone,
    this.filters,
    required this.id,
    this.instanceType,
    required this.region,
    required this.spotPrice,
    required this.spotPriceTimestamp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetSpotPriceFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    map['region'] = region;
    map['spotPrice'] = spotPrice;
    map['spotPriceTimestamp'] = spotPriceTimestamp;
    return map;
  }

  factory GetSpotPriceResult.fromMap(Map<String, dynamic> map) {
    return GetSpotPriceResult(
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetSpotPriceFilter>(
              map['filters'],
              (value) => GetSpotPriceFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instanceType:
          map['instanceType'] == null ? null : map['instanceType'] as String,
      region: map['region'] as String,
      spotPrice: map['spotPrice'] as String,
      spotPriceTimestamp: map['spotPriceTimestamp'] as String,
    );
  }
}
