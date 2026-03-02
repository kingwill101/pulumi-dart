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
    this.acceptLanguage,
    required this.portfolioId,
    required this.principalId,
    this.region,
    this.sharePrincipals,
    this.shareTagOptions,
    required this.type,
    this.waitForAcceptance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'portfolioId': portfolioId,
      'principalId': principalId,
      'region': ?region,
      'sharePrincipals': ?sharePrincipals,
      'shareTagOptions': ?shareTagOptions,
      'type': type,
      'waitForAcceptance': ?waitForAcceptance,
    };
  }

  factory PortfolioShareArgs.fromMap(Map<String, dynamic> map) {
    return PortfolioShareArgs(
      acceptLanguage: map['acceptLanguage'] == null ? null : ((map['acceptLanguage'] as String).input()).input(),
      portfolioId: (map['portfolioId'] as String).input(),
      principalId: (map['principalId'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      sharePrincipals: map['sharePrincipals'] == null ? null : ((map['sharePrincipals'] as bool).input()).input(),
      shareTagOptions: map['shareTagOptions'] == null ? null : ((map['shareTagOptions'] as bool).input()).input(),
      type: (map['type'] as String).input(),
      waitForAcceptance: map['waitForAcceptance'] == null ? null : ((map['waitForAcceptance'] as bool).input()).input(),
    );
  }
}

