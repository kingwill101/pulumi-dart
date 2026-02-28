// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_get_portfolio_get_portfolio_args_doc}
/// Arguments for getPortfolio.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_get_portfolio_get_portfolio_args_doc}
class GetPortfolioArgs {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  final pulumi.Input<String>? acceptLanguage;

  /// Portfolio identifier.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Tags applied to the portfolio.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetPortfolioArgs].
  /// [acceptLanguage] Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  /// [id] Portfolio identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags applied to the portfolio.
  GetPortfolioArgs({
    String? acceptLanguage,
    required String id,
    String? region,
    Map<String, String>? tags,
  })  : acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
        id = pulumi.Input.asInput<String>(id),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceptLanguageValue = acceptLanguage;
    if (acceptLanguageValue != null) {
      map['acceptLanguage'] = acceptLanguageValue;
    }
    map['id'] = id;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetPortfolioArgs.fromMap(Map<String, dynamic> map) {
    return GetPortfolioArgs(
      acceptLanguage: map['acceptLanguage'] == null
          ? null
          : map['acceptLanguage'] as String,
      id: map['id'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
