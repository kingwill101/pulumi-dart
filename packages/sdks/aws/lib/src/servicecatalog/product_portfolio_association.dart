import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_portfolio_association_args.dart';
import 'product_portfolio_association_state.dart';

/// Manages a Service Catalog Product Portfolio Association.
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
/// const example = new aws.servicecatalog.ProductPortfolioAssociation("example", {
///     portfolioId: "port-68656c6c6f",
///     productId: "prod-dnigbtea24ste",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.ProductPortfolioAssociation("example",
///     portfolio_id="port-68656c6c6f",
///     product_id="prod-dnigbtea24ste")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ServiceCatalog.ProductPortfolioAssociation("example", new()
///     {
///         PortfolioId = "port-68656c6c6f",
///         ProductId = "prod-dnigbtea24ste",
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
/// 		_, err := servicecatalog.NewProductPortfolioAssociation(ctx, "example", &servicecatalog.ProductPortfolioAssociationArgs{
/// 			PortfolioId: pulumi.String("port-68656c6c6f"),
/// 			ProductId:   pulumi.String("prod-dnigbtea24ste"),
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
/// resource "aws_servicecatalog_productportfolioassociation" "example" {
///   portfolio_id = "port-68656c6c6f"
///   product_id   = "prod-dnigbtea24ste"
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
///         var example = new ProductPortfolioAssociation("example", ProductPortfolioAssociationArgs.builder()
///             .portfolioId("port-68656c6c6f")
///             .productId("prod-dnigbtea24ste")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicecatalog:ProductPortfolioAssociation
///     properties:
///       portfolioId: port-68656c6c6f
///       productId: prod-dnigbtea24ste
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.servicecatalog.ProductPortfolioAssociation` using the accept language, portfolio ID, and product ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/productPortfolioAssociation:ProductPortfolioAssociation example en:port-68656c6c6f:prod-dnigbtea24ste
/// ```
class ProductPortfolioAssociation extends pulumi.CustomResource {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  late final pulumi.Output<String?> acceptLanguage;
  /// Portfolio identifier.
  late final pulumi.Output<String> portfolioId;
  /// Product identifier.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> productId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Identifier of the source portfolio.
  late final pulumi.Output<String?> sourcePortfolioId;

  /// Creates a new [ProductPortfolioAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProductPortfolioAssociation]. {@macro pulumi_servicecatalog_product_portfolio_association_product_portfolio_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProductPortfolioAssociation(
    String name, {
    ProductPortfolioAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/productPortfolioAssociation:ProductPortfolioAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    portfolioId = registerOutput<String>('portfolioId');
    productId = registerOutput<String>('productId');
    region = registerOutput<String>('region');
    sourcePortfolioId = registerOutput<String?>('sourcePortfolioId');
  }

  /// Gets an existing [ProductPortfolioAssociation] resource's state with the given [name] and [id].
  static ProductPortfolioAssociation get(
    String name,
    pulumi.Input<String> id, {
    ProductPortfolioAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ProductPortfolioAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ProductPortfolioAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/productPortfolioAssociation:ProductPortfolioAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    portfolioId = registerOutput<String>('portfolioId');
    productId = registerOutput<String>('productId');
    region = registerOutput<String>('region');
    sourcePortfolioId = registerOutput<String?>('sourcePortfolioId');
  }

  /// Creates a typed reference to an existing [ProductPortfolioAssociation] resource.
  ProductPortfolioAssociation.reference(String urn)
    : super(
        'aws:servicecatalog/productPortfolioAssociation:ProductPortfolioAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    portfolioId = registerOutput<String>('portfolioId');
    productId = registerOutput<String>('productId');
    region = registerOutput<String>('region');
    sourcePortfolioId = registerOutput<String?>('sourcePortfolioId');
  }
}
