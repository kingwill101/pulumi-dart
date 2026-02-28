// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_prefix_list_entry.dart';
import 'get_managed_prefix_list_filter.dart';

/// Result data returned by getManagedPrefixList.
class GetManagedPrefixListResult {
  /// Address family of the prefix list. Valid values are `IPv4` and `IPv6`.
  final String addressFamily;
  /// ARN of the selected prefix list.
  final String arn;
  /// Set of entries in this prefix list. Each entry is an object with `cidr` and `description`.
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

  /// Creates a new [GetManagedPrefixListResult].
  /// [addressFamily] Address family of the prefix list. Valid values are `IPv4` and `IPv6`.
  /// [arn] ARN of the selected prefix list.
  /// [entries] Set of entries in this prefix list. Each entry is an object with `cidr` and `description`.
  /// [filters] Optional.
  /// [id] ID of the selected prefix list.
  /// [maxEntries] When then prefix list is managed, the maximum number of entries it supports, or null otherwise.
  /// [name] Name of the selected prefix list.
  /// [ownerId] Account ID of the owner of a customer-managed prefix list, or `AWS` otherwise.
  /// [region] Required.
  /// [tags] Map of tags assigned to the resource.
  /// [version] Required.
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
    return <String, dynamic>{
      'addressFamily': addressFamily,
      'arn': arn,
      'entries': pulumi.Input.encodeList<GetManagedPrefixListEntry, Map<String, dynamic>>(entries, (value) => value.toMap()),
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetManagedPrefixListFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'maxEntries': maxEntries,
      'name': name,
      'ownerId': ownerId,
      'region': region,
      'tags': tags,
      'version': version,
    };
  }

  factory GetManagedPrefixListResult.fromMap(Map<String, dynamic> map) {
    return GetManagedPrefixListResult(
      addressFamily: map['addressFamily'] as String,
      arn: map['arn'] as String,
      entries: pulumi.Input.decodeList<GetManagedPrefixListEntry>(map['entries'], (value) => GetManagedPrefixListEntry.fromMap((value as Map).cast<String, dynamic>())),
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetManagedPrefixListFilter>(map['filters'], (value) => GetManagedPrefixListFilter.fromMap((value as Map).cast<String, dynamic>())),
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

