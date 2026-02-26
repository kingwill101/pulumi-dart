// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_prefix_list_filter/get_prefix_list_filter.dart';

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

  GetPrefixListResult({
    required this.cidrBlocks,
    this.filters,
    required this.id,
    required this.name,
    this.prefixListId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrBlocks'] = cidrBlocks;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetPrefixListFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['name'] = name;
    final prefixListIdValue = prefixListId;
    if (prefixListIdValue != null) {
      map['prefixListId'] = prefixListIdValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetPrefixListResult.fromMap(Map<String, dynamic> map) {
    return GetPrefixListResult(
      cidrBlocks: (map['cidrBlocks'] as List).cast<String>(),
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetPrefixListFilter>(
              map['filters'],
              (value) => GetPrefixListFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      prefixListId:
          map['prefixListId'] == null ? null : map['prefixListId'] as String,
      region: map['region'] as String,
    );
  }
}
