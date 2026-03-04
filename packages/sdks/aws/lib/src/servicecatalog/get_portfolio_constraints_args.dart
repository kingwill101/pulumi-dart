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
    this.acceptLanguage,
    required this.portfolioId,
    this.productId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'portfolioId': portfolioId,
      'productId': ?productId,
      'region': ?region,
    };
  }

  factory GetPortfolioConstraintsArgs.fromMap(Map<String, dynamic> map) {
    return GetPortfolioConstraintsArgs(
      acceptLanguage: (() {
        final guardedValue = map['acceptLanguage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      portfolioId: pulumi.Input.fromValue(map['portfolioId'] as String),
      productId: (() {
        final guardedValue = map['productId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
