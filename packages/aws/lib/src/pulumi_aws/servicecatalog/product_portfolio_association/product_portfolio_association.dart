import 'package:pulumi/pulumi.dart';
import 'product_portfolio_association_args.dart';

/// Manages a Service Catalog Product Portfolio Association.
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
/// const example = new aws.servicecatalog.ProductPortfolioAssociation("example", {
/// portfolioId: "port-68656c6c6f",
/// productId: "prod-dnigbtea24ste",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.ProductPortfolioAssociation("example",
/// portfolio_id="port-68656c6c6f",
/// product_id="prod-dnigbtea24ste")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ServiceCatalog.ProductPortfolioAssociation("example", new()
/// {
/// PortfolioId = "port-68656c6c6f",
/// ProductId = "prod-dnigbtea24ste",
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
/// _, err := servicecatalog.NewProductPortfolioAssociation(ctx, "example", &servicecatalog.ProductPortfolioAssociationArgs{
/// PortfolioId: pulumi.String("port-68656c6c6f"),
/// ProductId:   pulumi.String("prod-dnigbtea24ste"),
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
/// import com.pulumi.aws.servicecatalog.ProductPortfolioAssociation;
/// import com.pulumi.aws.servicecatalog.ProductPortfolioAssociationArgs;
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
/// var example = new ProductPortfolioAssociation("example", ProductPortfolioAssociationArgs.builder()
/// .portfolioId("port-68656c6c6f")
/// .productId("prod-dnigbtea24ste")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:servicecatalog:ProductPortfolioAssociation
/// properties:
/// portfolioId: port-68656c6c6f
/// productId: prod-dnigbtea24ste
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.servicecatalog.ProductPortfolioAssociation`" pulumi-lang-dotnet="`aws.servicecatalog.ProductPortfolioAssociation`" pulumi-lang-go="`servicecatalog.ProductPortfolioAssociation`" pulumi-lang-python="`servicecatalog.ProductPortfolioAssociation`" pulumi-lang-yaml="`aws.servicecatalog.ProductPortfolioAssociation`" pulumi-lang-java="`aws.servicecatalog.ProductPortfolioAssociation`">`aws.servicecatalog.ProductPortfolioAssociation`</span> using the accept language, portfolio ID, and product ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/productPortfolioAssociation:ProductPortfolioAssociation example en:port-68656c6c6f:prod-dnigbtea24ste
/// ```
class ProductPortfolioAssociation extends CustomResource {
  /// Language code. Valid values: <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span> (English), <span pulumi-lang-nodejs="`jp`" pulumi-lang-dotnet="`Jp`" pulumi-lang-go="`jp`" pulumi-lang-python="`jp`" pulumi-lang-yaml="`jp`" pulumi-lang-java="`jp`">`jp`</span> (Japanese), <span pulumi-lang-nodejs="`zh`" pulumi-lang-dotnet="`Zh`" pulumi-lang-go="`zh`" pulumi-lang-python="`zh`" pulumi-lang-yaml="`zh`" pulumi-lang-java="`zh`">`zh`</span> (Chinese). Default value is <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span>.
  late final Output<String?> acceptLanguage;

  /// Portfolio identifier.
  late final Output<String> portfolioId;

  /// Product identifier.
  ///
  /// The following arguments are optional:
  late final Output<String> productId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Identifier of the source portfolio.
  late final Output<String?> sourcePortfolioId;

  ProductPortfolioAssociation(
    String name, {
    ProductPortfolioAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/productPortfolioAssociation:ProductPortfolioAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acceptLanguage = registerOutput<String?>('acceptLanguage');
    this.portfolioId = registerOutput<String>('portfolioId');
    this.productId = registerOutput<String>('productId');
    this.region = registerOutput<String>('region');
    this.sourcePortfolioId = registerOutput<String?>('sourcePortfolioId');
  }
}
