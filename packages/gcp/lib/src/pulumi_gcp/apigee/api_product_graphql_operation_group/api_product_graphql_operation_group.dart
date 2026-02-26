// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../api_product_graphql_operation_group_operation_config/api_product_graphql_operation_group_operation_config.dart';

class ApiProductGraphqlOperationGroup {
  /// Flag that specifes whether the configuration is for Apigee API proxy or a remote service. Valid values include proxy or remoteservice. Defaults to proxy. Set to proxy when Apigee API proxies are associated with the API product. Set to remoteservice when non-Apigee proxies like Istio-Envoy are associated with the API product.
  /// Possible values are: <span pulumi-lang-nodejs="`proxy`" pulumi-lang-dotnet="`Proxy`" pulumi-lang-go="`proxy`" pulumi-lang-python="`proxy`" pulumi-lang-yaml="`proxy`" pulumi-lang-java="`proxy`">`proxy`</span>, <span pulumi-lang-nodejs="`remoteservice`" pulumi-lang-dotnet="`Remoteservice`" pulumi-lang-go="`remoteservice`" pulumi-lang-python="`remoteservice`" pulumi-lang-yaml="`remoteservice`" pulumi-lang-java="`remoteservice`">`remoteservice`</span>.
  final String? operationConfigType;

  /// List of graphQL operation configuration details associated with Apigee API proxies or remote services. Remote services are non-Apigee proxies, such as Istio-Envoy.
  /// Structure is documented below.
  final List<ApiProductGraphqlOperationGroupOperationConfig>? operationConfigs;

  ApiProductGraphqlOperationGroup({
    this.operationConfigType,
    this.operationConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final operationConfigTypeValue = operationConfigType;
    if (operationConfigTypeValue != null) {
      map['operationConfigType'] = operationConfigTypeValue;
    }
    final operationConfigsValue = operationConfigs;
    if (operationConfigsValue != null) {
      map['operationConfigs'] = Input.encodeList<
              ApiProductGraphqlOperationGroupOperationConfig,
              Map<String, dynamic>>(
          operationConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ApiProductGraphqlOperationGroup.fromMap(Map<String, dynamic> map) {
    return ApiProductGraphqlOperationGroup(
      operationConfigType: map['operationConfigType'] == null
          ? null
          : map['operationConfigType'] as String,
      operationConfigs: map['operationConfigs'] == null
          ? null
          : Input.decodeList<ApiProductGraphqlOperationGroupOperationConfig>(
              map['operationConfigs'],
              (value) => ApiProductGraphqlOperationGroupOperationConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
