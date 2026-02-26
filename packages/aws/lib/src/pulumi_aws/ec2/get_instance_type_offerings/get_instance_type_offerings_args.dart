// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_type_offerings_filter/get_instance_type_offerings_filter.dart';

/// Arguments for getInstanceTypeOfferings.
class GetInstanceTypeOfferingsArgs {
  /// One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstanceTypeOfferings.html) for supported filters. Detailed below.
  final Input<List<GetInstanceTypeOfferingsFilter>>? filters;

  /// Location type. Defaults to <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span>. Valid values: `availability-zone`, `availability-zone-id`, and <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span>.
  final Input<String>? locationType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetInstanceTypeOfferingsArgs({
    this.filters,
    this.locationType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetInstanceTypeOfferingsFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetInstanceTypeOfferingsFilter,
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
      filters: Input.asOptionalInput<List<GetInstanceTypeOfferingsFilter>>(
          map['filters']),
      locationType: Input.asOptionalInput<String>(map['locationType']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
