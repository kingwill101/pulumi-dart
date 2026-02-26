import 'package:pulumi/pulumi.dart';
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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicecatalog.PortfolioShare("example", {
/// principalId: "012128675309",
/// portfolioId: exampleAwsServicecatalogPortfolio.id,
/// type: "ACCOUNT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.PortfolioShare("example",
/// principal_id="012128675309",
/// portfolio_id=example_aws_servicecatalog_portfolio["id"],
/// type="ACCOUNT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ServiceCatalog.PortfolioShare("example", new()
/// {
/// PrincipalId = "012128675309",
/// PortfolioId = exampleAwsServicecatalogPortfolio.Id,
/// Type = "ACCOUNT",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := servicecatalog.NewPortfolioShare(ctx, "example", &servicecatalog.PortfolioShareArgs{
/// PrincipalId: pulumi.String("012128675309"),
/// PortfolioId: pulumi.Any(exampleAwsServicecatalogPortfolio.Id),
/// Type:        pulumi.String("ACCOUNT"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.servicecatalog.PortfolioShare;
/// import com.pulumi.aws.servicecatalog.PortfolioShareArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new PortfolioShare("example", PortfolioShareArgs.builder()
/// .principalId("012128675309")
/// .portfolioId(exampleAwsServicecatalogPortfolio.id())
/// .type("ACCOUNT")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:servicecatalog:PortfolioShare
/// properties:
/// principalId: '012128675309'
/// portfolioId: ${exampleAwsServicecatalogPortfolio.id}
/// type: ACCOUNT
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.servicecatalog.PortfolioShare`" pulumi-lang-dotnet="`aws.servicecatalog.PortfolioShare`" pulumi-lang-go="`servicecatalog.PortfolioShare`" pulumi-lang-python="`servicecatalog.PortfolioShare`" pulumi-lang-yaml="`aws.servicecatalog.PortfolioShare`" pulumi-lang-java="`aws.servicecatalog.PortfolioShare`">`aws.servicecatalog.PortfolioShare`</span> using the portfolio share ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/portfolioShare:PortfolioShare example port-12344321:ACCOUNT:123456789012
/// ```
class PortfolioShare extends CustomResource {
  /// Language code. Valid values: <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span> (English), <span pulumi-lang-nodejs="`jp`" pulumi-lang-dotnet="`Jp`" pulumi-lang-go="`jp`" pulumi-lang-python="`jp`" pulumi-lang-yaml="`jp`" pulumi-lang-java="`jp`">`jp`</span> (Japanese), <span pulumi-lang-nodejs="`zh`" pulumi-lang-dotnet="`Zh`" pulumi-lang-go="`zh`" pulumi-lang-python="`zh`" pulumi-lang-yaml="`zh`" pulumi-lang-java="`zh`">`zh`</span> (Chinese). Default value is <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span>.
  late final Output<String?> acceptLanguage;

  /// Whether the shared portfolio is imported by the recipient account. If the recipient is organizational, the share is automatically imported, and the field is always set to true.
  late final Output<bool> accepted;

  /// Portfolio identifier.
  late final Output<String> portfolioId;

  /// Identifier of the principal with whom you will share the portfolio. Valid values AWS account IDs and ARNs of AWS Organizations and organizational units.
  late final Output<String> principalId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Enables or disables Principal sharing when creating the portfolio share. If this flag is not provided, principal sharing is disabled.
  late final Output<bool?> sharePrincipals;

  /// Whether to enable sharing of <span pulumi-lang-nodejs="`aws.servicecatalog.TagOption`" pulumi-lang-dotnet="`aws.servicecatalog.TagOption`" pulumi-lang-go="`servicecatalog.TagOption`" pulumi-lang-python="`servicecatalog.TagOption`" pulumi-lang-yaml="`aws.servicecatalog.TagOption`" pulumi-lang-java="`aws.servicecatalog.TagOption`">`aws.servicecatalog.TagOption`</span> resources when creating the portfolio share.
  late final Output<bool?> shareTagOptions;

  /// Type of portfolio share. Valid values are `ACCOUNT` (an external account), `ORGANIZATION` (a share to every account in an organization), `ORGANIZATIONAL_UNIT`, `ORGANIZATION_MEMBER_ACCOUNT` (a share to an account in an organization).
  ///
  /// The following arguments are optional:
  late final Output<String> type;

  /// Whether to wait (up to the timeout) for the share to be accepted. Organizational shares are automatically accepted.
  late final Output<bool?> waitForAcceptance;

  PortfolioShare(
    String name, {
    PortfolioShareArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/portfolioShare:PortfolioShare',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
