// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSearchAllResources.
class GetSearchAllResourcesArgs {
  /// A list of asset types that this request searches for. If empty, it will search all the [supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types).
  final pulumi.Input<List<String>>? assetTypes;

  /// The query statement. See [how to construct a query](https://cloud.google.com/asset-inventory/docs/searching-resources#how_to_construct_a_query) for more information. If not specified or empty, it will search all the resources within the specified `scope` and `asset_types`.
  final pulumi.Input<String>? query;

  /// A scope can be a project, a folder, or an organization. The search is limited to the resources within the scope. The allowed value must be: organization number (such as "organizations/123"), folder number (such as "folders/1234"), project number (such as "projects/12345") or project id (such as "projects/abc")
  final pulumi.Input<String> scope;

  GetSearchAllResourcesArgs({
    this.assetTypes,
    this.query,
    required this.scope,
  });

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

  factory GetSearchAllResourcesArgs.fromMap(Map<String, dynamic> map) {
    return GetSearchAllResourcesArgs(
      assetTypes: pulumi.Input.asOptionalInput<List<String>>(map['assetTypes']),
      query: pulumi.Input.asOptionalInput<String>(map['query']),
      scope: pulumi.Input.asInput<String>(map['scope']),
    );
  }
}
