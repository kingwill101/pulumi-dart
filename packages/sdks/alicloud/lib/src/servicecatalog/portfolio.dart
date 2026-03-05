import 'package:pulumi/pulumi.dart' as pulumi;
import 'portfolio_args.dart';
import 'portfolio_state.dart';

/// Provides a Service Catalog Portfolio resource.
///
/// For information about Service Catalog Portfolio and how to use it, see [What is Portfolio](https://www.alibabacloud.com/help/en/service-catalog/developer-reference/api-servicecatalog-2021-09-01-createportfolio).
///
/// &gt; **NOTE:** Available since v1.204.0.
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
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const _default = new alicloud.servicecatalog.Portfolio("default", {
///     portfolioName: name,
///     providerName: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = alicloud.servicecatalog.Portfolio("default",
///     portfolio_name=name,
///     provider_name=name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf_example";
///     var @default = new AliCloud.ServiceCatalog.Portfolio("default", new()
///     {
///         PortfolioName = name,
///         ProviderName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/servicecatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := servicecatalog.NewPortfolio(ctx, "default", &servicecatalog.PortfolioArgs{
/// 			PortfolioName: pulumi.String(name),
/// 			ProviderName:  pulumi.String(name),
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
///         final var name = config.get("name").orElse("tf_example");
///         var default_ = new Portfolio("default", PortfolioArgs.builder()
///             .portfolioName(name)
///             .providerName(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
/// resources:
///   default:
///     type: alicloud:servicecatalog:Portfolio
///     properties:
///       portfolioName: ${name}
///       providerName: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Service Catalog Portfolio can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:servicecatalog/portfolio:Portfolio example <id>
/// ```
class Portfolio extends pulumi.CustomResource {
  /// The creation time of the portfolio
  late final pulumi.Output<String> createTime;
  /// The description of the portfolio
  late final pulumi.Output<String?> description;
  /// The ARN of the portfolio
  late final pulumi.Output<String> portfolioArn;
  /// The name of the portfolio
  late final pulumi.Output<String> portfolioName;
  /// The provider name of the portfolio
  late final pulumi.Output<String> providerName;

  /// Creates a new [Portfolio].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Portfolio]. {@macro pulumi_servicecatalog_portfolio_portfolio_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Portfolio(
    String name, {
    PortfolioArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:servicecatalog/portfolio:Portfolio',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    portfolioArn = registerOutput<String>('portfolioArn');
    portfolioName = registerOutput<String>('portfolioName');
    providerName = registerOutput<String>('providerName');
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
          'alicloud:servicecatalog/portfolio:Portfolio',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    portfolioArn = registerOutput<String>('portfolioArn');
    portfolioName = registerOutput<String>('portfolioName');
    providerName = registerOutput<String>('providerName');
  }
}
