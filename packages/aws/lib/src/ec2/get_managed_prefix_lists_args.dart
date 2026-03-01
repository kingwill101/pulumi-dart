// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_prefix_lists_filter.dart';

/// {@template pulumi_ec2_get_managed_prefix_lists_get_managed_prefix_lists_args_doc}
/// Arguments for getManagedPrefixLists.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_managed_prefix_lists_get_managed_prefix_lists_args_doc}
class GetManagedPrefixListsArgs {
  /// Custom filter block as described below.
  final pulumi.Input<List<GetManagedPrefixListsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired .
  ///
  /// More complex filters can be expressed using one or more `filter` sub-blocks,
  /// which take the following arguments:
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetManagedPrefixListsArgs].
  /// [filters] Custom filter block as described below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match
  GetManagedPrefixListsArgs({
    List<GetManagedPrefixListsFilter>? filters,
    String? region,
    Map<String, String>? tags,
  }) : filters = pulumi
           .Input.asOptionalInput<List<GetManagedPrefixListsFilter>>(filters),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetManagedPrefixListsFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetManagedPrefixListsFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetManagedPrefixListsArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedPrefixListsArgs(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetManagedPrefixListsFilter>(
              map['filters'],
              (value) => GetManagedPrefixListsFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
