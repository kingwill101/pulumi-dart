// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_managed_prefix_list_filter/get_managed_prefix_list_filter.dart';

/// Arguments for getManagedPrefixList.
class GetManagedPrefixListArgs {
  /// Configuration block(s) for filtering. Detailed below.
  ///
  /// The arguments of this data source act as filters for querying the available
  /// prefix lists. The given filters must match exactly one prefix list
  /// whose data will be exported as attributes.
  final Input<List<GetManagedPrefixListFilter>>? filters;

  /// ID of the prefix list to select.
  final Input<String>? id;

  /// Name of the prefix list to select.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags assigned to the resource.
  final Input<Map<String, String>>? tags;

  GetManagedPrefixListArgs({
    this.filters,
    this.id,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetManagedPrefixListFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetManagedPrefixListFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
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

  factory GetManagedPrefixListArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedPrefixListArgs(
      filters: Input.asOptionalInput<List<GetManagedPrefixListFilter>>(
          map['filters']),
      id: Input.asOptionalInput<String>(map['id']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
