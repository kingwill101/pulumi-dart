// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioned_product_parameter.dart';

/// {@template pulumi_servicecatalog_provisioned_product_provisioned_product_args_doc}
/// The set of arguments for ProvisionedProduct.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_provisioned_product_provisioned_product_args_doc}
class ProvisionedProductArgs {
  /// Template parameters entered by the user.The maximum value of N is 200.See the following `Block Parameters`.
  final pulumi.Input<List<ProvisionedProductParameter>>? parameters;
  /// Product mix ID.&gt; When there is a default Startup option, there is no need to fill in the portfolio. When there is no default Startup option, you must fill in the portfolio.
  final pulumi.Input<String>? portfolioId;
  /// Product ID.
  final pulumi.Input<String> productId;
  /// Product version ID.
  final pulumi.Input<String> productVersionId;
  /// The ID of the instance.
  final pulumi.Input<String>? provisionedProductId;
  /// The name of the instance.The length is 1~128 characters.
  final pulumi.Input<String> provisionedProductName;
  /// The ID of the region to which the resource stack of the Alibaba Cloud resource orchestration service (ROS) belongs.
  final pulumi.Input<String> stackRegionId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProvisionedProductArgs].
  /// [parameters] Template parameters entered by the user.The maximum value of N is 200.See the following `Block Parameters`.
  /// [portfolioId] Product mix ID.&gt; When there is a default Startup option, there is no need to fill in the portfolio. When there is no default Startup option, you must fill in the portfolio.
  /// [productId] Product ID.
  /// [productVersionId] Product version ID.
  /// [provisionedProductId] The ID of the instance.
  /// [provisionedProductName] The name of the instance.The length is 1~128 characters.
  /// [stackRegionId] The ID of the region to which the resource stack of the Alibaba Cloud resource orchestration service (ROS) belongs.
  /// [tags] A mapping of tags to assign to the resource.
  ProvisionedProductArgs({
    this.parameters,
    this.portfolioId,
    required this.productId,
    required this.productVersionId,
    this.provisionedProductId,
    required this.provisionedProductName,
    required this.stackRegionId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ProvisionedProductParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ProvisionedProductParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'portfolioId': ?portfolioId,
      'productId': productId,
      'productVersionId': productVersionId,
      'provisionedProductId': ?provisionedProductId,
      'provisionedProductName': provisionedProductName,
      'stackRegionId': stackRegionId,
      'tags': ?tags,
    };
  }

  factory ProvisionedProductArgs.fromMap(Map<String, dynamic> map) {
    return ProvisionedProductArgs(
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProvisionedProductParameter>(guardedValue, (value) => ProvisionedProductParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      portfolioId: (() { final guardedValue = map['portfolioId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      productVersionId: pulumi.Input.fromValue(map['productVersionId'] as String),
      provisionedProductId: (() { final guardedValue = map['provisionedProductId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedProductName: pulumi.Input.fromValue(map['provisionedProductName'] as String),
      stackRegionId: pulumi.Input.fromValue(map['stackRegionId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

