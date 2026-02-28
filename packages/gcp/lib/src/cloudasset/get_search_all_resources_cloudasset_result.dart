// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_search_all_resources_result.dart';

/// Result data returned by getSearchAllResources.
class GetSearchAllResourcesCloudassetResult {
  final List<String>? assetTypes;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? query;

  /// A list of search results based on provided inputs. Structure is defined below.
  final List<GetSearchAllResourcesResult> results;
  final String scope;

  /// Creates a new [GetSearchAllResourcesCloudassetResult].
  /// [assetTypes] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [query] Optional.
  /// [results] A list of search results based on provided inputs. Structure is defined below.
  /// [scope] Required.
  GetSearchAllResourcesCloudassetResult({
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
    map['results'] = pulumi.Input.encodeList<GetSearchAllResourcesResult,
        Map<String, dynamic>>(results, (value) => value.toMap());
    map['scope'] = scope;
    return map;
  }

  factory GetSearchAllResourcesCloudassetResult.fromMap(
      Map<String, dynamic> map) {
    return GetSearchAllResourcesCloudassetResult(
      assetTypes: map['assetTypes'] == null
          ? null
          : (map['assetTypes'] as List).cast<String>(),
      id: map['id'] as String,
      query: map['query'] == null ? null : map['query'] as String,
      results: pulumi.Input.decodeList<GetSearchAllResourcesResult>(
          map['results'],
          (value) => GetSearchAllResourcesResult.fromMap(
              (value as Map).cast<String, dynamic>())),
      scope: map['scope'] as String,
    );
  }
}
