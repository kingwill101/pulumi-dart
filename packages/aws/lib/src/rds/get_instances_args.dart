// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_filter.dart';

/// {@template pulumi_rds_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_rds_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  /// Configuration block(s) used to filter instances with AWS supported attributes, such as `engine`, `db-cluster-id` or `db-instance-id` for example. Detailed below.
  final pulumi.Input<List<GetInstancesFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags, each pair of which must exactly match a pair on the desired instances.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetInstancesArgs].
  /// [filters] Configuration block(s) used to filter instances with AWS supported attributes, such as `engine`, `db-cluster-id` or `db-instance-id` for example. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match a pair on the desired instances.
  GetInstancesArgs({
    List<GetInstancesFilter>? filters,
    String? region,
    Map<String, String>? tags,
  })  : filters =
            pulumi.Input.asOptionalInput<List<GetInstancesFilter>>(filters),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetInstancesFilter>(
              map['filters'],
              (value) => GetInstancesFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
