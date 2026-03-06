// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_provisioned_products_product_output.dart';
import 'get_provisioned_products_product_parameter.dart';

class GetProvisionedProductsProduct {
  /// The creation time of the product instance
  final pulumi.Input<String> createTime;
  final pulumi.Input<String> id;
  /// The ID of the last instance operation task
  final pulumi.Input<String> lastProvisioningTaskId;
  /// The ID of the last successful instance operation task
  final pulumi.Input<String> lastSuccessfulProvisioningTaskId;
  /// The ID of the last task
  final pulumi.Input<String> lastTaskId;
  final pulumi.Input<List<GetProvisionedProductsProductOutput>> outputs;
  /// The RAM entity ID of the owner
  final pulumi.Input<String> ownerPrincipalId;
  /// The RAM entity type of the owner
  final pulumi.Input<String> ownerPrincipalType;
  final pulumi.Input<List<GetProvisionedProductsProductParameter>> parameters;
  /// Product mix ID.&gt; When there is a default Startup option, there is no need to fill in the portfolio. When there is no default Startup option, you must fill in the portfolio.
  final pulumi.Input<String> portfolioId;
  /// Product ID.
  final pulumi.Input<String> productId;
  /// The name of the product
  final pulumi.Input<String> productName;
  /// Product version ID.
  final pulumi.Input<String> productVersionId;
  /// The name of the product version
  final pulumi.Input<String> productVersionName;
  /// The ARN of the product instance
  final pulumi.Input<String> provisionedProductArn;
  /// The ID of the instance.
  final pulumi.Input<String> provisionedProductId;
  /// The name of the instance.The length is 1~128 characters.
  final pulumi.Input<String> provisionedProductName;
  /// Instance type.The value is RosStack, which indicates the stack of Alibaba Cloud resource orchestration service (ROS).
  final pulumi.Input<String> provisionedProductType;
  /// The ID of the ROS stack
  final pulumi.Input<String> stackId;
  /// The ID of the region to which the resource stack of the Alibaba Cloud resource orchestration service (ROS) belongs.
  final pulumi.Input<String> stackRegionId;
  /// Instance status
  final pulumi.Input<String> status;
  /// The status message of the product instance
  final pulumi.Input<String> statusMessage;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetProvisionedProductsProduct].
  /// [createTime] The creation time of the product instance
  /// [id] Required.
  /// [lastProvisioningTaskId] The ID of the last instance operation task
  /// [lastSuccessfulProvisioningTaskId] The ID of the last successful instance operation task
  /// [lastTaskId] The ID of the last task
  /// [outputs] Required.
  /// [ownerPrincipalId] The RAM entity ID of the owner
  /// [ownerPrincipalType] The RAM entity type of the owner
  /// [parameters] Required.
  /// [portfolioId] Product mix ID.&gt; When there is a default Startup option, there is no need to fill in the portfolio. When there is no default Startup option, you must fill in the portfolio.
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
  const GetProvisionedProductsProduct({
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
      'outputs': pulumi.Input.mapInputValue<List<GetProvisionedProductsProductOutput>, List<Map<String, dynamic>>>(outputs, (value) => pulumi.Input.encodeList<GetProvisionedProductsProductOutput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ownerPrincipalId': ownerPrincipalId,
      'ownerPrincipalType': ownerPrincipalType,
      'parameters': pulumi.Input.mapInputValue<List<GetProvisionedProductsProductParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GetProvisionedProductsProductParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
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

  factory GetProvisionedProductsProduct.fromMap(Map<String, dynamic> map) {
    return GetProvisionedProductsProduct(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastProvisioningTaskId: pulumi.Input.fromValue(map['lastProvisioningTaskId'] as String),
      lastSuccessfulProvisioningTaskId: pulumi.Input.fromValue(map['lastSuccessfulProvisioningTaskId'] as String),
      lastTaskId: pulumi.Input.fromValue(map['lastTaskId'] as String),
      outputs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetProvisionedProductsProductOutput>(map['outputs']!, (value) => GetProvisionedProductsProductOutput.fromMap((value as Map).cast<String, dynamic>()))),
      ownerPrincipalId: pulumi.Input.fromValue(map['ownerPrincipalId'] as String),
      ownerPrincipalType: pulumi.Input.fromValue(map['ownerPrincipalType'] as String),
      parameters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetProvisionedProductsProductParameter>(map['parameters']!, (value) => GetProvisionedProductsProductParameter.fromMap((value as Map).cast<String, dynamic>()))),
      portfolioId: pulumi.Input.fromValue(map['portfolioId'] as String),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      productName: pulumi.Input.fromValue(map['productName'] as String),
      productVersionId: pulumi.Input.fromValue(map['productVersionId'] as String),
      productVersionName: pulumi.Input.fromValue(map['productVersionName'] as String),
      provisionedProductArn: pulumi.Input.fromValue(map['provisionedProductArn'] as String),
      provisionedProductId: pulumi.Input.fromValue(map['provisionedProductId'] as String),
      provisionedProductName: pulumi.Input.fromValue(map['provisionedProductName'] as String),
      provisionedProductType: pulumi.Input.fromValue(map['provisionedProductType'] as String),
      stackId: pulumi.Input.fromValue(map['stackId'] as String),
      stackRegionId: pulumi.Input.fromValue(map['stackRegionId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusMessage: pulumi.Input.fromValue(map['statusMessage'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

