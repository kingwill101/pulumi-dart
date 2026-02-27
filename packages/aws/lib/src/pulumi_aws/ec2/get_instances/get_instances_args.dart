// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_instances_filter/get_instances_filter.dart';

/// Arguments for getInstances.
class GetInstancesArgs {
  /// One or more filters to apply to the search.
  /// If multiple `filter` blocks are provided, they all must be true.
  /// For a full reference of filter names, see [describe-instances in the AWS CLI reference][1].
  /// See `filter` Block below.
  final pulumi.Input<List<GetInstancesFilter>>? filters;

  /// List of instance states that should be applicable to the desired instances. The permitted values are: `pending, running, shutting-down, stopped, stopping, terminated`. The default value is `running`.
  final pulumi.Input<List<String>>? instanceStateNames;

  /// Map of tags, each pair of which must
  /// exactly match a pair on desired instances.
  final pulumi.Input<Map<String, String>>? instanceTags;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetInstancesArgs({
    this.filters,
    this.instanceStateNames,
    this.instanceTags,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetInstancesFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              pulumi.Input.encodeList<GetInstancesFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final instanceStateNamesValue = instanceStateNames;
    if (instanceStateNamesValue != null) {
      map['instanceStateNames'] = instanceStateNamesValue;
    }
    final instanceTagsValue = instanceTags;
    if (instanceTagsValue != null) {
      map['instanceTags'] = instanceTagsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      filters: pulumi.Input.asOptionalInput<List<GetInstancesFilter>>(
          map['filters']),
      instanceStateNames:
          pulumi.Input.asOptionalInput<List<String>>(map['instanceStateNames']),
      instanceTags: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['instanceTags']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
