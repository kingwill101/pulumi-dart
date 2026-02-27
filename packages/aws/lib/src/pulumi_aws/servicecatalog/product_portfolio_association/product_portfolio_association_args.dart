// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ProductPortfolioAssociation.
class ProductPortfolioAssociationArgs {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  final Input<String>? acceptLanguage;

  /// Portfolio identifier.
  final Input<String> portfolioId;

  /// Product identifier.
  ///
  /// The following arguments are optional:
  final Input<String> productId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Identifier of the source portfolio.
  final Input<String>? sourcePortfolioId;

  ProductPortfolioAssociationArgs({
    this.acceptLanguage,
    required this.portfolioId,
    required this.productId,
    this.region,
    this.sourcePortfolioId,
  });

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
      acceptLanguage: Input.asOptionalInput<String>(map['acceptLanguage']),
      portfolioId: Input.asInput<String>(map['portfolioId']),
      productId: Input.asInput<String>(map['productId']),
      region: Input.asOptionalInput<String>(map['region']),
      sourcePortfolioId:
          Input.asOptionalInput<String>(map['sourcePortfolioId']),
    );
  }
}
