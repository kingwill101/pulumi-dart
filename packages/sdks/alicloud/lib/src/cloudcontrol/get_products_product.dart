// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProductsProduct {
  /// The ID of the resource supplied above.
  final pulumi.Input<String> id;
  /// The first ID of the resource
  final pulumi.Input<String> productCode;
  /// The name of the resource
  final pulumi.Input<String> productName;

  /// Creates a new [GetProductsProduct].
  /// [id] The ID of the resource supplied above.
  /// [productCode] The first ID of the resource
  /// [productName] The name of the resource
  GetProductsProduct({
    required this.id,
    required this.productCode,
    required this.productName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'productCode': productCode,
      'productName': productName,
    };
  }

  factory GetProductsProduct.fromMap(Map<String, dynamic> map) {
    return GetProductsProduct(
      id: (map['id'] as String).input(),
      productCode: (map['productCode'] as String).input(),
      productName: (map['productName'] as String).input(),
    );
  }
}

