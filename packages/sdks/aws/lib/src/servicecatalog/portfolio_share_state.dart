// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PortfolioShare resources.
class PortfolioShareState {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  final pulumi.Input<String>? acceptLanguage;
  /// Whether the shared portfolio is imported by the recipient account. If the recipient is organizational, the share is automatically imported, and the field is always set to true.
  final pulumi.Input<bool>? accepted;
  /// Portfolio identifier.
  final pulumi.Input<String>? portfolioId;
  /// Identifier of the principal with whom you will share the portfolio. Valid values AWS account IDs and ARNs of AWS Organizations and organizational units.
  final pulumi.Input<String>? principalId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Enables or disables Principal sharing when creating the portfolio share. If this flag is not provided, principal sharing is disabled.
  final pulumi.Input<bool>? sharePrincipals;
  /// Whether to enable sharing of `aws.servicecatalog.TagOption` resources when creating the portfolio share.
  final pulumi.Input<bool>? shareTagOptions;
  /// Type of portfolio share. Valid values are `ACCOUNT` (an external account), `ORGANIZATION` (a share to every account in an organization), `ORGANIZATIONAL_UNIT`, `ORGANIZATION_MEMBER_ACCOUNT` (a share to an account in an organization).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? type;
  /// Whether to wait (up to the timeout) for the share to be accepted. Organizational shares are automatically accepted.
  final pulumi.Input<bool>? waitForAcceptance;

  /// Creates a new [PortfolioShareState].
  /// [acceptLanguage] Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  /// [accepted] Whether the shared portfolio is imported by the recipient account. If the recipient is organizational, the share is automatically imported, and the field is always set to true.
  /// [portfolioId] Portfolio identifier.
  /// [principalId] Identifier of the principal with whom you will share the portfolio. Valid values AWS account IDs and ARNs of AWS Organizations and organizational units.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sharePrincipals] Enables or disables Principal sharing when creating the portfolio share. If this flag is not provided, principal sharing is disabled.
  /// [shareTagOptions] Whether to enable sharing of `aws.servicecatalog.TagOption` resources when creating the portfolio share.
  /// [type] Type of portfolio share. Valid values are `ACCOUNT` (an external account), `ORGANIZATION` (a share to every account in an organization), `ORGANIZATIONAL_UNIT`, `ORGANIZATION_MEMBER_ACCOUNT` (a share to an account in an organization).
  /// [waitForAcceptance] Whether to wait (up to the timeout) for the share to be accepted. Organizational shares are automatically accepted.
  PortfolioShareState({
    pulumi.Output<String>? acceptLanguage,
    pulumi.Output<bool>? accepted,
    pulumi.Output<String>? portfolioId,
    pulumi.Output<String>? principalId,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? sharePrincipals,
    pulumi.Output<bool>? shareTagOptions,
    pulumi.Output<String>? type,
    pulumi.Output<bool>? waitForAcceptance,
  }) :
      acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
      accepted = pulumi.Input.asOptionalInput<bool>(accepted),
      portfolioId = pulumi.Input.asOptionalInput<String>(portfolioId),
      principalId = pulumi.Input.asOptionalInput<String>(principalId),
      region = pulumi.Input.asOptionalInput<String>(region),
      sharePrincipals = pulumi.Input.asOptionalInput<bool>(sharePrincipals),
      shareTagOptions = pulumi.Input.asOptionalInput<bool>(shareTagOptions),
      type = pulumi.Input.asOptionalInput<String>(type),
      waitForAcceptance = pulumi.Input.asOptionalInput<bool>(waitForAcceptance);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'accepted': ?accepted,
      'portfolioId': ?portfolioId,
      'principalId': ?principalId,
      'region': ?region,
      'sharePrincipals': ?sharePrincipals,
      'shareTagOptions': ?shareTagOptions,
      'type': ?type,
      'waitForAcceptance': ?waitForAcceptance,
    };
  }

  factory PortfolioShareState.fromMap(Map<String, dynamic> map) {
    return PortfolioShareState(
      acceptLanguage: map['acceptLanguage'] == null ? null : pulumi.Output.create<String>(map['acceptLanguage'] as String),
      accepted: map['accepted'] == null ? null : pulumi.Output.create<bool>(map['accepted'] as bool),
      portfolioId: map['portfolioId'] == null ? null : pulumi.Output.create<String>(map['portfolioId'] as String),
      principalId: map['principalId'] == null ? null : pulumi.Output.create<String>(map['principalId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sharePrincipals: map['sharePrincipals'] == null ? null : pulumi.Output.create<bool>(map['sharePrincipals'] as bool),
      shareTagOptions: map['shareTagOptions'] == null ? null : pulumi.Output.create<bool>(map['shareTagOptions'] as bool),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      waitForAcceptance: map['waitForAcceptance'] == null ? null : pulumi.Output.create<bool>(map['waitForAcceptance'] as bool),
    );
  }
}

