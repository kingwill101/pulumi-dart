// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_type_offering_filter.dart';

/// {@template pulumi_ec2_get_instance_type_offering_get_instance_type_offering_args_doc}
/// Arguments for getInstanceTypeOffering.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_instance_type_offering_get_instance_type_offering_args_doc}
class GetInstanceTypeOfferingArgs {
  /// One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstanceTypeOfferings.html) for supported filters. Detailed below.
  final pulumi.Input<List<GetInstanceTypeOfferingFilter>>? filters;
  /// Location type. Defaults to `region`. Valid values: `availability-zone`, `availability-zone-id`, and `region`.
  final pulumi.Input<String>? locationType;
  /// Ordered list of preferred EC2 Instance Types. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned.
  final pulumi.Input<List<String>>? preferredInstanceTypes;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetInstanceTypeOfferingArgs].
  /// [filters] One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstanceTypeOfferings.html) for supported filters. Detailed below.
  /// [locationType] Location type. Defaults to `region`. Valid values: `availability-zone`, `availability-zone-id`, and `region`.
  /// [preferredInstanceTypes] Ordered list of preferred EC2 Instance Types. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetInstanceTypeOfferingArgs({
    this.filters,
    this.locationType,
    this.preferredInstanceTypes,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetInstanceTypeOfferingFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetInstanceTypeOfferingFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locationType': ?locationType,
      'preferredInstanceTypes': ?preferredInstanceTypes,
      'region': ?region,
    };
  }

  factory GetInstanceTypeOfferingArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeOfferingArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceTypeOfferingFilter>(guardedValue, (value) => GetInstanceTypeOfferingFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      locationType: (() { final guardedValue = map['locationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredInstanceTypes: (() { final guardedValue = map['preferredInstanceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
