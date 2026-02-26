import 'package:pulumi/pulumi.dart';
import 'portfolio_args.dart';

/// Provides a resource to create a Service Catalog Portfolio.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const portfolio = new aws.servicecatalog.Portfolio("portfolio", {
/// name: "My App Portfolio",
/// description: "List of my organizations apps",
/// providerName: "Brett",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// portfolio = aws.servicecatalog.Portfolio("portfolio",
/// name="My App Portfolio",
/// description="List of my organizations apps",
/// provider_name="Brett")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var portfolio = new Aws.ServiceCatalog.Portfolio("portfolio", new()
/// {
/// Name = "My App Portfolio",
/// Description = "List of my organizations apps",
/// ProviderName = "Brett",
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
/// _, err := servicecatalog.NewPortfolio(ctx, "portfolio", &servicecatalog.PortfolioArgs{
/// Name:         pulumi.String("My App Portfolio"),
/// Description:  pulumi.String("List of my organizations apps"),
/// ProviderName: pulumi.String("Brett"),
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
/// import com.pulumi.aws.servicecatalog.Portfolio;
/// import com.pulumi.aws.servicecatalog.PortfolioArgs;
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
/// var portfolio = new Portfolio("portfolio", PortfolioArgs.builder()
/// .name("My App Portfolio")
/// .description("List of my organizations apps")
/// .providerName("Brett")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// portfolio:
/// type: aws:servicecatalog:Portfolio
/// properties:
/// name: My App Portfolio
/// description: List of my organizations apps
/// providerName: Brett
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Service Catalog Portfolios using the Service Catalog Portfolio <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/portfolio:Portfolio testfolio port-12344321
/// ```
class Portfolio extends CustomResource {
  late final Output<String> arn;
  late final Output<String> createdTime;

  /// Description of the portfolio
  late final Output<String> description;

  /// The name of the portfolio.
  late final Output<String> name;

  /// Name of the person or organization who owns the portfolio.
  late final Output<String> providerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Tags to apply to the connection. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Portfolio(
    String name, {
    PortfolioArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/portfolio:Portfolio',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.createdTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.providerName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
