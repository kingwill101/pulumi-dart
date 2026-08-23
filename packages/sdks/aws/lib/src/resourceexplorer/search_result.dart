// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'search_resource.dart';
import 'search_resource_count.dart';

/// Result data returned by search.
class SearchResult {
  /// Query String.
  final String id;
  final String queryString;
  /// Amazon Web Services Region in which the resource was created and exists.
  final String region;
  /// Number of resources that match the query. See `resourceCount` below.
  final List<SearchResourceCount> resourceCounts;
  /// List of structures that describe the resources that match the query. See `resources` below.
  final List<SearchResource> resources;
  final String viewArn;

  /// Creates a new [SearchResult].
  /// [id] Query String.
  /// [queryString] Required.
  /// [region] Amazon Web Services Region in which the resource was created and exists.
  /// [resourceCounts] Number of resources that match the query. See `resourceCount` below.
  /// [resources] List of structures that describe the resources that match the query. See `resources` below.
  /// [viewArn] Required.
  const SearchResult({
    required this.id,
    required this.queryString,
    required this.region,
    required this.resourceCounts,
    required this.resources,
    required this.viewArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'queryString': queryString,
      'region': region,
      'resourceCounts': pulumi.Input.encodeList<SearchResourceCount, Map<String, dynamic>>(resourceCounts, (value) => value.toMap()),
      'resources': pulumi.Input.encodeList<SearchResource, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'viewArn': viewArn,
    };
  }

  factory SearchResult.fromMap(Map<String, dynamic> map) {
    return SearchResult(
      id: map['id'] as String,
      queryString: map['queryString'] as String,
      region: map['region'] as String,
      resourceCounts: pulumi.Input.decodeList<SearchResourceCount>(map['resourceCounts']!, (value) => SearchResourceCount.fromMap((value as Map).cast<String, dynamic>())),
      resources: pulumi.Input.decodeList<SearchResource>(map['resources']!, (value) => SearchResource.fromMap((value as Map).cast<String, dynamic>())),
      viewArn: map['viewArn'] as String,
    );
  }
}
