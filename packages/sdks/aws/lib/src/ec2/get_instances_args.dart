// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_filter.dart';

/// {@template pulumi_ec2_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_instances_get_instances_args_doc}
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

  /// Creates a new [GetInstancesArgs].
  /// [filters] One or more filters to apply to the search.
  /// [instanceStateNames] List of instance states that should be applicable to the desired instances. The permitted values are: `pending, running, shutting-down, stopped, stopping, terminated`. The default value is `running`.
  /// [instanceTags] Map of tags, each pair of which must
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetInstancesArgs({
    this.filters,
    this.instanceStateNames,
    this.instanceTags,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetInstancesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetInstancesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceStateNames': ?instanceStateNames,
      'instanceTags': ?instanceTags,
      'region': ?region,
    };
  }

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      filters: map['filters'] == null ? null : ((pulumi.Input.decodeList<GetInstancesFilter>(map['filters']!, (value) => GetInstancesFilter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      instanceStateNames: map['instanceStateNames'] == null ? null : (((map['instanceStateNames'] as List).cast<String>()).input()).input(),
      instanceTags: map['instanceTags'] == null ? null : (((map['instanceTags'] as Map).cast<String, String>()).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

