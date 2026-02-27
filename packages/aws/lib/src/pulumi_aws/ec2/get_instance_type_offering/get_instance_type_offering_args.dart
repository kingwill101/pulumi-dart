// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_instance_type_offering_filter/get_instance_type_offering_filter.dart';

/// Arguments for getInstanceTypeOffering.
class GetInstanceTypeOfferingArgs {
  /// One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstanceTypeOfferings.html) for supported filters. Detailed below.
  final pulumi.Input<List<GetInstanceTypeOfferingFilter>>? filters;

  /// Location type. Defaults to `region`. Valid values: `availability-zone`, `availability-zone-id`, and `region`.
  final pulumi.Input<String>? locationType;

  /// Ordered list of preferred EC2 Instance Types. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned.
  final pulumi.Input<List<String>>? preferredInstanceTypes;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetInstanceTypeOfferingArgs({
    this.filters,
    this.locationType,
    this.preferredInstanceTypes,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetInstanceTypeOfferingFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetInstanceTypeOfferingFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final locationTypeValue = locationType;
    if (locationTypeValue != null) {
      map['locationType'] = locationTypeValue;
    }
    final preferredInstanceTypesValue = preferredInstanceTypes;
    if (preferredInstanceTypesValue != null) {
      map['preferredInstanceTypes'] = preferredInstanceTypesValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetInstanceTypeOfferingArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeOfferingArgs(
      filters:
          pulumi.Input.asOptionalInput<List<GetInstanceTypeOfferingFilter>>(
              map['filters']),
      locationType: pulumi.Input.asOptionalInput<String>(map['locationType']),
      preferredInstanceTypes: pulumi.Input.asOptionalInput<List<String>>(
          map['preferredInstanceTypes']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
