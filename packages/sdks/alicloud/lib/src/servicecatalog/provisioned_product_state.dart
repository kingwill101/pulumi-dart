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
  /// Product mix ID.&gt; When there is a default Startup option, there is no need to fill in the portfolio. When there is no default Startup option, you must fill in the portfolio.
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
  /// [tags] A mapping of tags to assign to the resource.
  const ProvisionedProductState({
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastProvisioningTaskId: (() { final guardedValue = map['lastProvisioningTaskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastSuccessfulProvisioningTaskId: (() { final guardedValue = map['lastSuccessfulProvisioningTaskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastTaskId: (() { final guardedValue = map['lastTaskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProvisionedProductOutput>(guardedValue, (value) => ProvisionedProductOutput.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ownerPrincipalId: (() { final guardedValue = map['ownerPrincipalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerPrincipalType: (() { final guardedValue = map['ownerPrincipalType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProvisionedProductParameter>(guardedValue, (value) => ProvisionedProductParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      portfolioId: (() { final guardedValue = map['portfolioId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productId: (() { final guardedValue = map['productId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productName: (() { final guardedValue = map['productName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productVersionId: (() { final guardedValue = map['productVersionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productVersionName: (() { final guardedValue = map['productVersionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedProductArn: (() { final guardedValue = map['provisionedProductArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedProductId: (() { final guardedValue = map['provisionedProductId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedProductName: (() { final guardedValue = map['provisionedProductName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedProductType: (() { final guardedValue = map['provisionedProductType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackId: (() { final guardedValue = map['stackId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackRegionId: (() { final guardedValue = map['stackRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

