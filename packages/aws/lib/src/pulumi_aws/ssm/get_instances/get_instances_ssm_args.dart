// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_instances_filter/get_instances_filter_ssm.dart';

/// Arguments for getInstances.
class GetInstancesSsmArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetInstancesFilterSsm>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetInstancesSsmArgs({
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetInstancesFilterSsm>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetInstancesFilterSsm,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetInstancesSsmArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesSsmArgs(
      filters: pulumi.Input.asOptionalInput<List<GetInstancesFilterSsm>>(
          map['filters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
