// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hosts_filter.dart';

/// Result data returned by getHosts.
class GetHostsResult {
  final List<GetHostsFilter>? filters;
  /// List of EC2 Dedicated Host identifiers.
  final List<String> ids;
  final String? outpostArn;
  final String region;
  final Map<String, String>? tags;

  /// Creates a new [GetHostsResult].
  /// [filters] Optional.
  /// [ids] List of EC2 Dedicated Host identifiers.
  /// [outpostArn] Optional.
  /// [region] Required.
  /// [tags] Optional.
  const GetHostsResult({
    this.filters,
    required this.ids,
    this.outpostArn,
    required this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetHostsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ids': ids,
      'outpostArn': ?outpostArn,
      'region': region,
      'tags': ?tags,
    };
  }

  factory GetHostsResult.fromMap(Map<String, dynamic> map) {
    return GetHostsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetHostsFilter>(guardedValue, (value) => GetHostsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      ids: (map['ids'] as List).cast<String>(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: map['region'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
