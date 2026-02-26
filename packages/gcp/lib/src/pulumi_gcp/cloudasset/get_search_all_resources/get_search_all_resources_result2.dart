// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_search_all_resources_result/get_search_all_resources_result.dart';

/// Result data returned by getSearchAllResources.
class GetSearchAllResourcesResult2 {
  final List<String>? assetTypes;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? query;

  /// A list of search results based on provided inputs. Structure is defined below.
  final List<GetSearchAllResourcesResult> results;
  final String scope;

  GetSearchAllResourcesResult2({
    this.assetTypes,
    required this.id,
    this.query,
    required this.results,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assetTypesValue = assetTypes;
    if (assetTypesValue != null) {
      map['assetTypes'] = assetTypesValue;
    }
    map['id'] = id;
    final queryValue = query;
    if (queryValue != null) {
      map['query'] = queryValue;
    }
    map['results'] =
        Input.encodeList<GetSearchAllResourcesResult, Map<String, dynamic>>(
            results, (value) => value.toMap());
    map['scope'] = scope;
    return map;
  }

  factory GetSearchAllResourcesResult2.fromMap(Map<String, dynamic> map) {
    return GetSearchAllResourcesResult2(
      assetTypes: map['assetTypes'] == null
          ? null
          : (map['assetTypes'] as List).cast<String>(),
      id: map['id'] as String,
      query: map['query'] == null ? null : map['query'] as String,
      results: Input.decodeList<GetSearchAllResourcesResult>(
          map['results'],
          (value) => GetSearchAllResourcesResult.fromMap(
              (value as Map).cast<String, dynamic>())),
      scope: map['scope'] as String,
    );
  }
}
