// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for PortfolioShare.
class PortfolioShareArgs {
  /// Language code. Valid values: <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span> (English), <span pulumi-lang-nodejs="`jp`" pulumi-lang-dotnet="`Jp`" pulumi-lang-go="`jp`" pulumi-lang-python="`jp`" pulumi-lang-yaml="`jp`" pulumi-lang-java="`jp`">`jp`</span> (Japanese), <span pulumi-lang-nodejs="`zh`" pulumi-lang-dotnet="`Zh`" pulumi-lang-go="`zh`" pulumi-lang-python="`zh`" pulumi-lang-yaml="`zh`" pulumi-lang-java="`zh`">`zh`</span> (Chinese). Default value is <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span>.
  final Input<String>? acceptLanguage;

  /// Portfolio identifier.
  final Input<String> portfolioId;

  /// Identifier of the principal with whom you will share the portfolio. Valid values AWS account IDs and ARNs of AWS Organizations and organizational units.
  final Input<String> principalId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Enables or disables Principal sharing when creating the portfolio share. If this flag is not provided, principal sharing is disabled.
  final Input<bool>? sharePrincipals;

  /// Whether to enable sharing of <span pulumi-lang-nodejs="`aws.servicecatalog.TagOption`" pulumi-lang-dotnet="`aws.servicecatalog.TagOption`" pulumi-lang-go="`servicecatalog.TagOption`" pulumi-lang-python="`servicecatalog.TagOption`" pulumi-lang-yaml="`aws.servicecatalog.TagOption`" pulumi-lang-java="`aws.servicecatalog.TagOption`">`aws.servicecatalog.TagOption`</span> resources when creating the portfolio share.
  final Input<bool>? shareTagOptions;

  /// Type of portfolio share. Valid values are `ACCOUNT` (an external account), `ORGANIZATION` (a share to every account in an organization), `ORGANIZATIONAL_UNIT`, `ORGANIZATION_MEMBER_ACCOUNT` (a share to an account in an organization).
  ///
  /// The following arguments are optional:
  final Input<String> type;

  /// Whether to wait (up to the timeout) for the share to be accepted. Organizational shares are automatically accepted.
  final Input<bool>? waitForAcceptance;

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
      acceptLanguage: Input.asOptionalInput<String>(map['acceptLanguage']),
      portfolioId: Input.asInput<String>(map['portfolioId']),
      principalId: Input.asInput<String>(map['principalId']),
      region: Input.asOptionalInput<String>(map['region']),
      sharePrincipals: Input.asOptionalInput<bool>(map['sharePrincipals']),
      shareTagOptions: Input.asOptionalInput<bool>(map['shareTagOptions']),
      type: Input.asInput<String>(map['type']),
      waitForAcceptance: Input.asOptionalInput<bool>(map['waitForAcceptance']),
    );
  }
}
