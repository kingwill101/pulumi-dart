// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_product_product.dart';

/// Result data returned by getProduct.
class GetProductResult {
  final String? availableRegion;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String productCode;
  /// A product. It contains the following attributes:
  final List<GetProductProduct> products;

  /// Creates a new [GetProductResult].
  /// [availableRegion] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [productCode] Required.
  /// [products] A product. It contains the following attributes:
  GetProductResult({
    this.availableRegion,
    required this.id,
    required this.productCode,
    required this.products,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableRegion': ?availableRegion,
      'id': id,
      'productCode': productCode,
      'products': pulumi.Input.encodeList<GetProductProduct, Map<String, dynamic>>(products, (value) => value.toMap()),
    };
  }

  factory GetProductResult.fromMap(Map<String, dynamic> map) {
    return GetProductResult(
      availableRegion: (() { final guardedValue = map['availableRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      productCode: map['productCode'] as String,
      products: pulumi.Input.decodeList<GetProductProduct>(map['products']!, (value) => GetProductProduct.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

