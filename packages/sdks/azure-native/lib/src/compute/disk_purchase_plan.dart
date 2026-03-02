// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Used for establishing the purchase context of any 3rd Party artifact through MarketPlace.
class DiskPurchasePlan {
  /// The plan ID.
  final pulumi.Input<String> name;
  /// Specifies the product of the image from the marketplace. This is the same value as Offer under the imageReference element.
  final pulumi.Input<String> product;
  /// The Offer Promotion Code.
  final pulumi.Input<String>? promotionCode;
  /// The publisher ID.
  final pulumi.Input<String> publisher;

  /// Creates a new [DiskPurchasePlan].
  /// [name] The plan ID.
  /// [product] Specifies the product of the image from the marketplace. This is the same value as Offer under the imageReference element.
  /// [promotionCode] The Offer Promotion Code.
  /// [publisher] The publisher ID.
  DiskPurchasePlan({
    required this.name,
    required this.product,
    this.promotionCode,
    required this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'product': product,
      'promotionCode': ?promotionCode,
      'publisher': publisher,
    };
  }

  factory DiskPurchasePlan.fromMap(Map<String, dynamic> map) {
    return DiskPurchasePlan(
      name: (map['name'] as String).input(),
      product: (map['product'] as String).input(),
      promotionCode: map['promotionCode'] == null ? null : (map['promotionCode'] as String).input(),
      publisher: (map['publisher'] as String).input(),
    );
  }
}

