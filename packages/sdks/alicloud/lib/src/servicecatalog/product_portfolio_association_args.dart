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
    required pulumi.Output<String> portfolioId,
    required pulumi.Output<String> productId,
  }) :
      portfolioId = pulumi.Input.asInput<String>(portfolioId),
      productId = pulumi.Input.asInput<String>(productId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portfolioId': portfolioId,
      'productId': productId,
    };
  }

  factory ProductPortfolioAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ProductPortfolioAssociationArgs(
      portfolioId: pulumi.Output.create<String>(map['portfolioId'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
    );
  }
}

