// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_managed_prefix_list_filter/get_managed_prefix_list_filter.dart';

/// Arguments for getManagedPrefixList.
class GetManagedPrefixListArgs {
  /// Configuration block(s) for filtering. Detailed below.
  ///
  /// The arguments of this data source act as filters for querying the available
  /// prefix lists. The given filters must match exactly one prefix list
  /// whose data will be exported as attributes.
  final pulumi.Input<List<GetManagedPrefixListFilter>>? filters;

  /// ID of the prefix list to select.
  final pulumi.Input<String>? id;

  /// Name of the prefix list to select.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

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
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetManagedPrefixListFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetManagedPrefixListFilter,
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
      filters: pulumi.Input.asOptionalInput<List<GetManagedPrefixListFilter>>(
          map['filters']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
