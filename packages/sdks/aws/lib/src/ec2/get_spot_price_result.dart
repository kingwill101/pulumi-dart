// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spot_price_filter.dart';

/// Result data returned by getSpotPrice.
class GetSpotPriceResult {
  final String? availabilityZone;
  final List<GetSpotPriceFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceType;
  final String? region;
  /// Most recent Spot Price value for the given instance type and AZ.
  final String? spotPrice;
  /// The timestamp at which the Spot Price value was published.
  final String? spotPriceTimestamp;

  /// Creates a new [GetSpotPriceResult].
  /// [availabilityZone] Optional.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceType] Optional.
  /// [region] Optional.
  /// [spotPrice] Most recent Spot Price value for the given instance type and AZ.
  /// [spotPriceTimestamp] The timestamp at which the Spot Price value was published.
  const GetSpotPriceResult({
    this.availabilityZone,
    this.filters,
    this.id,
    this.instanceType,
    this.region,
    this.spotPrice,
    this.spotPriceTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSpotPriceFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'instanceType': ?instanceType,
      'region': ?region,
      'spotPrice': ?spotPrice,
      'spotPriceTimestamp': ?spotPriceTimestamp,
    };
  }

  factory GetSpotPriceResult.fromMap(Map<String, dynamic> map) {
    return GetSpotPriceResult(
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSpotPriceFilter>(guardedValue, (value) => GetSpotPriceFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      spotPrice: (() { final guardedValue = map['spotPrice']; if (guardedValue == null) return null; return guardedValue as String; })(),
      spotPriceTimestamp: (() { final guardedValue = map['spotPriceTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
