// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_prefix_list_entry.dart';
import 'get_managed_prefix_list_filter.dart';

/// Result data returned by getManagedPrefixList.
class GetManagedPrefixListResult {
  /// Address family of the prefix list. Valid values are `IPv4` and `IPv6`.
  final String? addressFamily;
  /// ARN of the selected prefix list.
  final String? arn;
  /// Set of entries in this prefix list. Each entry is an object with `cidr` and `description`.
  final List<GetManagedPrefixListEntry>? entries;
  final List<GetManagedPrefixListFilter>? filters;
  /// ID of the selected prefix list.
  final String? id;
  /// When then prefix list is managed, the maximum number of entries it supports, or null otherwise.
  final int? maxEntries;
  /// Name of the selected prefix list.
  final String? name;
  /// Account ID of the owner of a customer-managed prefix list, or `AWS` otherwise.
  final String? ownerId;
  final String? region;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;
  final int? version;

  /// Creates a new [GetManagedPrefixListResult].
  /// [addressFamily] Address family of the prefix list. Valid values are `IPv4` and `IPv6`.
  /// [arn] ARN of the selected prefix list.
  /// [entries] Set of entries in this prefix list. Each entry is an object with `cidr` and `description`.
  /// [filters] Optional.
  /// [id] ID of the selected prefix list.
  /// [maxEntries] When then prefix list is managed, the maximum number of entries it supports, or null otherwise.
  /// [name] Name of the selected prefix list.
  /// [ownerId] Account ID of the owner of a customer-managed prefix list, or `AWS` otherwise.
  /// [region] Optional.
  /// [tags] Map of tags assigned to the resource.
  /// [version] Optional.
  const GetManagedPrefixListResult({
    this.addressFamily,
    this.arn,
    this.entries,
    this.filters,
    this.id,
    this.maxEntries,
    this.name,
    this.ownerId,
    this.region,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': ?addressFamily,
      'arn': ?arn,
      'entries': ?(() { final guardedValue = entries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetManagedPrefixListEntry, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetManagedPrefixListFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'maxEntries': ?maxEntries,
      'name': ?name,
      'ownerId': ?ownerId,
      'region': ?region,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory GetManagedPrefixListResult.fromMap(Map<String, dynamic> map) {
    return GetManagedPrefixListResult(
      addressFamily: (() { final guardedValue = map['addressFamily']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetManagedPrefixListEntry>(guardedValue, (value) => GetManagedPrefixListEntry.fromMap((value as Map).cast<String, dynamic>())); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetManagedPrefixListFilter>(guardedValue, (value) => GetManagedPrefixListFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxEntries: (() { final guardedValue = map['maxEntries']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
