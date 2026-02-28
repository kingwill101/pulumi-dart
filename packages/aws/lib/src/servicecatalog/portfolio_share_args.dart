// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_portfolio_share_portfolio_share_args_doc}
/// The set of arguments for PortfolioShare.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_portfolio_share_portfolio_share_args_doc}
class PortfolioShareArgs {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  final pulumi.Input<String>? acceptLanguage;

  /// Portfolio identifier.
  final pulumi.Input<String> portfolioId;

  /// Identifier of the principal with whom you will share the portfolio. Valid values AWS account IDs and ARNs of AWS Organizations and organizational units.
  final pulumi.Input<String> principalId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Enables or disables Principal sharing when creating the portfolio share. If this flag is not provided, principal sharing is disabled.
  final pulumi.Input<bool>? sharePrincipals;

  /// Whether to enable sharing of `aws.servicecatalog.TagOption` resources when creating the portfolio share.
  final pulumi.Input<bool>? shareTagOptions;

  /// Type of portfolio share. Valid values are `ACCOUNT` (an external account), `ORGANIZATION` (a share to every account in an organization), `ORGANIZATIONAL_UNIT`, `ORGANIZATION_MEMBER_ACCOUNT` (a share to an account in an organization).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

  /// Whether to wait (up to the timeout) for the share to be accepted. Organizational shares are automatically accepted.
  final pulumi.Input<bool>? waitForAcceptance;

  /// Creates a new [PortfolioShareArgs].
  /// [acceptLanguage] Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  /// [portfolioId] Portfolio identifier.
  /// [principalId] Identifier of the principal with whom you will share the portfolio. Valid values AWS account IDs and ARNs of AWS Organizations and organizational units.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sharePrincipals] Enables or disables Principal sharing when creating the portfolio share. If this flag is not provided, principal sharing is disabled.
  /// [shareTagOptions] Whether to enable sharing of `aws.servicecatalog.TagOption` resources when creating the portfolio share.
  /// [type] Type of portfolio share. Valid values are `ACCOUNT` (an external account), `ORGANIZATION` (a share to every account in an organization), `ORGANIZATIONAL_UNIT`, `ORGANIZATION_MEMBER_ACCOUNT` (a share to an account in an organization).
  /// [waitForAcceptance] Whether to wait (up to the timeout) for the share to be accepted. Organizational shares are automatically accepted.
  PortfolioShareArgs({
    String? acceptLanguage,
    required String portfolioId,
    required String principalId,
    String? region,
    bool? sharePrincipals,
    bool? shareTagOptions,
    required String type,
    bool? waitForAcceptance,
  })  : acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
        portfolioId = pulumi.Input.asInput<String>(portfolioId),
        principalId = pulumi.Input.asInput<String>(principalId),
        region = pulumi.Input.asOptionalInput<String>(region),
        sharePrincipals = pulumi.Input.asOptionalInput<bool>(sharePrincipals),
        shareTagOptions = pulumi.Input.asOptionalInput<bool>(shareTagOptions),
        type = pulumi.Input.asInput<String>(type),
        waitForAcceptance =
            pulumi.Input.asOptionalInput<bool>(waitForAcceptance);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceptLanguageValue = acceptLanguage;
    if (acceptLanguageValue != null) {
      map['acceptLanguage'] = acceptLanguageValue;
    }
    map['portfolioId'] = portfolioId;
    map['principalId'] = principalId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sharePrincipalsValue = sharePrincipals;
    if (sharePrincipalsValue != null) {
      map['sharePrincipals'] = sharePrincipalsValue;
    }
    final shareTagOptionsValue = shareTagOptions;
    if (shareTagOptionsValue != null) {
      map['shareTagOptions'] = shareTagOptionsValue;
    }
    map['type'] = type;
    final waitForAcceptanceValue = waitForAcceptance;
    if (waitForAcceptanceValue != null) {
      map['waitForAcceptance'] = waitForAcceptanceValue;
    }
    return map;
  }

  factory PortfolioShareArgs.fromMap(Map<String, dynamic> map) {
    return PortfolioShareArgs(
      acceptLanguage: map['acceptLanguage'] == null
          ? null
          : map['acceptLanguage'] as String,
      portfolioId: map['portfolioId'] as String,
      principalId: map['principalId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      sharePrincipals: map['sharePrincipals'] == null
          ? null
          : map['sharePrincipals'] as bool,
      shareTagOptions: map['shareTagOptions'] == null
          ? null
          : map['shareTagOptions'] as bool,
      type: map['type'] as String,
      waitForAcceptance: map['waitForAcceptance'] == null
          ? null
          : map['waitForAcceptance'] as bool,
    );
  }
}
