// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_product_operation_group_operation_config_attribute.dart';
import 'api_product_operation_group_operation_config_operation.dart';
import 'api_product_operation_group_operation_config_quota.dart';

class ApiProductOperationGroupOperationConfig {
  /// Required. Name of the API proxy with which the gRPC operation and quota are associated.
  final String? apiSource;
  /// Custom attributes associated with the operation.
  /// Structure is documented below.
  final List<ApiProductOperationGroupOperationConfigAttribute>? attributes;
  /// Required. List of GraphQL name/operation type pairs for the proxy or remote service to which quota will be applied. If only operation types are specified, the quota will be applied to all GraphQL requests irrespective of the GraphQL name.
  /// Note: Currently, you can specify only a single GraphQLOperation. Specifying more than one will cause the operation to fail.
  /// Structure is documented below.
  final List<ApiProductOperationGroupOperationConfigOperation>? operations;
  /// Quota parameters to be enforced for the resources, methods, and API source combination. If none are specified, quota enforcement will not be done.
  /// Structure is documented below.
  final ApiProductOperationGroupOperationConfigQuota? quota;

  /// Creates a new [ApiProductOperationGroupOperationConfig].
  /// [apiSource] Required. Name of the API proxy with which the gRPC operation and quota are associated.
  /// [attributes] Custom attributes associated with the operation.
  /// [operations] Required. List of GraphQL name/operation type pairs for the proxy or remote service to which quota will be applied. If only operation types are specified, the quota will be applied to all GraphQL requests irrespective of the GraphQL name.
  /// [quota] Quota parameters to be enforced for the resources, methods, and API source combination. If none are specified, quota enforcement will not be done.
  ApiProductOperationGroupOperationConfig({
    this.apiSource,
    this.attributes,
    this.operations,
    this.quota,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiSource': ?apiSource,
      'attributes': ?attributes == null ? null : pulumi.Input.encodeList<ApiProductOperationGroupOperationConfigAttribute, Map<String, dynamic>>(attributes!, (value) => value.toMap()),
      'operations': ?operations == null ? null : pulumi.Input.encodeList<ApiProductOperationGroupOperationConfigOperation, Map<String, dynamic>>(operations!, (value) => value.toMap()),
      'quota': ?quota == null ? null : quota!.toMap(),
    };
  }

  factory ApiProductOperationGroupOperationConfig.fromMap(Map<String, dynamic> map) {
    return ApiProductOperationGroupOperationConfig(
      apiSource: map['apiSource'] == null ? null : map['apiSource'] as String,
      attributes: map['attributes'] == null ? null : pulumi.Input.decodeList<ApiProductOperationGroupOperationConfigAttribute>(map['attributes'], (value) => ApiProductOperationGroupOperationConfigAttribute.fromMap((value as Map).cast<String, dynamic>())),
      operations: map['operations'] == null ? null : pulumi.Input.decodeList<ApiProductOperationGroupOperationConfigOperation>(map['operations'], (value) => ApiProductOperationGroupOperationConfigOperation.fromMap((value as Map).cast<String, dynamic>())),
      quota: map['quota'] == null ? null : ApiProductOperationGroupOperationConfigQuota.fromMap((map['quota'] as Map).cast<String, dynamic>()),
    );
  }
}

