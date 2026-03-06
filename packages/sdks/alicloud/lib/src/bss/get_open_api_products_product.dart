// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOpenApiProductsProduct {
  /// The ID of the product. The value is formulated as `&lt;product_code&gt;:&lt;product_type&gt;:&lt;subscription_type&gt;`.
  final pulumi.Input<String> id;
  /// Product code.
  final pulumi.Input<String> productCode;
  /// Product name.
  final pulumi.Input<String> productName;
  /// Type of product.
  final pulumi.Input<String> productType;
  /// Subscription type. Value:
  /// * Subscription: Prepaid.
  /// * PayAsYouGo: postpaid.
  final pulumi.Input<String> subscriptionType;

  /// Creates a new [GetOpenApiProductsProduct].
  /// [id] The ID of the product. The value is formulated as `&lt;product_code&gt;:&lt;product_type&gt;:&lt;subscription_type&gt;`.
  /// [productCode] Product code.
  /// [productName] Product name.
  /// [productType] Type of product.
  /// [subscriptionType] Subscription type. Value:
  const GetOpenApiProductsProduct({
    required this.id,
    required this.productCode,
    required this.productName,
    required this.productType,
    required this.subscriptionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'productCode': productCode,
      'productName': productName,
      'productType': productType,
      'subscriptionType': subscriptionType,
    };
  }

  factory GetOpenApiProductsProduct.fromMap(Map<String, dynamic> map) {
    return GetOpenApiProductsProduct(
      id: pulumi.Input.fromValue(map['id'] as String),
      productCode: pulumi.Input.fromValue(map['productCode'] as String),
      productName: pulumi.Input.fromValue(map['productName'] as String),
      productType: pulumi.Input.fromValue(map['productType'] as String),
      subscriptionType: pulumi.Input.fromValue(map['subscriptionType'] as String),
    );
  }
}

