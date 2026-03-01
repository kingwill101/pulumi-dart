// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_product_graphql_operation_group_operation_config.dart';

class ApiProductGraphqlOperationGroup {
  /// Flag that specifes whether the configuration is for Apigee API proxy or a remote service. Valid values include proxy or remoteservice. Defaults to proxy. Set to proxy when Apigee API proxies are associated with the API product. Set to remoteservice when non-Apigee proxies like Istio-Envoy are associated with the API product.
  /// Possible values are: `proxy`, `remoteservice`.
  final String? operationConfigType;

  /// List of graphQL operation configuration details associated with Apigee API proxies or remote services. Remote services are non-Apigee proxies, such as Istio-Envoy.
  /// Structure is documented below.
  final List<ApiProductGraphqlOperationGroupOperationConfig>? operationConfigs;

  /// Creates a new [ApiProductGraphqlOperationGroup].
  /// [operationConfigType] Flag that specifes whether the configuration is for Apigee API proxy or a remote service. Valid values include proxy or remoteservice. Defaults to proxy. Set to proxy when Apigee API proxies are associated with the API product. Set to remoteservice when non-Apigee proxies like Istio-Envoy are associated with the API product.
  /// [operationConfigs] List of graphQL operation configuration details associated with Apigee API proxies or remote services. Remote services are non-Apigee proxies, such as Istio-Envoy.
  ApiProductGraphqlOperationGroup({
    this.operationConfigType,
    this.operationConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationConfigType': ?operationConfigType,
      'operationConfigs': ?operationConfigs == null
          ? null
          : pulumi.Input.encodeList<
              ApiProductGraphqlOperationGroupOperationConfig,
              Map<String, dynamic>
            >(operationConfigs!, (value) => value.toMap()),
    };
  }

  factory ApiProductGraphqlOperationGroup.fromMap(Map<String, dynamic> map) {
    return ApiProductGraphqlOperationGroup(
      operationConfigType: map['operationConfigType'] == null
          ? null
          : map['operationConfigType'] as String,
      operationConfigs: map['operationConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              ApiProductGraphqlOperationGroupOperationConfig
            >(
              map['operationConfigs'],
              (value) => ApiProductGraphqlOperationGroupOperationConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
