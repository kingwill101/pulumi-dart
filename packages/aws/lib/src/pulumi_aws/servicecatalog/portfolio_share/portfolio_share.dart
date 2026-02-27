import 'package:pulumi/pulumi.dart' as pulumi;
import 'portfolio_share_args.dart';

/// Manages a Service Catalog Portfolio Share. Shares the specified portfolio with the specified account or organization node. You can share portfolios to an organization, an organizational unit, or a specific account.
///
/// If the portfolio share with the specified account or organization node already exists, using this resource to re-create the share will have no effect and will not return an error. You can then use this resource to update the share.
///
/// > **NOTE:** Shares to an organization node can only be created by the management account of an organization or by a delegated administrator. If a delegated admin is de-registered, they can no longer create portfolio shares.
///
/// > **NOTE:** AWSOrganizationsAccess must be enabled in order to create a portfolio share to an organization node.
///
/// > **NOTE:** You can't share a shared resource, including portfolios that contain a shared product.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.servicecatalog.PortfolioShare` using the portfolio share ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/portfolioShare:PortfolioShare example port-12344321:ACCOUNT:123456789012
/// ```
class PortfolioShare extends pulumi.CustomResource {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  late final pulumi.Output<String?> acceptLanguage;

  /// Whether the shared portfolio is imported by the recipient account. If the recipient is organizational, the share is automatically imported, and the field is always set to true.
  late final pulumi.Output<bool> accepted;

  /// Portfolio identifier.
  late final pulumi.Output<String> portfolioId;

  /// Identifier of the principal with whom you will share the portfolio. Valid values AWS account IDs and ARNs of AWS Organizations and organizational units.
  late final pulumi.Output<String> principalId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Enables or disables Principal sharing when creating the portfolio share. If this flag is not provided, principal sharing is disabled.
  late final pulumi.Output<bool?> sharePrincipals;

  /// Whether to enable sharing of `aws.servicecatalog.TagOption` resources when creating the portfolio share.
  late final pulumi.Output<bool?> shareTagOptions;

  /// Type of portfolio share. Valid values are `ACCOUNT` (an external account), `ORGANIZATION` (a share to every account in an organization), `ORGANIZATIONAL_UNIT`, `ORGANIZATION_MEMBER_ACCOUNT` (a share to an account in an organization).
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  /// Whether to wait (up to the timeout) for the share to be accepted. Organizational shares are automatically accepted.
  late final pulumi.Output<bool?> waitForAcceptance;

  PortfolioShare(
    String name, {
    PortfolioShareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/portfolioShare:PortfolioShare',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceptLanguage = registerOutput<String?>('acceptLanguage');
    this.accepted = registerOutput<bool>('accepted');
    this.portfolioId = registerOutput<String>('portfolioId');
    this.principalId = registerOutput<String>('principalId');
    this.region = registerOutput<String>('region');
    this.sharePrincipals = registerOutput<bool?>('sharePrincipals');
    this.shareTagOptions = registerOutput<bool?>('shareTagOptions');
    this.type = registerOutput<String>('type');
    this.waitForAcceptance = registerOutput<bool?>('waitForAcceptance');
  }
}
