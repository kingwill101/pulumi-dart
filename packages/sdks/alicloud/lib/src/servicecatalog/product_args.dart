// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_product_product_args_doc}
/// The set of arguments for Product.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_product_product_args_doc}
class ProductArgs {
  /// The description of the product
  final pulumi.Input<String>? description;
  /// The name of the product
  final pulumi.Input<String> productName;
  /// The type of the product
  final pulumi.Input<String> productType;
  /// The provider name of the product
  final pulumi.Input<String> providerName;

  /// Creates a new [ProductArgs].
  /// [description] The description of the product
  /// [productName] The name of the product
  /// [productType] The type of the product
  /// [providerName] The provider name of the product
  ProductArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> productName,
    required pulumi.Output<String> productType,
    required pulumi.Output<String> providerName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      productName = pulumi.Input.asInput<String>(productName),
      productType = pulumi.Input.asInput<String>(productType),
      providerName = pulumi.Input.asInput<String>(providerName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'productName': productName,
      'productType': productType,
      'providerName': providerName,
    };
  }

  factory ProductArgs.fromMap(Map<String, dynamic> map) {
    return ProductArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      productName: pulumi.Output.create<String>(map['productName'] as String),
      productType: pulumi.Output.create<String>(map['productType'] as String),
      providerName: pulumi.Output.create<String>(map['providerName'] as String),
    );
  }
}

