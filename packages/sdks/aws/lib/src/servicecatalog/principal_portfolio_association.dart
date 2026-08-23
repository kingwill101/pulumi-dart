import 'package:pulumi/pulumi.dart' as pulumi;
import 'principal_portfolio_association_args.dart';
import 'principal_portfolio_association_state.dart';

/// Manages a Service Catalog Principal Portfolio Association.
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
/// const example = new aws.servicecatalog.PrincipalPortfolioAssociation("example", {
///     portfolioId: "port-68656c6c6f",
///     principalArn: "arn:aws:iam::123456789012:user/Eleanor",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.PrincipalPortfolioAssociation("example",
///     portfolio_id="port-68656c6c6f",
///     principal_arn="arn:aws:iam::123456789012:user/Eleanor")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ServiceCatalog.PrincipalPortfolioAssociation("example", new()
///     {
///         PortfolioId = "port-68656c6c6f",
///         PrincipalArn = "arn:aws:iam::123456789012:user/Eleanor",
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
/// 		_, err := servicecatalog.NewPrincipalPortfolioAssociation(ctx, "example", &servicecatalog.PrincipalPortfolioAssociationArgs{
/// 			PortfolioId:  pulumi.String("port-68656c6c6f"),
/// 			PrincipalArn: pulumi.String("arn:aws:iam::123456789012:user/Eleanor"),
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
/// resource "aws_servicecatalog_principalportfolioassociation" "example" {
///   portfolio_id  = "port-68656c6c6f"
///   principal_arn = "arn:aws:iam::123456789012:user/Eleanor"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.servicecatalog.PrincipalPortfolioAssociation;
/// import com.pulumi.aws.servicecatalog.PrincipalPortfolioAssociationArgs;
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
///         var example = new PrincipalPortfolioAssociation("example", PrincipalPortfolioAssociationArgs.builder()
///             .portfolioId("port-68656c6c6f")
///             .principalArn("arn:aws:iam::123456789012:user/Eleanor")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicecatalog:PrincipalPortfolioAssociation
///     properties:
///       portfolioId: port-68656c6c6f
///       principalArn: arn:aws:iam::123456789012:user/Eleanor
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.servicecatalog.PrincipalPortfolioAssociation` using `acceptLanguage`, `principalArn`, `portfolioId`, and `principalType` separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/principalPortfolioAssociation:PrincipalPortfolioAssociation example en,arn:aws:iam::123456789012:user/Eleanor,port-68656c6c6f,IAM
/// ```
class PrincipalPortfolioAssociation extends pulumi.CustomResource {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  late final pulumi.Output<String?> acceptLanguage;
  /// Portfolio identifier.
  late final pulumi.Output<String> portfolioId;
  /// Principal ARN.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> principalArn;
  /// Principal type. Setting this argument empty (e.g., `principalType = ""`) will result in an error. Valid values are `IAM` and `IAM_PATTERN`. Default is `IAM`.
  late final pulumi.Output<String?> principalType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [PrincipalPortfolioAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrincipalPortfolioAssociation]. {@macro pulumi_servicecatalog_principal_portfolio_association_principal_portfolio_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrincipalPortfolioAssociation(
    String name, {
    PrincipalPortfolioAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/principalPortfolioAssociation:PrincipalPortfolioAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    portfolioId = registerOutput<String>('portfolioId');
    principalArn = registerOutput<String>('principalArn');
    principalType = registerOutput<String?>('principalType');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [PrincipalPortfolioAssociation] resource's state with the given [name] and [id].
  static PrincipalPortfolioAssociation get(
    String name,
    pulumi.Input<String> id, {
    PrincipalPortfolioAssociationState? state,
  }) {
    return PrincipalPortfolioAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PrincipalPortfolioAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/principalPortfolioAssociation:PrincipalPortfolioAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    portfolioId = registerOutput<String>('portfolioId');
    principalArn = registerOutput<String>('principalArn');
    principalType = registerOutput<String?>('principalType');
    region = registerOutput<String>('region');
  }
}
