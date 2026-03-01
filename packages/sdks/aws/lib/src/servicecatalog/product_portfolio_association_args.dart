// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_product_portfolio_association_product_portfolio_association_args_doc}
/// The set of arguments for ProductPortfolioAssociation.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_product_portfolio_association_product_portfolio_association_args_doc}
class ProductPortfolioAssociationArgs {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  final pulumi.Input<String>? acceptLanguage;
  /// Portfolio identifier.
  final pulumi.Input<String> portfolioId;
  /// Product identifier.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> productId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of the source portfolio.
  final pulumi.Input<String>? sourcePortfolioId;

  /// Creates a new [ProductPortfolioAssociationArgs].
  /// [acceptLanguage] Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  /// [portfolioId] Portfolio identifier.
  /// [productId] Product identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourcePortfolioId] Identifier of the source portfolio.
  ProductPortfolioAssociationArgs({
    pulumi.Output<String>? acceptLanguage,
    required pulumi.Output<String> portfolioId,
    required pulumi.Output<String> productId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? sourcePortfolioId,
  }) :
      acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
      portfolioId = pulumi.Input.asInput<String>(portfolioId),
      productId = pulumi.Input.asInput<String>(productId),
      region = pulumi.Input.asOptionalInput<String>(region),
      sourcePortfolioId = pulumi.Input.asOptionalInput<String>(sourcePortfolioId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'portfolioId': portfolioId,
      'productId': productId,
      'region': ?region,
      'sourcePortfolioId': ?sourcePortfolioId,
    };
  }

  factory ProductPortfolioAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ProductPortfolioAssociationArgs(
      acceptLanguage: map['acceptLanguage'] == null ? null : pulumi.Output.create<String>(map['acceptLanguage'] as String),
      portfolioId: pulumi.Output.create<String>(map['portfolioId'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sourcePortfolioId: map['sourcePortfolioId'] == null ? null : pulumi.Output.create<String>(map['sourcePortfolioId'] as String),
    );
  }
}

