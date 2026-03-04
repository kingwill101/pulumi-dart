// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProductsProduct {
  /// The Category ID of products.
  final pulumi.Input<int> categoryId;

  /// The code of the product.
  final pulumi.Input<String> code;

  /// The delivery date of the product.
  final pulumi.Input<String> deliveryDate;

  /// The delivery way of the product.
  final pulumi.Input<String> deliveryWay;

  /// The image URL of the product.
  final pulumi.Input<String> imageUrl;

  /// The name of the product.
  final pulumi.Input<String> name;

  /// The operation system of the product.
  final pulumi.Input<String> operationSystem;

  /// The rating information of the product.
  final pulumi.Input<String> score;

  /// The short description of the product.
  final pulumi.Input<String> shortDescription;

  /// The suggested price of the product.
  final pulumi.Input<String> suggestedPrice;

  /// The supplier id of the product.
  final pulumi.Input<int> supplierId;

  /// The supplier name of the product.
  final pulumi.Input<String> supplierName;

  /// The tags of the product.
  final pulumi.Input<String> tags;

  /// The detail page URL of the product.
  final pulumi.Input<String> targetUrl;

  /// The warranty date of the product.
  final pulumi.Input<String> warrantyDate;

  /// Creates a new [GetProductsProduct].
  /// [categoryId] The Category ID of products.
  /// [code] The code of the product.
  /// [deliveryDate] The delivery date of the product.
  /// [deliveryWay] The delivery way of the product.
  /// [imageUrl] The image URL of the product.
  /// [name] The name of the product.
  /// [operationSystem] The operation system of the product.
  /// [score] The rating information of the product.
  /// [shortDescription] The short description of the product.
  /// [suggestedPrice] The suggested price of the product.
  /// [supplierId] The supplier id of the product.
  /// [supplierName] The supplier name of the product.
  /// [tags] The tags of the product.
  /// [targetUrl] The detail page URL of the product.
  /// [warrantyDate] The warranty date of the product.
  GetProductsProduct({
    required this.categoryId,
    required this.code,
    required this.deliveryDate,
    required this.deliveryWay,
    required this.imageUrl,
    required this.name,
    required this.operationSystem,
    required this.score,
    required this.shortDescription,
    required this.suggestedPrice,
    required this.supplierId,
    required this.supplierName,
    required this.tags,
    required this.targetUrl,
    required this.warrantyDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryId': categoryId,
      'code': code,
      'deliveryDate': deliveryDate,
      'deliveryWay': deliveryWay,
      'imageUrl': imageUrl,
      'name': name,
      'operationSystem': operationSystem,
      'score': score,
      'shortDescription': shortDescription,
      'suggestedPrice': suggestedPrice,
      'supplierId': supplierId,
      'supplierName': supplierName,
      'tags': tags,
      'targetUrl': targetUrl,
      'warrantyDate': warrantyDate,
    };
  }

  factory GetProductsProduct.fromMap(Map<String, dynamic> map) {
    return GetProductsProduct(
      categoryId: pulumi.Input.fromValue(map['categoryId'] as int),
      code: pulumi.Input.fromValue(map['code'] as String),
      deliveryDate: pulumi.Input.fromValue(map['deliveryDate'] as String),
      deliveryWay: pulumi.Input.fromValue(map['deliveryWay'] as String),
      imageUrl: pulumi.Input.fromValue(map['imageUrl'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      operationSystem: pulumi.Input.fromValue(map['operationSystem'] as String),
      score: pulumi.Input.fromValue(map['score'] as String),
      shortDescription: pulumi.Input.fromValue(
        map['shortDescription'] as String,
      ),
      suggestedPrice: pulumi.Input.fromValue(map['suggestedPrice'] as String),
      supplierId: pulumi.Input.fromValue(map['supplierId'] as int),
      supplierName: pulumi.Input.fromValue(map['supplierName'] as String),
      tags: pulumi.Input.fromValue(map['tags'] as String),
      targetUrl: pulumi.Input.fromValue(map['targetUrl'] as String),
      warrantyDate: pulumi.Input.fromValue(map['warrantyDate'] as String),
    );
  }
}
