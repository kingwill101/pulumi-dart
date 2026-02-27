// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_resources_search_all_result/get_resources_search_all_result.dart';

/// Result data returned by getResourcesSearchAll.
class GetResourcesSearchAllCloudassetResult {
  final List<String>? assetTypes;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? query;

  /// A list of search results based on provided inputs. Structure is defined below.
  final List<GetResourcesSearchAllResult> results;
  final String scope;

  GetResourcesSearchAllCloudassetResult({
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
    map['results'] = pulumi.Input.encodeList<GetResourcesSearchAllResult,
        Map<String, dynamic>>(results, (value) => value.toMap());
    map['scope'] = scope;
    return map;
  }

  factory GetResourcesSearchAllCloudassetResult.fromMap(
      Map<String, dynamic> map) {
    return GetResourcesSearchAllCloudassetResult(
      assetTypes: map['assetTypes'] == null
          ? null
          : (map['assetTypes'] as List).cast<String>(),
      id: map['id'] as String,
      query: map['query'] == null ? null : map['query'] as String,
      results: pulumi.Input.decodeList<GetResourcesSearchAllResult>(
          map['results'],
          (value) => GetResourcesSearchAllResult.fromMap(
              (value as Map).cast<String, dynamic>())),
      scope: map['scope'] as String,
    );
  }
}
