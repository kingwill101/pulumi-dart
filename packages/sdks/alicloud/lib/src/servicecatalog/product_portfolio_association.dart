import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_portfolio_association_args.dart';
import 'product_portfolio_association_state.dart';

/// Provides a Service Catalog Product Portfolio Association resource.
///
/// Product portfolio association.
///
/// For information about Service Catalog Product Portfolio Association and how to use it, see [What is Product Portfolio Association](https://www.alibabacloud.com/help/en/service-catalog/developer-reference/api-servicecatalog-2021-09-01-associateproductwithportfolio).
///
/// > **NOTE:** Available since v1.230.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const default0yAgJ8 = new alicloud.servicecatalog.Portfolio("default0yAgJ8", {
///     providerName: name,
///     description: "desc",
///     portfolioName: name,
/// });
/// const defaultRetBJw = new alicloud.servicecatalog.Product("defaultRetBJw", {
///     providerName: name,
///     productName: std.format({
///         input: "%s1",
///         args: [name],
///     }).then(invoke => invoke.result),
///     productType: "Ros",
/// });
/// const _default = new alicloud.servicecatalog.ProductPortfolioAssociation("default", {
///     portfolioId: default0yAgJ8.id,
///     productId: defaultRetBJw.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default0y_ag_j8 = alicloud.servicecatalog.Portfolio("default0yAgJ8",
///     provider_name=name,
///     description="desc",
///     portfolio_name=name)
/// default_ret_b_jw = alicloud.servicecatalog.Product("defaultRetBJw",
///     provider_name=name,
///     product_name=std.format(input="%s1",
///         args=[name]).result,
///     product_type="Ros")
/// default = alicloud.servicecatalog.ProductPortfolioAssociation("default",
///     portfolio_id=default0y_ag_j8.id,
///     product_id=default_ret_b_jw.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var default0yAgJ8 = new AliCloud.ServiceCatalog.Portfolio("default0yAgJ8", new()
///     {
///         ProviderName = name,
///         Description = "desc",
///         PortfolioName = name,
///     });
///
///     var defaultRetBJw = new AliCloud.ServiceCatalog.Product("defaultRetBJw", new()
///     {
///         ProviderName = name,
///         ProductName = Std.Format.Invoke(new()
///         {
///             Input = "%s1",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///         ProductType = "Ros",
///     });
///
///     var @default = new AliCloud.ServiceCatalog.ProductPortfolioAssociation("default", new()
///     {
///         PortfolioId = default0yAgJ8.Id,
///         ProductId = defaultRetBJw.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/servicecatalog"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		default0yAgJ8, err := servicecatalog.NewPortfolio(ctx, "default0yAgJ8", &servicecatalog.PortfolioArgs{
/// 			ProviderName:  pulumi.String(name),
/// 			Description:   pulumi.String("desc"),
/// 			PortfolioName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s1",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRetBJw, err := servicecatalog.NewProduct(ctx, "defaultRetBJw", &servicecatalog.ProductArgs{
/// 			ProviderName: pulumi.String(name),
/// 			ProductName:  pulumi.String(invokeFormat.Result),
/// 			ProductType:  pulumi.String("Ros"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicecatalog.NewProductPortfolioAssociation(ctx, "default", &servicecatalog.ProductPortfolioAssociationArgs{
/// 			PortfolioId: default0yAgJ8.ID(),
/// 			ProductId:   defaultRetBJw.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.servicecatalog.Portfolio;
/// import com.pulumi.alicloud.servicecatalog.PortfolioArgs;
/// import com.pulumi.alicloud.servicecatalog.Product;
/// import com.pulumi.alicloud.servicecatalog.ProductArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.servicecatalog.ProductPortfolioAssociation;
/// import com.pulumi.alicloud.servicecatalog.ProductPortfolioAssociationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var default0yAgJ8 = new Portfolio("default0yAgJ8", PortfolioArgs.builder()
///             .providerName(name)
///             .description("desc")
///             .portfolioName(name)
///             .build());
///
///         var defaultRetBJw = new Product("defaultRetBJw", ProductArgs.builder()
///             .providerName(name)
///             .productName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s1")
///                 .args(name)
///                 .build()).result())
///             .productType("Ros")
///             .build());
///
///         var default_ = new ProductPortfolioAssociation("default", ProductPortfolioAssociationArgs.builder()
///             .portfolioId(default0yAgJ8.id())
///             .productId(defaultRetBJw.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default0yAgJ8:
///     type: alicloud:servicecatalog:Portfolio
///     properties:
///       providerName: ${name}
///       description: desc
///       portfolioName: ${name}
///   defaultRetBJw:
///     type: alicloud:servicecatalog:Product
///     properties:
///       providerName: ${name}
///       productName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s1'
///             args:
///               - ${name}
///           return: result
///       productType: Ros
///   default:
///     type: alicloud:servicecatalog:ProductPortfolioAssociation
///     properties:
///       portfolioId: ${default0yAgJ8.id}
///       productId: ${defaultRetBJw.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Service Catalog Product Portfolio Association can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:servicecatalog/productPortfolioAssociation:ProductPortfolioAssociation example <product_id>:<portfolio_id>
/// ```
class ProductPortfolioAssociation extends pulumi.CustomResource {
  /// Product Portfolio ID
  late final pulumi.Output<String> portfolioId;
  /// Product ID
  late final pulumi.Output<String> productId;

  /// Creates a new [ProductPortfolioAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProductPortfolioAssociation]. {@macro pulumi_servicecatalog_product_portfolio_association_product_portfolio_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProductPortfolioAssociation(
    String name, {
    ProductPortfolioAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:servicecatalog/productPortfolioAssociation:ProductPortfolioAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.portfolioId = registerOutput<String>('portfolioId');
    this.productId = registerOutput<String>('productId');
  }

  /// Gets an existing [ProductPortfolioAssociation] resource's state with the given [name] and [id].
  static ProductPortfolioAssociation get(
    String name,
    pulumi.Input<String> id, {
    ProductPortfolioAssociationState? state,
  }) {
    return ProductPortfolioAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProductPortfolioAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:servicecatalog/productPortfolioAssociation:ProductPortfolioAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.portfolioId = registerOutput<String>('portfolioId');
    this.productId = registerOutput<String>('productId');
  }
}
