// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProductPortfolioAssociation resources.
class ProductPortfolioAssociationState {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  final pulumi.Input<String>? acceptLanguage;
  /// Portfolio identifier.
  final pulumi.Input<String>? portfolioId;
  /// Product identifier.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? productId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of the source portfolio.
  final pulumi.Input<String>? sourcePortfolioId;

  /// Creates a new [ProductPortfolioAssociationState].
  /// [acceptLanguage] Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  /// [portfolioId] Portfolio identifier.
  /// [productId] Product identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourcePortfolioId] Identifier of the source portfolio.
  ProductPortfolioAssociationState({
    this.acceptLanguage,
    this.portfolioId,
    this.productId,
    this.region,
    this.sourcePortfolioId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'portfolioId': ?portfolioId,
      'productId': ?productId,
      'region': ?region,
      'sourcePortfolioId': ?sourcePortfolioId,
    };
  }

  factory ProductPortfolioAssociationState.fromMap(Map<String, dynamic> map) {
    return ProductPortfolioAssociationState(
      acceptLanguage: map['acceptLanguage'] == null ? null : ((map['acceptLanguage'] as String).input()).input(),
      portfolioId: map['portfolioId'] == null ? null : ((map['portfolioId'] as String).input()).input(),
      productId: map['productId'] == null ? null : ((map['productId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      sourcePortfolioId: map['sourcePortfolioId'] == null ? null : ((map['sourcePortfolioId'] as String).input()).input(),
    );
  }
}

