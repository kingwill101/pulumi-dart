// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_managed_prefix_list_entry/get_managed_prefix_list_entry.dart';
import '../get_managed_prefix_list_filter/get_managed_prefix_list_filter.dart';

/// Result data returned by getManagedPrefixList.
class GetManagedPrefixListResult {
  /// Address family of the prefix list. Valid values are `IPv4` and `IPv6`.
  final String addressFamily;

  /// ARN of the selected prefix list.
  final String arn;

  /// Set of entries in this prefix list. Each entry is an object with <span pulumi-lang-nodejs="`cidr`" pulumi-lang-dotnet="`Cidr`" pulumi-lang-go="`cidr`" pulumi-lang-python="`cidr`" pulumi-lang-yaml="`cidr`" pulumi-lang-java="`cidr`">`cidr`</span> and <span pulumi-lang-nodejs="`description`" pulumi-lang-dotnet="`Description`" pulumi-lang-go="`description`" pulumi-lang-python="`description`" pulumi-lang-yaml="`description`" pulumi-lang-java="`description`">`description`</span>.
  final List<GetManagedPrefixListEntry> entries;
  final List<GetManagedPrefixListFilter>? filters;

  /// ID of the selected prefix list.
  final String id;

  /// When then prefix list is managed, the maximum number of entries it supports, or null otherwise.
  final int maxEntries;

  /// Name of the selected prefix list.
  final String name;

  /// Account ID of the owner of a customer-managed prefix list, or `AWS` otherwise.
  final String ownerId;
  final String region;

  /// Map of tags assigned to the resource.
  final Map<String, String> tags;
  final int version;

  GetManagedPrefixListResult({
    required this.addressFamily,
    required this.arn,
    required this.entries,
    this.filters,
    required this.id,
    required this.maxEntries,
    required this.name,
    required this.ownerId,
    required this.region,
    required this.tags,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addressFamily'] = addressFamily;
    map['arn'] = arn;
    map['entries'] =
        Input.encodeList<GetManagedPrefixListEntry, Map<String, dynamic>>(
            entries, (value) => value.toMap());
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetManagedPrefixListFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['maxEntries'] = maxEntries;
    map['name'] = name;
    map['ownerId'] = ownerId;
    map['region'] = region;
    map['tags'] = tags;
    map['version'] = version;
    return map;
  }

  factory GetManagedPrefixListResult.fromMap(Map<String, dynamic> map) {
    return GetManagedPrefixListResult(
      addressFamily: map['addressFamily'] as String,
      arn: map['arn'] as String,
      entries: Input.decodeList<GetManagedPrefixListEntry>(
          map['entries'],
          (value) => GetManagedPrefixListEntry.fromMap(
              (value as Map).cast<String, dynamic>())),
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetManagedPrefixListFilter>(
              map['filters'],
              (value) => GetManagedPrefixListFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      maxEntries: map['maxEntries'] as int,
      name: map['name'] as String,
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      version: map['version'] as int,
    );
  }
}
