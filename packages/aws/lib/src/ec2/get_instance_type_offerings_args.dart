// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_type_offerings_filter.dart';

/// {@template pulumi_ec2_get_instance_type_offerings_get_instance_type_offerings_args_doc}
/// Arguments for getInstanceTypeOfferings.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_instance_type_offerings_get_instance_type_offerings_args_doc}
class GetInstanceTypeOfferingsArgs {
  /// One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstanceTypeOfferings.html) for supported filters. Detailed below.
  final pulumi.Input<List<GetInstanceTypeOfferingsFilter>>? filters;

  /// Location type. Defaults to `region`. Valid values: `availability-zone`, `availability-zone-id`, and `region`.
  final pulumi.Input<String>? locationType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetInstanceTypeOfferingsArgs].
  /// [filters] One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstanceTypeOfferings.html) for supported filters. Detailed below.
  /// [locationType] Location type. Defaults to `region`. Valid values: `availability-zone`, `availability-zone-id`, and `region`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetInstanceTypeOfferingsArgs({
    List<GetInstanceTypeOfferingsFilter>? filters,
    String? locationType,
    String? region,
  })  : filters =
            pulumi.Input.asOptionalInput<List<GetInstanceTypeOfferingsFilter>>(
                filters),
        locationType = pulumi.Input.asOptionalInput<String>(locationType),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetInstanceTypeOfferingsFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetInstanceTypeOfferingsFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final locationTypeValue = locationType;
    if (locationTypeValue != null) {
      map['locationType'] = locationTypeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetInstanceTypeOfferingsArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeOfferingsArgs(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetInstanceTypeOfferingsFilter>(
              map['filters'],
              (value) => GetInstanceTypeOfferingsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      locationType:
          map['locationType'] == null ? null : map['locationType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
