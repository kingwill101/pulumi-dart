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
    this.filters,
    this.id,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetManagedPrefixListFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetManagedPrefixListFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetManagedPrefixListArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedPrefixListArgs(
      filters: map['filters'] == null ? null : ((pulumi.Input.decodeList<GetManagedPrefixListFilter>(map['filters']!, (value) => GetManagedPrefixListFilter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      id: map['id'] == null ? null : ((map['id'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

