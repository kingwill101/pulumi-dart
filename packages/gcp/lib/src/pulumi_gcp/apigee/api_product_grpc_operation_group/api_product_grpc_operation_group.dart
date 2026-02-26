// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../api_product_grpc_operation_group_operation_config/api_product_grpc_operation_group_operation_config.dart';

class ApiProductGrpcOperationGroup {
  /// Required. List of operation configurations for either Apigee API proxies that are associated with this API product.
  /// Structure is documented below.
  final List<ApiProductGrpcOperationGroupOperationConfig>? operationConfigs;

  ApiProductGrpcOperationGroup({
    this.operationConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final operationConfigsValue = operationConfigs;
    if (operationConfigsValue != null) {
      map['operationConfigs'] = Input.encodeList<
              ApiProductGrpcOperationGroupOperationConfig,
              Map<String, dynamic>>(
          operationConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ApiProductGrpcOperationGroup.fromMap(Map<String, dynamic> map) {
    return ApiProductGrpcOperationGroup(
      operationConfigs: map['operationConfigs'] == null
          ? null
          : Input.decodeList<ApiProductGrpcOperationGroupOperationConfig>(
              map['operationConfigs'],
              (value) => ApiProductGrpcOperationGroupOperationConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
