// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'search_resource.dart';
import 'search_resource_count.dart';

/// Result data returned by search.
class SearchResult {
  /// Query String.
  final String? id;
  final String? queryString;
  /// Amazon Web Services Region in which the resource was created and exists.
  final String? region;
  /// Number of resources that match the query. See `resourceCount` below.
  final List<SearchResourceCount>? resourceCounts;
  /// List of structures that describe the resources that match the query. See `resources` below.
  final List<SearchResource>? resources;
  final String? viewArn;

  /// Creates a new [SearchResult].
  /// [id] Query String.
  /// [queryString] Optional.
  /// [region] Amazon Web Services Region in which the resource was created and exists.
  /// [resourceCounts] Number of resources that match the query. See `resourceCount` below.
  /// [resources] List of structures that describe the resources that match the query. See `resources` below.
  /// [viewArn] Optional.
  const SearchResult({
    this.id,
    this.queryString,
    this.region,
    this.resourceCounts,
    this.resources,
    this.viewArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'queryString': ?queryString,
      'region': ?region,
      'resourceCounts': ?(() { final guardedValue = resourceCounts; if (guardedValue == null) return null; return pulumi.Input.encodeList<SearchResourceCount, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resources': ?(() { final guardedValue = resources; if (guardedValue == null) return null; return pulumi.Input.encodeList<SearchResource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'viewArn': ?viewArn,
    };
  }

  factory SearchResult.fromMap(Map<String, dynamic> map) {
    return SearchResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queryString: (() { final guardedValue = map['queryString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceCounts: (() { final guardedValue = map['resourceCounts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SearchResourceCount>(guardedValue, (value) => SearchResourceCount.fromMap((value as Map).cast<String, dynamic>())); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SearchResource>(guardedValue, (value) => SearchResource.fromMap((value as Map).cast<String, dynamic>())); })(),
      viewArn: (() { final guardedValue = map['viewArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
