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
    this.description,
    required this.productName,
    required this.productType,
    required this.providerName,
  });

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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productName: pulumi.Input.fromValue(map['productName'] as String),
      productType: pulumi.Input.fromValue(map['productType'] as String),
      providerName: pulumi.Input.fromValue(map['providerName'] as String),
    );
  }
}
