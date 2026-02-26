// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_spot_price_filter/get_spot_price_filter.dart';

/// Arguments for getSpotPrice.
class GetSpotPriceArgs {
  /// Availability zone in which to query Spot price information.
  final Input<String>? availabilityZone;

  /// One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSpotPriceHistory.html) for supported filters. Detailed below.
  final Input<List<GetSpotPriceFilter>>? filters;

  /// Type of instance for which to query Spot Price information.
  final Input<String>? instanceType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetSpotPriceArgs({
    this.availabilityZone,
    this.filters,
    this.instanceType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetSpotPriceFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetSpotPriceFilter, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetSpotPriceArgs.fromMap(Map<String, dynamic> map) {
    return GetSpotPriceArgs(
      availabilityZone: Input.asOptionalInput<String>(map['availabilityZone']),
      filters: Input.asOptionalInput<List<GetSpotPriceFilter>>(map['filters']),
      instanceType: Input.asOptionalInput<String>(map['instanceType']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
