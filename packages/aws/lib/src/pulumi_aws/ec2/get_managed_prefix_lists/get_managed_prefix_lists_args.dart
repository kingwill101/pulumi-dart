// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_managed_prefix_lists_filter/get_managed_prefix_lists_filter.dart';

/// Arguments for getManagedPrefixLists.
class GetManagedPrefixListsArgs {
  /// Custom filter block as described below.
  final Input<List<GetManagedPrefixListsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired .
  ///
  /// More complex filters can be expressed using one or more <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> sub-blocks,
  /// which take the following arguments:
  final Input<Map<String, String>>? tags;

  GetManagedPrefixListsArgs({
    this.filters,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetManagedPrefixListsFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetManagedPrefixListsFilter,
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

  factory GetManagedPrefixListsArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedPrefixListsArgs(
      filters: Input.asOptionalInput<List<GetManagedPrefixListsFilter>>(
          map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
