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
  GetInstanceTypeOfferingArgs({
    pulumi.Output<List<GetInstanceTypeOfferingFilter>>? filters,
    pulumi.Output<String>? locationType,
    pulumi.Output<List<String>>? preferredInstanceTypes,
    pulumi.Output<String>? region,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetInstanceTypeOfferingFilter>>(filters),
      locationType = pulumi.Input.asOptionalInput<String>(locationType),
      preferredInstanceTypes = pulumi.Input.asOptionalInput<List<String>>(preferredInstanceTypes),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetInstanceTypeOfferingFilter>>(pulumi.Input.decodeList<GetInstanceTypeOfferingFilter>(map['filters'], (value) => GetInstanceTypeOfferingFilter.fromMap((value as Map).cast<String, dynamic>()))),
      locationType: map['locationType'] == null ? null : pulumi.Output.create<String>(map['locationType'] as String),
      preferredInstanceTypes: map['preferredInstanceTypes'] == null ? null : pulumi.Output.create<List<String>>((map['preferredInstanceTypes'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

