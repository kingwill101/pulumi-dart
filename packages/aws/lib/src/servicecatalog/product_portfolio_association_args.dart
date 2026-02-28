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
    String? acceptLanguage,
    required String portfolioId,
    required String productId,
    String? region,
    String? sourcePortfolioId,
  })  : acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
        portfolioId = pulumi.Input.asInput<String>(portfolioId),
        productId = pulumi.Input.asInput<String>(productId),
        region = pulumi.Input.asOptionalInput<String>(region),
        sourcePortfolioId =
            pulumi.Input.asOptionalInput<String>(sourcePortfolioId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceptLanguageValue = acceptLanguage;
    if (acceptLanguageValue != null) {
      map['acceptLanguage'] = acceptLanguageValue;
    }
    map['portfolioId'] = portfolioId;
    map['productId'] = productId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sourcePortfolioIdValue = sourcePortfolioId;
    if (sourcePortfolioIdValue != null) {
      map['sourcePortfolioId'] = sourcePortfolioIdValue;
    }
    return map;
  }

  factory ProductPortfolioAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ProductPortfolioAssociationArgs(
      acceptLanguage: map['acceptLanguage'] == null
          ? null
          : map['acceptLanguage'] as String,
      portfolioId: map['portfolioId'] as String,
      productId: map['productId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      sourcePortfolioId: map['sourcePortfolioId'] == null
          ? null
          : map['sourcePortfolioId'] as String,
    );
  }
}
