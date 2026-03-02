// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioned_product_output.dart';
import 'provisioned_product_parameter.dart';

/// Input properties used for looking up and filtering ProvisionedProduct resources.
class ProvisionedProductState {
  /// The creation time of the product instance
  final pulumi.Input<String>? createTime;
  /// The ID of the last instance operation task
  final pulumi.Input<String>? lastProvisioningTaskId;
  /// The ID of the last successful instance operation task
  final pulumi.Input<String>? lastSuccessfulProvisioningTaskId;
  /// The ID of the last task
  final pulumi.Input<String>? lastTaskId;
  /// The output value of the template.
  final pulumi.Input<List<ProvisionedProductOutput>>? outputs;
  /// The RAM entity ID of the owner
  final pulumi.Input<String>? ownerPrincipalId;
  /// The RAM entity type of the owner
  final pulumi.Input<String>? ownerPrincipalType;
  /// Template parameters entered by the user.The maximum value of N is 200.See the following `Block Parameters`.
  final pulumi.Input<List<ProvisionedProductParameter>>? parameters;
  /// Product mix ID.> When there is a default Startup option, there is no need to fill in the portfolio. When there is no default Startup option, you must fill in the portfolio.
  final pulumi.Input<String>? portfolioId;
  /// Product ID.
  final pulumi.Input<String>? productId;
  /// The name of the product
  final pulumi.Input<String>? productName;
  /// Product version ID.
  final pulumi.Input<String>? productVersionId;
  /// The name of the product version
  final pulumi.Input<String>? productVersionName;
  /// The ARN of the product instance
  final pulumi.Input<String>? provisionedProductArn;
  /// The ID of the instance.
  final pulumi.Input<String>? provisionedProductId;
  /// The name of the instance.The length is 1~128 characters.
  final pulumi.Input<String>? provisionedProductName;
  /// Instance type.The value is RosStack, which indicates the stack of Alibaba Cloud resource orchestration service (ROS).
  final pulumi.Input<String>? provisionedProductType;
  /// The ID of the ROS stack
  final pulumi.Input<String>? stackId;
  /// The ID of the region to which the resource stack of the Alibaba Cloud resource orchestration service (ROS) belongs.
  final pulumi.Input<String>? stackRegionId;
  /// Instance status
  final pulumi.Input<String>? status;
  /// The status message of the product instance
  final pulumi.Input<String>? statusMessage;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProvisionedProductState].
  /// [createTime] The creation time of the product instance
  /// [lastProvisioningTaskId] The ID of the last instance operation task
  /// [lastSuccessfulProvisioningTaskId] The ID of the last successful instance operation task
  /// [lastTaskId] The ID of the last task
  /// [outputs] The output value of the template.
  /// [ownerPrincipalId] The RAM entity ID of the owner
  /// [ownerPrincipalType] The RAM entity type of the owner
  /// [parameters] Template parameters entered by the user.The maximum value of N is 200.See the following `Block Parameters`.
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
  /// [tags] A mapping of tags to assign to the resource.
  ProvisionedProductState({
    this.createTime,
    this.lastProvisioningTaskId,
    this.lastSuccessfulProvisioningTaskId,
    this.lastTaskId,
    this.outputs,
    this.ownerPrincipalId,
    this.ownerPrincipalType,
    this.parameters,
    this.portfolioId,
    this.productId,
    this.productName,
    this.productVersionId,
    this.productVersionName,
    this.provisionedProductArn,
    this.provisionedProductId,
    this.provisionedProductName,
    this.provisionedProductType,
    this.stackId,
    this.stackRegionId,
    this.status,
    this.statusMessage,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'lastProvisioningTaskId': ?lastProvisioningTaskId,
      'lastSuccessfulProvisioningTaskId': ?lastSuccessfulProvisioningTaskId,
      'lastTaskId': ?lastTaskId,
      'outputs': ?pulumi.Input.mapOptionalInputValue<List<ProvisionedProductOutput>, List<Map<String, dynamic>>>(outputs, (value) => pulumi.Input.encodeList<ProvisionedProductOutput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ownerPrincipalId': ?ownerPrincipalId,
      'ownerPrincipalType': ?ownerPrincipalType,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ProvisionedProductParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ProvisionedProductParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'portfolioId': ?portfolioId,
      'productId': ?productId,
      'productName': ?productName,
      'productVersionId': ?productVersionId,
      'productVersionName': ?productVersionName,
      'provisionedProductArn': ?provisionedProductArn,
      'provisionedProductId': ?provisionedProductId,
      'provisionedProductName': ?provisionedProductName,
      'provisionedProductType': ?provisionedProductType,
      'stackId': ?stackId,
      'stackRegionId': ?stackRegionId,
      'status': ?status,
      'statusMessage': ?statusMessage,
      'tags': ?tags,
    };
  }

  factory ProvisionedProductState.fromMap(Map<String, dynamic> map) {
    return ProvisionedProductState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      lastProvisioningTaskId: map['lastProvisioningTaskId'] == null ? null : (map['lastProvisioningTaskId'] as String).input(),
      lastSuccessfulProvisioningTaskId: map['lastSuccessfulProvisioningTaskId'] == null ? null : (map['lastSuccessfulProvisioningTaskId'] as String).input(),
      lastTaskId: map['lastTaskId'] == null ? null : (map['lastTaskId'] as String).input(),
      outputs: map['outputs'] == null ? null : (pulumi.Input.decodeList<ProvisionedProductOutput>(map['outputs'], (value) => ProvisionedProductOutput.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ownerPrincipalId: map['ownerPrincipalId'] == null ? null : (map['ownerPrincipalId'] as String).input(),
      ownerPrincipalType: map['ownerPrincipalType'] == null ? null : (map['ownerPrincipalType'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<ProvisionedProductParameter>(map['parameters'], (value) => ProvisionedProductParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      portfolioId: map['portfolioId'] == null ? null : (map['portfolioId'] as String).input(),
      productId: map['productId'] == null ? null : (map['productId'] as String).input(),
      productName: map['productName'] == null ? null : (map['productName'] as String).input(),
      productVersionId: map['productVersionId'] == null ? null : (map['productVersionId'] as String).input(),
      productVersionName: map['productVersionName'] == null ? null : (map['productVersionName'] as String).input(),
      provisionedProductArn: map['provisionedProductArn'] == null ? null : (map['provisionedProductArn'] as String).input(),
      provisionedProductId: map['provisionedProductId'] == null ? null : (map['provisionedProductId'] as String).input(),
      provisionedProductName: map['provisionedProductName'] == null ? null : (map['provisionedProductName'] as String).input(),
      provisionedProductType: map['provisionedProductType'] == null ? null : (map['provisionedProductType'] as String).input(),
      stackId: map['stackId'] == null ? null : (map['stackId'] as String).input(),
      stackRegionId: map['stackRegionId'] == null ? null : (map['stackRegionId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      statusMessage: map['statusMessage'] == null ? null : (map['statusMessage'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

