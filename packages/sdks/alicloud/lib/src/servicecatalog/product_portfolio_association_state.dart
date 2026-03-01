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
    pulumi.Output<String>? portfolioId,
    pulumi.Output<String>? productId,
  }) :
      portfolioId = pulumi.Input.asOptionalInput<String>(portfolioId),
      productId = pulumi.Input.asOptionalInput<String>(productId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portfolioId': ?portfolioId,
      'productId': ?productId,
    };
  }

  factory ProductPortfolioAssociationState.fromMap(Map<String, dynamic> map) {
    return ProductPortfolioAssociationState(
      portfolioId: map['portfolioId'] == null ? null : pulumi.Output.create<String>(map['portfolioId'] as String),
      productId: map['productId'] == null ? null : pulumi.Output.create<String>(map['productId'] as String),
    );
  }
}

