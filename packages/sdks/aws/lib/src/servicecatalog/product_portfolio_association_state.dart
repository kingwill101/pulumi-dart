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
    pulumi.Output<String>? acceptLanguage,
    pulumi.Output<String>? portfolioId,
    pulumi.Output<String>? productId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? sourcePortfolioId,
  }) :
      acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
      portfolioId = pulumi.Input.asOptionalInput<String>(portfolioId),
      productId = pulumi.Input.asOptionalInput<String>(productId),
      region = pulumi.Input.asOptionalInput<String>(region),
      sourcePortfolioId = pulumi.Input.asOptionalInput<String>(sourcePortfolioId);

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
      acceptLanguage: map['acceptLanguage'] == null ? null : pulumi.Output.create<String>(map['acceptLanguage'] as String),
      portfolioId: map['portfolioId'] == null ? null : pulumi.Output.create<String>(map['portfolioId'] as String),
      productId: map['productId'] == null ? null : pulumi.Output.create<String>(map['productId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sourcePortfolioId: map['sourcePortfolioId'] == null ? null : pulumi.Output.create<String>(map['sourcePortfolioId'] as String),
    );
  }
}

