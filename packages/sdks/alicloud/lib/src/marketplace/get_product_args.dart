// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_marketplace_get_product_get_product_args_doc}
/// Arguments for getProduct.
/// {@endtemplate}
/// {@macro pulumi_marketplace_get_product_get_product_args_doc}
class GetProductArgs {
  /// A available region id used to filter market place Ecs images.
  final pulumi.Input<String>? availableRegion;

  /// The product code of the market product.
  final pulumi.Input<String> productCode;

  /// Creates a new [GetProductArgs].
  /// [availableRegion] A available region id used to filter market place Ecs images.
  /// [productCode] The product code of the market product.
  GetProductArgs({this.availableRegion, required this.productCode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableRegion': ?availableRegion,
      'productCode': productCode,
    };
  }

  factory GetProductArgs.fromMap(Map<String, dynamic> map) {
    return GetProductArgs(
      availableRegion: (() {
        final guardedValue = map['availableRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productCode: pulumi.Input.fromValue(map['productCode'] as String),
    );
  }
}
