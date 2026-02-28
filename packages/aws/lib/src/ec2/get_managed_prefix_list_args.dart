// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_prefix_list_filter.dart';

/// {@template pulumi_ec2_get_managed_prefix_list_get_managed_prefix_list_args_doc}
/// Arguments for getManagedPrefixList.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_managed_prefix_list_get_managed_prefix_list_args_doc}
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

  /// Creates a new [GetManagedPrefixListArgs].
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [id] ID of the prefix list to select.
  /// [name] Name of the prefix list to select.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource.
  GetManagedPrefixListArgs({
    List<GetManagedPrefixListFilter>? filters,
    String? id,
    String? name,
    String? region,
    Map<String, String>? tags,
  })  : filters =
            pulumi.Input.asOptionalInput<List<GetManagedPrefixListFilter>>(
                filters),
        id = pulumi.Input.asOptionalInput<String>(id),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetManagedPrefixListFilter>(
              map['filters'],
              (value) => GetManagedPrefixListFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
