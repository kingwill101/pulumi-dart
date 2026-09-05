import 'package:pulumi/pulumi.dart' as pulumi;
import 'portfolio_share_args.dart';
import 'portfolio_share_state.dart';

/// Manages a Service Catalog Portfolio Share. Shares the specified portfolio with the specified account or organization node. You can share portfolios to an organization, an organizational unit, or a specific account.
///
/// If the portfolio share with the specified account or organization node already exists, using this resource to re-create the share will have no effect and will not return an error. You can then use this resource to update the share.
///
/// &gt; **NOTE:** Shares to an organization node can only be created by the management account of an organization or by a delegated administrator. If a delegated admin is de-registered, they can no longer create portfolio shares.
///
/// &gt; **NOTE:** AWSOrganizationsAccess must be enabled in order to create a portfolio share to an organization node.
///
/// &gt; **NOTE:** You can't share a shared resource, including portfolios that contain a shared product.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicecatalog.PortfolioShare("example", {
///     principalId: "012128675309",
///     portfolioId: exampleAwsServicecatalogPortfolio.id,
///     type: "ACCOUNT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.PortfolioShare("example",
///     principal_id="012128675309",
///     portfolio_id=example_aws_servicecatalog_portfolio["id"],
///     type="ACCOUNT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ServiceCatalog.PortfolioShare("example", new()
///     {
///         PrincipalId = "012128675309",
///         PortfolioId = exampleAwsServicecatalogPortfolio.Id,
///         Type = "ACCOUNT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicecatalog.NewPortfolioShare(ctx, "example", &servicecatalog.PortfolioShareArgs{
/// 			PrincipalId: pulumi.String("012128675309"),
/// 			PortfolioId: pulumi.Any(exampleAwsServicecatalogPortfolio.Id),
/// 			Type:        pulumi.String("ACCOUNT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_servicecatalog_portfolioshare" "example" {
///   principal_id = "012128675309"
///   portfolio_id = exampleAwsServicecatalogPortfolio.id
///   type         = "ACCOUNT"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new PortfolioShare("example", PortfolioShareArgs.builder()
///             .principalId("012128675309")
///             .portfolioId(exampleAwsServicecatalogPortfolio.id())
///             .type("ACCOUNT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicecatalog:PortfolioShare
///     properties:
///       principalId: '012128675309'
///       portfolioId: ${exampleAwsServicecatalogPortfolio.id}
///       type: ACCOUNT
/// ```
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

  /// Creates a new [PortfolioShare].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PortfolioShare]. {@macro pulumi_servicecatalog_portfolio_share_portfolio_share_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PortfolioShare(
    String name, {
    PortfolioShareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/portfolioShare:PortfolioShare',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    accepted = registerOutput<bool>('accepted');
    portfolioId = registerOutput<String>('portfolioId');
    principalId = registerOutput<String>('principalId');
    region = registerOutput<String>('region');
    sharePrincipals = registerOutput<bool?>('sharePrincipals');
    shareTagOptions = registerOutput<bool?>('shareTagOptions');
    type = registerOutput<String>('type');
    waitForAcceptance = registerOutput<bool?>('waitForAcceptance');
  }

  /// Gets an existing [PortfolioShare] resource's state with the given [name] and [id].
  static PortfolioShare get(
    String name,
    pulumi.Input<String> id, {
    PortfolioShareState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PortfolioShare._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PortfolioShare._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/portfolioShare:PortfolioShare',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    accepted = registerOutput<bool>('accepted');
    portfolioId = registerOutput<String>('portfolioId');
    principalId = registerOutput<String>('principalId');
    region = registerOutput<String>('region');
    sharePrincipals = registerOutput<bool?>('sharePrincipals');
    shareTagOptions = registerOutput<bool?>('shareTagOptions');
    type = registerOutput<String>('type');
    waitForAcceptance = registerOutput<bool?>('waitForAcceptance');
  }

  /// Creates a typed reference to an existing [PortfolioShare] resource.
  PortfolioShare.reference(String urn)
    : super(
        'aws:servicecatalog/portfolioShare:PortfolioShare',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    accepted = registerOutput<bool>('accepted');
    portfolioId = registerOutput<String>('portfolioId');
    principalId = registerOutput<String>('principalId');
    region = registerOutput<String>('region');
    sharePrincipals = registerOutput<bool?>('sharePrincipals');
    shareTagOptions = registerOutput<bool?>('shareTagOptions');
    type = registerOutput<String>('type');
    waitForAcceptance = registerOutput<bool?>('waitForAcceptance');
  }
}
