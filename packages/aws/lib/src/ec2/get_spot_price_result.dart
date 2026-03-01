// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spot_price_filter.dart';

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

  /// Creates a new [GetSpotPriceResult].
  /// [availabilityZone] Optional.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceType] Optional.
  /// [region] Required.
  /// [spotPrice] Most recent Spot Price value for the given instance type and AZ.
  /// [spotPriceTimestamp] The timestamp at which the Spot Price value was published.
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
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'filters': ?filters == null
          ? null
          : pulumi.Input.encodeList<GetSpotPriceFilter, Map<String, dynamic>>(
              filters!,
              (value) => value.toMap(),
            ),
      'id': id,
      'instanceType': ?instanceType,
      'region': region,
      'spotPrice': spotPrice,
      'spotPriceTimestamp': spotPriceTimestamp,
    };
  }

  factory GetSpotPriceResult.fromMap(Map<String, dynamic> map) {
    return GetSpotPriceResult(
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetSpotPriceFilter>(
              map['filters'],
              (value) => GetSpotPriceFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      id: map['id'] as String,
      instanceType: map['instanceType'] == null
          ? null
          : map['instanceType'] as String,
      region: map['region'] as String,
      spotPrice: map['spotPrice'] as String,
      spotPriceTimestamp: map['spotPriceTimestamp'] as String,
    );
  }
}
