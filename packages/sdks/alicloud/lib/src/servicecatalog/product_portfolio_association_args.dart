// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_product_portfolio_association_product_portfolio_association_args_doc}
/// The set of arguments for ProductPortfolioAssociation.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_product_portfolio_association_product_portfolio_association_args_doc}
class ProductPortfolioAssociationArgs {
  /// Product Portfolio ID
  final pulumi.Input<String> portfolioId;

  /// Product ID
  final pulumi.Input<String> productId;

  /// Creates a new [ProductPortfolioAssociationArgs].
  /// [portfolioId] Product Portfolio ID
  /// [productId] Product ID
  ProductPortfolioAssociationArgs({
    required this.portfolioId,
    required this.productId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portfolioId': portfolioId,
      'productId': productId,
    };
  }

  factory ProductPortfolioAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ProductPortfolioAssociationArgs(
      portfolioId: pulumi.Input.fromValue(map['portfolioId'] as String),
      productId: pulumi.Input.fromValue(map['productId'] as String),
    );
  }
}
