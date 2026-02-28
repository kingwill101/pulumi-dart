// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_get_portfolio_constraints_get_portfolio_constraints_args_doc}
/// Arguments for getPortfolioConstraints.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_get_portfolio_constraints_get_portfolio_constraints_args_doc}
class GetPortfolioConstraintsArgs {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  final pulumi.Input<String>? acceptLanguage;

  /// Portfolio identifier.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> portfolioId;

  /// Product identifier.
  final pulumi.Input<String>? productId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetPortfolioConstraintsArgs].
  /// [acceptLanguage] Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  /// [portfolioId] Portfolio identifier.
  /// [productId] Product identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetPortfolioConstraintsArgs({
    String? acceptLanguage,
    required String portfolioId,
    String? productId,
    String? region,
  })  : acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
        portfolioId = pulumi.Input.asInput<String>(portfolioId),
        productId = pulumi.Input.asOptionalInput<String>(productId),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceptLanguageValue = acceptLanguage;
    if (acceptLanguageValue != null) {
      map['acceptLanguage'] = acceptLanguageValue;
    }
    map['portfolioId'] = portfolioId;
    final productIdValue = productId;
    if (productIdValue != null) {
      map['productId'] = productIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetPortfolioConstraintsArgs.fromMap(Map<String, dynamic> map) {
    return GetPortfolioConstraintsArgs(
      acceptLanguage: map['acceptLanguage'] == null
          ? null
          : map['acceptLanguage'] as String,
      portfolioId: map['portfolioId'] as String,
      productId: map['productId'] == null ? null : map['productId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
