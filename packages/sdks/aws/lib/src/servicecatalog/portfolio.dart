import 'package:pulumi/pulumi.dart' as pulumi;
import 'portfolio_args.dart';
import 'portfolio_state.dart';

/// Provides a resource to create a Service Catalog Portfolio.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const portfolio = new aws.servicecatalog.Portfolio("portfolio", {
///     name: "My App Portfolio",
///     description: "List of my organizations apps",
///     providerName: "Brett",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// portfolio = aws.servicecatalog.Portfolio("portfolio",
///     name="My App Portfolio",
///     description="List of my organizations apps",
///     provider_name="Brett")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var portfolio = new Aws.ServiceCatalog.Portfolio("portfolio", new()
///     {
///         Name = "My App Portfolio",
///         Description = "List of my organizations apps",
///         ProviderName = "Brett",
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
/// 		_, err := servicecatalog.NewPortfolio(ctx, "portfolio", &servicecatalog.PortfolioArgs{
/// 			Name:         pulumi.String("My App Portfolio"),
/// 			Description:  pulumi.String("List of my organizations apps"),
/// 			ProviderName: pulumi.String("Brett"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var portfolio = new Portfolio("portfolio", PortfolioArgs.builder()
///             .name("My App Portfolio")
///             .description("List of my organizations apps")
///             .providerName("Brett")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   portfolio:
///     type: aws:servicecatalog:Portfolio
///     properties:
///       name: My App Portfolio
///       description: List of my organizations apps
///       providerName: Brett
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Service Catalog Portfolios using the Service Catalog Portfolio `id`. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/portfolio:Portfolio testfolio port-12344321
/// ```
class Portfolio extends pulumi.CustomResource {
  late final pulumi.Output<String> arn;
  late final pulumi.Output<String> createdTime;

  /// Description of the portfolio
  late final pulumi.Output<String> description;

  /// The name of the portfolio.
  late final pulumi.Output<String> name;

  /// Name of the person or organization who owns the portfolio.
  late final pulumi.Output<String> providerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Tags to apply to the connection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Portfolio].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Portfolio]. {@macro pulumi_servicecatalog_portfolio_portfolio_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Portfolio(
    String name, {
    PortfolioArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:servicecatalog/portfolio:Portfolio',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    createdTime = registerOutput<String>('createdTime');
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    providerName = registerOutput<String>('providerName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Portfolio] resource's state with the given [name] and [id].
  static Portfolio get(
    String name,
    pulumi.Input<String> id, {
    PortfolioState? state,
  }) {
    return Portfolio._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Portfolio._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:servicecatalog/portfolio:Portfolio',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    createdTime = registerOutput<String>('createdTime');
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    providerName = registerOutput<String>('providerName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
