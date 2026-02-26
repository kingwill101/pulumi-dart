// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_ami_ids_filter/get_ami_ids_filter.dart';

/// Arguments for getAmiIds.
class GetAmiIdsArgs {
  /// Filter used to scope the list e.g., by tags. See [related docs](http://docs.aws.amazon.com/AutoScaling/latest/APIReference/API_Filter.html).
  final Input<List<GetAmiIdsFilter>>? filters;

  /// List of autoscaling group names
  final Input<List<String>>? names;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetAmiIdsArgs({
    this.filters,
    this.names,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetAmiIdsFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetAmiIdsFilter, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final namesValue = names;
    if (namesValue != null) {
      map['names'] = namesValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetAmiIdsArgs.fromMap(Map<String, dynamic> map) {
    return GetAmiIdsArgs(
      filters: Input.asOptionalInput<List<GetAmiIdsFilter>>(map['filters']),
      names: Input.asOptionalInput<List<String>>(map['names']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
