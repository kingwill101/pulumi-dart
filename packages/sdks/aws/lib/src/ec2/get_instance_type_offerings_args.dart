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
    this.filters,
    this.locationType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetInstanceTypeOfferingsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetInstanceTypeOfferingsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locationType': ?locationType,
      'region': ?region,
    };
  }

  factory GetInstanceTypeOfferingsArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeOfferingsArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceTypeOfferingsFilter>(guardedValue, (value) => GetInstanceTypeOfferingsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      locationType: (() { final guardedValue = map['locationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

