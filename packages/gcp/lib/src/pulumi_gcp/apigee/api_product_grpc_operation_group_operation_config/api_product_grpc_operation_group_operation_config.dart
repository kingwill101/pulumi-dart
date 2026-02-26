// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../api_product_grpc_operation_group_operation_config_attribute/api_product_grpc_operation_group_operation_config_attribute.dart';
import '../api_product_grpc_operation_group_operation_config_quota/api_product_grpc_operation_group_operation_config_quota.dart';

class ApiProductGrpcOperationGroupOperationConfig {
  /// Required. Name of the API proxy with which the gRPC operation and quota are associated.
  final String? apiSource;

  /// Custom attributes associated with the operation.
  /// Structure is documented below.
  final List<ApiProductGrpcOperationGroupOperationConfigAttribute>? attributes;

  /// List of unqualified gRPC method names for the proxy to which quota will be applied. If this field is empty, the Quota will apply to all operations on the gRPC service defined on the proxy.
  /// Example: Given a proxy that is configured to serve com.petstore.PetService, the methods com.petstore.PetService.ListPets and com.petstore.PetService.GetPet would be specified here as simply ["ListPets", "GetPet"].
  /// Note: Currently, you can specify only a single GraphQLOperation. Specifying more than one will cause the operation to fail.
  final List<String>? methods;

  /// Quota parameters to be enforced for the resources, methods, and API source combination. If none are specified, quota enforcement will not be done.
  /// Structure is documented below.
  final ApiProductGrpcOperationGroupOperationConfigQuota? quota;

  /// Required. gRPC Service name associated to be associated with the API proxy, on which quota rules can be applied upon.
  final String? service;

  ApiProductGrpcOperationGroupOperationConfig({
    this.apiSource,
    this.attributes,
    this.methods,
    this.quota,
    this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiSourceValue = apiSource;
    if (apiSourceValue != null) {
      map['apiSource'] = apiSourceValue;
    }
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = Input.encodeList<
          ApiProductGrpcOperationGroupOperationConfigAttribute,
          Map<String, dynamic>>(attributesValue, (value) => value.toMap());
    }
    final methodsValue = methods;
    if (methodsValue != null) {
      map['methods'] = methodsValue;
    }
    final quotaValue = quota;
    if (quotaValue != null) {
      map['quota'] = quotaValue.toMap();
    }
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    return map;
  }

  factory ApiProductGrpcOperationGroupOperationConfig.fromMap(
      Map<String, dynamic> map) {
    return ApiProductGrpcOperationGroupOperationConfig(
      apiSource: map['apiSource'] == null ? null : map['apiSource'] as String,
      attributes: map['attributes'] == null
          ? null
          : Input.decodeList<
                  ApiProductGrpcOperationGroupOperationConfigAttribute>(
              map['attributes'],
              (value) =>
                  ApiProductGrpcOperationGroupOperationConfigAttribute.fromMap(
                      (value as Map).cast<String, dynamic>())),
      methods: map['methods'] == null
          ? null
          : (map['methods'] as List).cast<String>(),
      quota: map['quota'] == null
          ? null
          : ApiProductGrpcOperationGroupOperationConfigQuota.fromMap(
              (map['quota'] as Map).cast<String, dynamic>()),
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}
