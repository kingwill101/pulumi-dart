// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spot_price_filter.dart';

/// {@template pulumi_ec2_get_spot_price_get_spot_price_args_doc}
/// Arguments for getSpotPrice.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_spot_price_get_spot_price_args_doc}
class GetSpotPriceArgs {
  /// Availability zone in which to query Spot price information.
  final pulumi.Input<String>? availabilityZone;
  /// One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSpotPriceHistory.html) for supported filters. Detailed below.
  final pulumi.Input<List<GetSpotPriceFilter>>? filters;
  /// Type of instance for which to query Spot Price information.
  final pulumi.Input<String>? instanceType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetSpotPriceArgs].
  /// [availabilityZone] Availability zone in which to query Spot price information.
  /// [filters] One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSpotPriceHistory.html) for supported filters. Detailed below.
  /// [instanceType] Type of instance for which to query Spot Price information.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetSpotPriceArgs({
    String? availabilityZone,
    List<GetSpotPriceFilter>? filters,
    String? instanceType,
    String? region,
  }) :
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      filters = pulumi.Input.asOptionalInput<List<GetSpotPriceFilter>>(filters),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetSpotPriceFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetSpotPriceFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceType': ?instanceType,
      'region': ?region,
    };
  }

  factory GetSpotPriceArgs.fromMap(Map<String, dynamic> map) {
    return GetSpotPriceArgs(
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetSpotPriceFilter>(map['filters'], (value) => GetSpotPriceFilter.fromMap((value as Map).cast<String, dynamic>())),
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

