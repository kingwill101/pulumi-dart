// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getResourcesSearchAll.
class GetResourcesSearchAllArgs {
  /// A list of asset types that this request searches for. If empty, it will search all the [supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types).
  final Input<List<String>>? assetTypes;

  /// The query statement. See [how to construct a query](https://cloud.google.com/asset-inventory/docs/searching-resources#how_to_construct_a_query) for more information. If not specified or empty, it will search all the resources within the specified <span pulumi-lang-nodejs="`scope`" pulumi-lang-dotnet="`Scope`" pulumi-lang-go="`scope`" pulumi-lang-python="`scope`" pulumi-lang-yaml="`scope`" pulumi-lang-java="`scope`">`scope`</span> and <span pulumi-lang-nodejs="`assetTypes`" pulumi-lang-dotnet="`AssetTypes`" pulumi-lang-go="`assetTypes`" pulumi-lang-python="`asset_types`" pulumi-lang-yaml="`assetTypes`" pulumi-lang-java="`assetTypes`">`asset_types`</span>.
  final Input<String>? query;

  /// A scope can be a project, a folder, or an organization. The allowed value must be: organization number (such as "organizations/123"), folder number (such as "folders/1234"), project number (such as "projects/12345") or project id (such as "projects/abc")
  final Input<String> scope;

  GetResourcesSearchAllArgs({
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

  factory GetResourcesSearchAllArgs.fromMap(Map<String, dynamic> map) {
    return GetResourcesSearchAllArgs(
      assetTypes: Input.asOptionalInput<List<String>>(map['assetTypes']),
      query: Input.asOptionalInput<String>(map['query']),
      scope: Input.asInput<String>(map['scope']),
    );
  }
}
