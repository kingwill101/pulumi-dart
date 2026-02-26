import 'package:pulumi/pulumi.dart';
import 'principal_portfolio_association_args.dart';

/// Manages a Service Catalog Principal Portfolio Association.
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
/// const example = new aws.servicecatalog.PrincipalPortfolioAssociation("example", {
/// portfolioId: "port-68656c6c6f",
/// principalArn: "arn:aws:iam::123456789012:user/Eleanor",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.PrincipalPortfolioAssociation("example",
/// portfolio_id="port-68656c6c6f",
/// principal_arn="arn:aws:iam::123456789012:user/Eleanor")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ServiceCatalog.PrincipalPortfolioAssociation("example", new()
/// {
/// PortfolioId = "port-68656c6c6f",
/// PrincipalArn = "arn:aws:iam::123456789012:user/Eleanor",
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
/// _, err := servicecatalog.NewPrincipalPortfolioAssociation(ctx, "example", &servicecatalog.PrincipalPortfolioAssociationArgs{
/// PortfolioId:  pulumi.String("port-68656c6c6f"),
/// PrincipalArn: pulumi.String("arn:aws:iam::123456789012:user/Eleanor"),
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
/// import com.pulumi.aws.servicecatalog.PrincipalPortfolioAssociation;
/// import com.pulumi.aws.servicecatalog.PrincipalPortfolioAssociationArgs;
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
/// var example = new PrincipalPortfolioAssociation("example", PrincipalPortfolioAssociationArgs.builder()
/// .portfolioId("port-68656c6c6f")
/// .principalArn("arn:aws:iam::123456789012:user/Eleanor")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:servicecatalog:PrincipalPortfolioAssociation
/// properties:
/// portfolioId: port-68656c6c6f
/// principalArn: arn:aws:iam::123456789012:user/Eleanor
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.servicecatalog.PrincipalPortfolioAssociation`" pulumi-lang-dotnet="`aws.servicecatalog.PrincipalPortfolioAssociation`" pulumi-lang-go="`servicecatalog.PrincipalPortfolioAssociation`" pulumi-lang-python="`servicecatalog.PrincipalPortfolioAssociation`" pulumi-lang-yaml="`aws.servicecatalog.PrincipalPortfolioAssociation`" pulumi-lang-java="`aws.servicecatalog.PrincipalPortfolioAssociation`">`aws.servicecatalog.PrincipalPortfolioAssociation`</span> using <span pulumi-lang-nodejs="`acceptLanguage`" pulumi-lang-dotnet="`AcceptLanguage`" pulumi-lang-go="`acceptLanguage`" pulumi-lang-python="`accept_language`" pulumi-lang-yaml="`acceptLanguage`" pulumi-lang-java="`acceptLanguage`">`accept_language`</span>, <span pulumi-lang-nodejs="`principalArn`" pulumi-lang-dotnet="`PrincipalArn`" pulumi-lang-go="`principalArn`" pulumi-lang-python="`principal_arn`" pulumi-lang-yaml="`principalArn`" pulumi-lang-java="`principalArn`">`principal_arn`</span>, <span pulumi-lang-nodejs="`portfolioId`" pulumi-lang-dotnet="`PortfolioId`" pulumi-lang-go="`portfolioId`" pulumi-lang-python="`portfolio_id`" pulumi-lang-yaml="`portfolioId`" pulumi-lang-java="`portfolioId`">`portfolio_id`</span>, and <span pulumi-lang-nodejs="`principalType`" pulumi-lang-dotnet="`PrincipalType`" pulumi-lang-go="`principalType`" pulumi-lang-python="`principal_type`" pulumi-lang-yaml="`principalType`" pulumi-lang-java="`principalType`">`principal_type`</span> separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/principalPortfolioAssociation:PrincipalPortfolioAssociation example en,arn:aws:iam::123456789012:user/Eleanor,port-68656c6c6f,IAM
/// ```
class PrincipalPortfolioAssociation extends CustomResource {
  /// Language code. Valid values: <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span> (English), <span pulumi-lang-nodejs="`jp`" pulumi-lang-dotnet="`Jp`" pulumi-lang-go="`jp`" pulumi-lang-python="`jp`" pulumi-lang-yaml="`jp`" pulumi-lang-java="`jp`">`jp`</span> (Japanese), <span pulumi-lang-nodejs="`zh`" pulumi-lang-dotnet="`Zh`" pulumi-lang-go="`zh`" pulumi-lang-python="`zh`" pulumi-lang-yaml="`zh`" pulumi-lang-java="`zh`">`zh`</span> (Chinese). Default value is <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span>.
  late final Output<String?> acceptLanguage;

  /// Portfolio identifier.
  late final Output<String> portfolioId;

  /// Principal ARN.
  ///
  /// The following arguments are optional:
  late final Output<String> principalArn;

  /// Principal type. Setting this argument empty (e.g., <span pulumi-lang-nodejs="`principalType " pulumi-lang-dotnet="`PrincipalType " pulumi-lang-go="`principalType " pulumi-lang-python="`principal_type " pulumi-lang-yaml="`principalType " pulumi-lang-java="`principalType ">`principal_type </span>= ""`) will result in an error. Valid values are `IAM` and `IAM_PATTERN`. Default is `IAM`.
  late final Output<String?> principalType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  PrincipalPortfolioAssociation(
    String name, {
    PrincipalPortfolioAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/principalPortfolioAssociation:PrincipalPortfolioAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acceptLanguage = Output.createUnknown<String?>();
    this.portfolioId = Output.createUnknown<String>();
    this.principalArn = Output.createUnknown<String>();
    this.principalType = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
  }
}
