// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPortfolioConstraints.
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

  GetPortfolioConstraintsArgs({
    this.acceptLanguage,
    required this.portfolioId,
    this.productId,
    this.region,
  });

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
      acceptLanguage:
          pulumi.Input.asOptionalInput<String>(map['acceptLanguage']),
      portfolioId: pulumi.Input.asInput<String>(map['portfolioId']),
      productId: pulumi.Input.asOptionalInput<String>(map['productId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
