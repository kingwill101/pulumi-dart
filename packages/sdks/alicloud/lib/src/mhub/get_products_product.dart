// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProductsProduct {
  /// The ID of the Product.
  final pulumi.Input<String> id;

  /// The ID of the Product.
  final pulumi.Input<String> productId;

  /// The name of the Product.
  final pulumi.Input<String> productName;

  /// Creates a new [GetProductsProduct].
  /// [id] The ID of the Product.
  /// [productId] The ID of the Product.
  /// [productName] The name of the Product.
  GetProductsProduct({
    required this.id,
    required this.productId,
    required this.productName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'productId': productId,
      'productName': productName,
    };
  }

  factory GetProductsProduct.fromMap(Map<String, dynamic> map) {
    return GetProductsProduct(
      id: pulumi.Input.fromValue(map['id'] as String),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      productName: pulumi.Input.fromValue(map['productName'] as String),
    );
  }
}
