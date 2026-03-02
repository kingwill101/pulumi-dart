// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOpenApiProductsProduct {
  /// The ID of the product. The value is formulated as `<product_code>:<product_type>:<subscription_type>`.
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
  /// [id] The ID of the product. The value is formulated as `<product_code>:<product_type>:<subscription_type>`.
  /// [productCode] Product code.
  /// [productName] Product name.
  /// [productType] Type of product.
  /// [subscriptionType] Subscription type. Value:
  GetOpenApiProductsProduct({
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
      id: (map['id'] as String).input(),
      productCode: (map['productCode'] as String).input(),
      productName: (map['productName'] as String).input(),
      productType: (map['productType'] as String).input(),
      subscriptionType: (map['subscriptionType'] as String).input(),
    );
  }
}

