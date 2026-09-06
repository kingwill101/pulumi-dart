// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the gallery image definition purchase plan. This is used by marketplace images.
class ImagePurchasePlanResponse {
  /// The plan ID.
  final pulumi.Input<String?>? name;
  /// The product ID.
  final pulumi.Input<String?>? product;
  /// The publisher ID.
  final pulumi.Input<String?>? publisher;

  /// Creates a new [ImagePurchasePlanResponse].
  /// [name] The plan ID.
  /// [product] The product ID.
  /// [publisher] The publisher ID.
  const ImagePurchasePlanResponse({
    this.name,
    this.product,
    this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'product': ?product,
      'publisher': ?publisher,
    };
  }

  factory ImagePurchasePlanResponse.fromMap(Map<String, dynamic> map) {
    return ImagePurchasePlanResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      product: (() { final guardedValue = map['product']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
