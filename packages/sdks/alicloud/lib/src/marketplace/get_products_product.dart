// ignore_for_file: unused_element, unnecessary_cast


class GetProductsProduct {
  /// The Category ID of products.
  final int categoryId;
  /// The code of the product.
  final String code;
  /// The delivery date of the product.
  final String deliveryDate;
  /// The delivery way of the product.
  final String deliveryWay;
  /// The image URL of the product.
  final String imageUrl;
  /// The name of the product.
  final String name;
  /// The operation system of the product.
  final String operationSystem;
  /// The rating information of the product.
  final String score;
  /// The short description of the product.
  final String shortDescription;
  /// The suggested price of the product.
  final String suggestedPrice;
  /// The supplier id of the product.
  final int supplierId;
  /// The supplier name of the product.
  final String supplierName;
  /// The tags of the product.
  final String tags;
  /// The detail page URL of the product.
  final String targetUrl;
  /// The warranty date of the product.
  final String warrantyDate;

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
      categoryId: map['categoryId'] as int,
      code: map['code'] as String,
      deliveryDate: map['deliveryDate'] as String,
      deliveryWay: map['deliveryWay'] as String,
      imageUrl: map['imageUrl'] as String,
      name: map['name'] as String,
      operationSystem: map['operationSystem'] as String,
      score: map['score'] as String,
      shortDescription: map['shortDescription'] as String,
      suggestedPrice: map['suggestedPrice'] as String,
      supplierId: map['supplierId'] as int,
      supplierName: map['supplierName'] as String,
      tags: map['tags'] as String,
      targetUrl: map['targetUrl'] as String,
      warrantyDate: map['warrantyDate'] as String,
    );
  }
}

