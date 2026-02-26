// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../search_resource/search_resource.dart';
import '../search_resource_count/search_resource_count.dart';

/// Result data returned by search.
class SearchResult {
  /// Query String.
  final String id;
  final String queryString;

  /// Amazon Web Services Region in which the resource was created and exists.
  final String region;

  /// Number of resources that match the query. See <span pulumi-lang-nodejs="`resourceCount`" pulumi-lang-dotnet="`ResourceCount`" pulumi-lang-go="`resourceCount`" pulumi-lang-python="`resource_count`" pulumi-lang-yaml="`resourceCount`" pulumi-lang-java="`resourceCount`">`resource_count`</span> below.
  final List<SearchResourceCount> resourceCounts;

  /// List of structures that describe the resources that match the query. See <span pulumi-lang-nodejs="`resources`" pulumi-lang-dotnet="`Resources`" pulumi-lang-go="`resources`" pulumi-lang-python="`resources`" pulumi-lang-yaml="`resources`" pulumi-lang-java="`resources`">`resources`</span> below.
  final List<SearchResource> resources;
  final String viewArn;

  SearchResult({
    required this.id,
    required this.queryString,
    required this.region,
    required this.resourceCounts,
    required this.resources,
    required this.viewArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['queryString'] = queryString;
    map['region'] = region;
    map['resourceCounts'] =
        Input.encodeList<SearchResourceCount, Map<String, dynamic>>(
            resourceCounts, (value) => value.toMap());
    map['resources'] = Input.encodeList<SearchResource, Map<String, dynamic>>(
        resources, (value) => value.toMap());
    map['viewArn'] = viewArn;
    return map;
  }

  factory SearchResult.fromMap(Map<String, dynamic> map) {
    return SearchResult(
      id: map['id'] as String,
      queryString: map['queryString'] as String,
      region: map['region'] as String,
      resourceCounts: Input.decodeList<SearchResourceCount>(
          map['resourceCounts'],
          (value) => SearchResourceCount.fromMap(
              (value as Map).cast<String, dynamic>())),
      resources: Input.decodeList<SearchResource>(
          map['resources'],
          (value) =>
              SearchResource.fromMap((value as Map).cast<String, dynamic>())),
      viewArn: map['viewArn'] as String,
    );
  }
}
