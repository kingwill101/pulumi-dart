// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the gallery image definition purchase plan. This is used by marketplace images.
class ImagePurchasePlan {
  /// The plan ID.
  final pulumi.Input<String>? name;
  /// The product ID.
  final pulumi.Input<String>? product;
  /// The publisher ID.
  final pulumi.Input<String>? publisher;

  /// Creates a new [ImagePurchasePlan].
  /// [name] The plan ID.
  /// [product] The product ID.
  /// [publisher] The publisher ID.
  ImagePurchasePlan({
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

  factory ImagePurchasePlan.fromMap(Map<String, dynamic> map) {
    return ImagePurchasePlan(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      product: map['product'] == null ? null : (map['product']! as String).input(),
      publisher: map['publisher'] == null ? null : (map['publisher']! as String).input(),
    );
  }
}

