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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? lastProvisioningTaskId,
    pulumi.Output<String>? lastSuccessfulProvisioningTaskId,
    pulumi.Output<String>? lastTaskId,
    pulumi.Output<List<ProvisionedProductOutput>>? outputs,
    pulumi.Output<String>? ownerPrincipalId,
    pulumi.Output<String>? ownerPrincipalType,
    pulumi.Output<List<ProvisionedProductParameter>>? parameters,
    pulumi.Output<String>? portfolioId,
    pulumi.Output<String>? productId,
    pulumi.Output<String>? productName,
    pulumi.Output<String>? productVersionId,
    pulumi.Output<String>? productVersionName,
    pulumi.Output<String>? provisionedProductArn,
    pulumi.Output<String>? provisionedProductId,
    pulumi.Output<String>? provisionedProductName,
    pulumi.Output<String>? provisionedProductType,
    pulumi.Output<String>? stackId,
    pulumi.Output<String>? stackRegionId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusMessage,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      lastProvisioningTaskId = pulumi.Input.asOptionalInput<String>(lastProvisioningTaskId),
      lastSuccessfulProvisioningTaskId = pulumi.Input.asOptionalInput<String>(lastSuccessfulProvisioningTaskId),
      lastTaskId = pulumi.Input.asOptionalInput<String>(lastTaskId),
      outputs = pulumi.Input.asOptionalInput<List<ProvisionedProductOutput>>(outputs),
      ownerPrincipalId = pulumi.Input.asOptionalInput<String>(ownerPrincipalId),
      ownerPrincipalType = pulumi.Input.asOptionalInput<String>(ownerPrincipalType),
      parameters = pulumi.Input.asOptionalInput<List<ProvisionedProductParameter>>(parameters),
      portfolioId = pulumi.Input.asOptionalInput<String>(portfolioId),
      productId = pulumi.Input.asOptionalInput<String>(productId),
      productName = pulumi.Input.asOptionalInput<String>(productName),
      productVersionId = pulumi.Input.asOptionalInput<String>(productVersionId),
      productVersionName = pulumi.Input.asOptionalInput<String>(productVersionName),
      provisionedProductArn = pulumi.Input.asOptionalInput<String>(provisionedProductArn),
      provisionedProductId = pulumi.Input.asOptionalInput<String>(provisionedProductId),
      provisionedProductName = pulumi.Input.asOptionalInput<String>(provisionedProductName),
      provisionedProductType = pulumi.Input.asOptionalInput<String>(provisionedProductType),
      stackId = pulumi.Input.asOptionalInput<String>(stackId),
      stackRegionId = pulumi.Input.asOptionalInput<String>(stackRegionId),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusMessage = pulumi.Input.asOptionalInput<String>(statusMessage),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      lastProvisioningTaskId: map['lastProvisioningTaskId'] == null ? null : pulumi.Output.create<String>(map['lastProvisioningTaskId'] as String),
      lastSuccessfulProvisioningTaskId: map['lastSuccessfulProvisioningTaskId'] == null ? null : pulumi.Output.create<String>(map['lastSuccessfulProvisioningTaskId'] as String),
      lastTaskId: map['lastTaskId'] == null ? null : pulumi.Output.create<String>(map['lastTaskId'] as String),
      outputs: map['outputs'] == null ? null : pulumi.Output.create<List<ProvisionedProductOutput>>(pulumi.Input.decodeList<ProvisionedProductOutput>(map['outputs'], (value) => ProvisionedProductOutput.fromMap((value as Map).cast<String, dynamic>()))),
      ownerPrincipalId: map['ownerPrincipalId'] == null ? null : pulumi.Output.create<String>(map['ownerPrincipalId'] as String),
      ownerPrincipalType: map['ownerPrincipalType'] == null ? null : pulumi.Output.create<String>(map['ownerPrincipalType'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<List<ProvisionedProductParameter>>(pulumi.Input.decodeList<ProvisionedProductParameter>(map['parameters'], (value) => ProvisionedProductParameter.fromMap((value as Map).cast<String, dynamic>()))),
      portfolioId: map['portfolioId'] == null ? null : pulumi.Output.create<String>(map['portfolioId'] as String),
      productId: map['productId'] == null ? null : pulumi.Output.create<String>(map['productId'] as String),
      productName: map['productName'] == null ? null : pulumi.Output.create<String>(map['productName'] as String),
      productVersionId: map['productVersionId'] == null ? null : pulumi.Output.create<String>(map['productVersionId'] as String),
      productVersionName: map['productVersionName'] == null ? null : pulumi.Output.create<String>(map['productVersionName'] as String),
      provisionedProductArn: map['provisionedProductArn'] == null ? null : pulumi.Output.create<String>(map['provisionedProductArn'] as String),
      provisionedProductId: map['provisionedProductId'] == null ? null : pulumi.Output.create<String>(map['provisionedProductId'] as String),
      provisionedProductName: map['provisionedProductName'] == null ? null : pulumi.Output.create<String>(map['provisionedProductName'] as String),
      provisionedProductType: map['provisionedProductType'] == null ? null : pulumi.Output.create<String>(map['provisionedProductType'] as String),
      stackId: map['stackId'] == null ? null : pulumi.Output.create<String>(map['stackId'] as String),
      stackRegionId: map['stackRegionId'] == null ? null : pulumi.Output.create<String>(map['stackRegionId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusMessage: map['statusMessage'] == null ? null : pulumi.Output.create<String>(map['statusMessage'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

