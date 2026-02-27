// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_instances_filter/get_instances_filter_rds.dart';

/// Arguments for getInstances.
class GetInstancesRdsArgs {
  /// Configuration block(s) used to filter instances with AWS supported attributes, such as `engine`, `db-cluster-id` or `db-instance-id` for example. Detailed below.
  final pulumi.Input<List<GetInstancesFilterRds>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags, each pair of which must exactly match a pair on the desired instances.
  final pulumi.Input<Map<String, String>>? tags;

  GetInstancesRdsArgs({
    this.filters,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetInstancesFilterRds>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetInstancesFilterRds,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetInstancesRdsArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesRdsArgs(
      filters: pulumi.Input.asOptionalInput<List<GetInstancesFilterRds>>(
          map['filters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
