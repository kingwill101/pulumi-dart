// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_provisioned_products_provisioned_product_output.dart';
import 'get_provisioned_products_provisioned_product_parameter.dart';

class GetProvisionedProductsProvisionedProduct {
  /// The creation time of the product instance
  final String createTime;
  final String id;
  /// The ID of the last instance operation task
  final String lastProvisioningTaskId;
  /// The ID of the last successful instance operation task
  final String lastSuccessfulProvisioningTaskId;
  /// The ID of the last task
  final String lastTaskId;
  final List<GetProvisionedProductsProvisionedProductOutput> outputs;
  /// The RAM entity ID of the owner
  final String ownerPrincipalId;
  /// The RAM entity type of the owner
  final String ownerPrincipalType;
  final List<GetProvisionedProductsProvisionedProductParameter> parameters;
  /// Product mix ID.> When there is a default Startup option, there is no need to fill in the portfolio. When there is no default Startup option, you must fill in the portfolio.
  final String portfolioId;
  /// Product ID.
  final String productId;
  /// The name of the product
  final String productName;
  /// Product version ID.
  final String productVersionId;
  /// The name of the product version
  final String productVersionName;
  /// The ARN of the product instance
  final String provisionedProductArn;
  /// The ID of the instance.
  final String provisionedProductId;
  /// The name of the instance.The length is 1~128 characters.
  final String provisionedProductName;
  /// Instance type.The value is RosStack, which indicates the stack of Alibaba Cloud resource orchestration service (ROS).
  final String provisionedProductType;
  /// The ID of the ROS stack
  final String stackId;
  /// The ID of the region to which the resource stack of the Alibaba Cloud resource orchestration service (ROS) belongs.
  final String stackRegionId;
  /// Instance status
  final String status;
  /// The status message of the product instance
  final String statusMessage;
  final Map<String, String>? tags;

  /// Creates a new [GetProvisionedProductsProvisionedProduct].
  /// [createTime] The creation time of the product instance
  /// [id] Required.
  /// [lastProvisioningTaskId] The ID of the last instance operation task
  /// [lastSuccessfulProvisioningTaskId] The ID of the last successful instance operation task
  /// [lastTaskId] The ID of the last task
  /// [outputs] Required.
  /// [ownerPrincipalId] The RAM entity ID of the owner
  /// [ownerPrincipalType] The RAM entity type of the owner
  /// [parameters] Required.
  /// [portfolioId] Product mix ID.> When there is a default Startup option, there is no need to fill in the portfolio. When there is no default Startup option, you must fill in the portfolio.
  /// [productId] Product ID.
  /// [productName] The name of the product
  /// [productVersionId] Product version ID.
  /// [productVersionName] The name of the product version
  /// [provisionedProductArn] The ARN of the product instance
  /// [provisionedProductId] The ID of the instance.
  /// [provisionedProductName] The name of the instance.The length is 1~128 characters.
  /// [provisionedProductType] Instance type.The value is RosStack, which indicates the stack of Alibaba Cloud resource orchestration service (ROS).
  /// [stackId] The ID of the ROS stack
  /// [stackRegionId] The ID of the region to which the resource stack of the Alibaba Cloud resource orchestration service (ROS) belongs.
  /// [status] Instance status
  /// [statusMessage] The status message of the product instance
  /// [tags] Optional.
  GetProvisionedProductsProvisionedProduct({
    required this.createTime,
    required this.id,
    required this.lastProvisioningTaskId,
    required this.lastSuccessfulProvisioningTaskId,
    required this.lastTaskId,
    required this.outputs,
    required this.ownerPrincipalId,
    required this.ownerPrincipalType,
    required this.parameters,
    required this.portfolioId,
    required this.productId,
    required this.productName,
    required this.productVersionId,
    required this.productVersionName,
    required this.provisionedProductArn,
    required this.provisionedProductId,
    required this.provisionedProductName,
    required this.provisionedProductType,
    required this.stackId,
    required this.stackRegionId,
    required this.status,
    required this.statusMessage,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'id': id,
      'lastProvisioningTaskId': lastProvisioningTaskId,
      'lastSuccessfulProvisioningTaskId': lastSuccessfulProvisioningTaskId,
      'lastTaskId': lastTaskId,
      'outputs': pulumi.Input.encodeList<GetProvisionedProductsProvisionedProductOutput, Map<String, dynamic>>(outputs, (value) => value.toMap()),
      'ownerPrincipalId': ownerPrincipalId,
      'ownerPrincipalType': ownerPrincipalType,
      'parameters': pulumi.Input.encodeList<GetProvisionedProductsProvisionedProductParameter, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'portfolioId': portfolioId,
      'productId': productId,
      'productName': productName,
      'productVersionId': productVersionId,
      'productVersionName': productVersionName,
      'provisionedProductArn': provisionedProductArn,
      'provisionedProductId': provisionedProductId,
      'provisionedProductName': provisionedProductName,
      'provisionedProductType': provisionedProductType,
      'stackId': stackId,
      'stackRegionId': stackRegionId,
      'status': status,
      'statusMessage': statusMessage,
      'tags': ?tags,
    };
  }

  factory GetProvisionedProductsProvisionedProduct.fromMap(Map<String, dynamic> map) {
    return GetProvisionedProductsProvisionedProduct(
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      lastProvisioningTaskId: map['lastProvisioningTaskId'] as String,
      lastSuccessfulProvisioningTaskId: map['lastSuccessfulProvisioningTaskId'] as String,
      lastTaskId: map['lastTaskId'] as String,
      outputs: pulumi.Input.decodeList<GetProvisionedProductsProvisionedProductOutput>(map['outputs'], (value) => GetProvisionedProductsProvisionedProductOutput.fromMap((value as Map).cast<String, dynamic>())),
      ownerPrincipalId: map['ownerPrincipalId'] as String,
      ownerPrincipalType: map['ownerPrincipalType'] as String,
      parameters: pulumi.Input.decodeList<GetProvisionedProductsProvisionedProductParameter>(map['parameters'], (value) => GetProvisionedProductsProvisionedProductParameter.fromMap((value as Map).cast<String, dynamic>())),
      portfolioId: map['portfolioId'] as String,
      productId: map['productId'] as String,
      productName: map['productName'] as String,
      productVersionId: map['productVersionId'] as String,
      productVersionName: map['productVersionName'] as String,
      provisionedProductArn: map['provisionedProductArn'] as String,
      provisionedProductId: map['provisionedProductId'] as String,
      provisionedProductName: map['provisionedProductName'] as String,
      provisionedProductType: map['provisionedProductType'] as String,
      stackId: map['stackId'] as String,
      stackRegionId: map['stackRegionId'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

