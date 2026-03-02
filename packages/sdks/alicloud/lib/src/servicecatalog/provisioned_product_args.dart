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
  /// Product mix ID.> When there is a default Startup option, there is no need to fill in the portfolio. When there is no default Startup option, you must fill in the portfolio.
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
  /// [portfolioId] Product mix ID.> When there is a default Startup option, there is no need to fill in the portfolio. When there is no default Startup option, you must fill in the portfolio.
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
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<ProvisionedProductParameter>(map['parameters']!, (value) => ProvisionedProductParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      portfolioId: map['portfolioId'] == null ? null : (map['portfolioId']! as String).input(),
      productId: (map['productId'] as String).input(),
      productVersionId: (map['productVersionId'] as String).input(),
      provisionedProductId: map['provisionedProductId'] == null ? null : (map['provisionedProductId']! as String).input(),
      provisionedProductName: (map['provisionedProductName'] as String).input(),
      stackRegionId: (map['stackRegionId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

