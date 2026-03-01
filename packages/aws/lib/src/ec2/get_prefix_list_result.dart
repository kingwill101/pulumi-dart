// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_prefix_list_filter.dart';

/// Result data returned by getPrefixList.
class GetPrefixListResult {
  /// List of CIDR blocks for the AWS service associated with the prefix list.
  final List<String> cidrBlocks;
  final List<GetPrefixListFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Name of the selected prefix list.
  final String name;
  final String? prefixListId;
  final String region;

  /// Creates a new [GetPrefixListResult].
  /// [cidrBlocks] List of CIDR blocks for the AWS service associated with the prefix list.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the selected prefix list.
  /// [prefixListId] Optional.
  /// [region] Required.
  GetPrefixListResult({
    required this.cidrBlocks,
    this.filters,
    required this.id,
    required this.name,
    this.prefixListId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlocks': cidrBlocks,
      'filters': ?filters == null
          ? null
          : pulumi.Input.encodeList<GetPrefixListFilter, Map<String, dynamic>>(
              filters!,
              (value) => value.toMap(),
            ),
      'id': id,
      'name': name,
      'prefixListId': ?prefixListId,
      'region': region,
    };
  }

  factory GetPrefixListResult.fromMap(Map<String, dynamic> map) {
    return GetPrefixListResult(
      cidrBlocks: (map['cidrBlocks'] as List).cast<String>(),
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetPrefixListFilter>(
              map['filters'],
              (value) => GetPrefixListFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      id: map['id'] as String,
      name: map['name'] as String,
      prefixListId: map['prefixListId'] == null
          ? null
          : map['prefixListId'] as String,
      region: map['region'] as String,
    );
  }
}
