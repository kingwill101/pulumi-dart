// ignore_for_file: unused_element, unnecessary_cast


class GetOpenApiProductsProduct {
  /// The ID of the product. The value is formulated as `<product_code>:<product_type>:<subscription_type>`.
  final String id;
  /// Product code.
  final String productCode;
  /// Product name.
  final String productName;
  /// Type of product.
  final String productType;
  /// Subscription type. Value:
  /// * Subscription: Prepaid.
  /// * PayAsYouGo: postpaid.
  final String subscriptionType;

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
      id: map['id'] as String,
      productCode: map['productCode'] as String,
      productName: map['productName'] as String,
      productType: map['productType'] as String,
      subscriptionType: map['subscriptionType'] as String,
    );
  }
}

