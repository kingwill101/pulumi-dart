// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instances_filter/get_instances_filter3.dart';

/// Arguments for getInstances.
class GetInstancesArgs3 {
  /// Configuration block(s) for filtering. Detailed below.
  final Input<List<GetInstancesFilter3>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetInstancesArgs3({
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetInstancesFilter3>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetInstancesFilter3, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetInstancesArgs3.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs3(
      filters: Input.asOptionalInput<List<GetInstancesFilter3>>(map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
