// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudasset_get_resources_search_all_get_resources_search_all_args_doc}
/// Arguments for getResourcesSearchAll.
/// {@endtemplate}
/// {@macro pulumi_cloudasset_get_resources_search_all_get_resources_search_all_args_doc}
class GetResourcesSearchAllArgs {
  /// A list of asset types that this request searches for. If empty, it will search all the [supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types).
  final pulumi.Input<List<String>>? assetTypes;

  /// The query statement. See [how to construct a query](https://cloud.google.com/asset-inventory/docs/searching-resources#how_to_construct_a_query) for more information. If not specified or empty, it will search all the resources within the specified `scope` and `asset_types`.
  final pulumi.Input<String>? query;

  /// A scope can be a project, a folder, or an organization. The allowed value must be: organization number (such as "organizations/123"), folder number (such as "folders/1234"), project number (such as "projects/12345") or project id (such as "projects/abc")
  final pulumi.Input<String> scope;

  /// Creates a new [GetResourcesSearchAllArgs].
  /// [assetTypes] A list of asset types that this request searches for. If empty, it will search all the [supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types).
  /// [query] The query statement. See [how to construct a query](https://cloud.google.com/asset-inventory/docs/searching-resources#how_to_construct_a_query) for more information. If not specified or empty, it will search all the resources within the specified `scope` and `asset_types`.
  /// [scope] A scope can be a project, a folder, or an organization. The allowed value must be: organization number (such as "organizations/123"), folder number (such as "folders/1234"), project number (such as "projects/12345") or project id (such as "projects/abc")
  GetResourcesSearchAllArgs({
    List<String>? assetTypes,
    String? query,
    required String scope,
  })  : assetTypes = pulumi.Input.asOptionalInput<List<String>>(assetTypes),
        query = pulumi.Input.asOptionalInput<String>(query),
        scope = pulumi.Input.asInput<String>(scope);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assetTypesValue = assetTypes;
    if (assetTypesValue != null) {
      map['assetTypes'] = assetTypesValue;
    }
    final queryValue = query;
    if (queryValue != null) {
      map['query'] = queryValue;
    }
    map['scope'] = scope;
    return map;
  }

  factory GetResourcesSearchAllArgs.fromMap(Map<String, dynamic> map) {
    return GetResourcesSearchAllArgs(
      assetTypes: map['assetTypes'] == null
          ? null
          : (map['assetTypes'] as List).cast<String>(),
      query: map['query'] == null ? null : map['query'] as String,
      scope: map['scope'] as String,
    );
  }
}
