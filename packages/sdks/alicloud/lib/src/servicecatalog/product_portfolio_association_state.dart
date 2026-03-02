// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProductPortfolioAssociation resources.
class ProductPortfolioAssociationState {
  /// Product Portfolio ID
  final pulumi.Input<String>? portfolioId;
  /// Product ID
  final pulumi.Input<String>? productId;

  /// Creates a new [ProductPortfolioAssociationState].
  /// [portfolioId] Product Portfolio ID
  /// [productId] Product ID
  ProductPortfolioAssociationState({
    this.portfolioId,
    this.productId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portfolioId': ?portfolioId,
      'productId': ?productId,
    };
  }

  factory ProductPortfolioAssociationState.fromMap(Map<String, dynamic> map) {
    return ProductPortfolioAssociationState(
      portfolioId: map['portfolioId'] == null ? null : (map['portfolioId'] as String).input(),
      productId: map['productId'] == null ? null : (map['productId'] as String).input(),
    );
  }
}

