import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioned_product_args.dart';
import 'provisioned_product_state.dart';

/// Provides a Service Catalog Provisioned Product resource.
///
/// For information about Service Catalog Provisioned Product and how to use it, see [What is Provisioned Product](https://www.alibabacloud.com/help/en/service-catalog/developer-reference/api-servicecatalog-2021-09-01-launchproduct).
///
/// &gt; **NOTE:** Available since v1.196.0.
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
/// const name = config.get("name") || "tf-testAccServiceCatalogProvisionedProduct";
/// const _default = new alicloud.servicecatalog.ProvisionedProduct("default", {
///     provisionedProductName: name,
///     stackRegionId: "cn-hangzhou",
///     productVersionId: "pv-bp1d7dxy2pcc1g",
///     productId: "prod-bp1u3dkc282cwd",
///     portfolioId: "port-bp119dvn27jccw",
///     tags: {
///         v1: "tf-test",
///     },
///     parameters: [{
///         parameterKey: "role_name",
///         parameterValue: name,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-testAccServiceCatalogProvisionedProduct"
/// default = alicloud.servicecatalog.ProvisionedProduct("default",
///     provisioned_product_name=name,
///     stack_region_id="cn-hangzhou",
///     product_version_id="pv-bp1d7dxy2pcc1g",
///     product_id="prod-bp1u3dkc282cwd",
///     portfolio_id="port-bp119dvn27jccw",
///     tags={
///         "v1": "tf-test",
///     },
///     parameters=[{
///         "parameter_key": "role_name",
///         "parameter_value": name,
///     }])
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
///     var name = config.Get("name") ?? "tf-testAccServiceCatalogProvisionedProduct";
///     var @default = new AliCloud.ServiceCatalog.ProvisionedProduct("default", new()
///     {
///         ProvisionedProductName = name,
///         StackRegionId = "cn-hangzhou",
///         ProductVersionId = "pv-bp1d7dxy2pcc1g",
///         ProductId = "prod-bp1u3dkc282cwd",
///         PortfolioId = "port-bp119dvn27jccw",
///         Tags =
///         {
///             { "v1", "tf-test" },
///         },
///         Parameters = new[]
///         {
///             new AliCloud.ServiceCatalog.Inputs.ProvisionedProductParameterArgs
///             {
///                 ParameterKey = "role_name",
///                 ParameterValue = name,
///             },
///         },
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
/// 		name := "tf-testAccServiceCatalogProvisionedProduct"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := servicecatalog.NewProvisionedProduct(ctx, "default", &servicecatalog.ProvisionedProductArgs{
/// 			ProvisionedProductName: pulumi.String(name),
/// 			StackRegionId:          pulumi.String("cn-hangzhou"),
/// 			ProductVersionId:       pulumi.String("pv-bp1d7dxy2pcc1g"),
/// 			ProductId:              pulumi.String("prod-bp1u3dkc282cwd"),
/// 			PortfolioId:            pulumi.String("port-bp119dvn27jccw"),
/// 			Tags: pulumi.StringMap{
/// 				"v1": pulumi.String("tf-test"),
/// 			},
/// 			Parameters: servicecatalog.ProvisionedProductParameterArray{
/// 				&servicecatalog.ProvisionedProductParameterArgs{
/// 					ParameterKey:   pulumi.String("role_name"),
/// 					ParameterValue: pulumi.String(name),
/// 				},
/// 			},
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
/// import com.pulumi.alicloud.servicecatalog.ProvisionedProduct;
/// import com.pulumi.alicloud.servicecatalog.ProvisionedProductArgs;
/// import com.pulumi.alicloud.servicecatalog.inputs.ProvisionedProductParameterArgs;
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
///         final var name = config.get("name").orElse("tf-testAccServiceCatalogProvisionedProduct");
///         var default_ = new ProvisionedProduct("default", ProvisionedProductArgs.builder()
///             .provisionedProductName(name)
///             .stackRegionId("cn-hangzhou")
///             .productVersionId("pv-bp1d7dxy2pcc1g")
///             .productId("prod-bp1u3dkc282cwd")
///             .portfolioId("port-bp119dvn27jccw")
///             .tags(Map.of("v1", "tf-test"))
///             .parameters(ProvisionedProductParameterArgs.builder()
///                 .parameterKey("role_name")
///                 .parameterValue(name)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-testAccServiceCatalogProvisionedProduct
/// resources:
///   default:
///     type: alicloud:servicecatalog:ProvisionedProduct
///     properties:
///       provisionedProductName: ${name}
///       stackRegionId: cn-hangzhou
///       productVersionId: pv-bp1d7dxy2pcc1g
///       productId: prod-bp1u3dkc282cwd
///       portfolioId: port-bp119dvn27jccw
///       tags:
///         v1: tf-test
///       parameters:
///         - parameterKey: role_name
///           parameterValue: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Service Catalog Provisioned Product can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:servicecatalog/provisionedProduct:ProvisionedProduct example <id>
/// ```
class ProvisionedProduct extends pulumi.CustomResource {
  /// The creation time of the product instance
  late final pulumi.Output<String> createTime;
  /// The ID of the last instance operation task
  late final pulumi.Output<String> lastProvisioningTaskId;
  /// The ID of the last successful instance operation task
  late final pulumi.Output<String> lastSuccessfulProvisioningTaskId;
  /// The ID of the last task
  late final pulumi.Output<String> lastTaskId;
  /// The output value of the template.
  late final pulumi.Output<List<Map<String, dynamic>>> outputs;
  /// The RAM entity ID of the owner
  late final pulumi.Output<String> ownerPrincipalId;
  /// The RAM entity type of the owner
  late final pulumi.Output<String> ownerPrincipalType;
  /// Template parameters entered by the user.The maximum value of N is 200.See the following `Block Parameters`.
  late final pulumi.Output<List<Map<String, dynamic>>?> parameters;
  /// Product mix ID.&gt; When there is a default Startup option, there is no need to fill in the portfolio. When there is no default Startup option, you must fill in the portfolio.
  late final pulumi.Output<String?> portfolioId;
  /// Product ID.
  late final pulumi.Output<String> productId;
  /// The name of the product
  late final pulumi.Output<String> productName;
  /// Product version ID.
  late final pulumi.Output<String> productVersionId;
  /// The name of the product version
  late final pulumi.Output<String> productVersionName;
  /// The ARN of the product instance
  late final pulumi.Output<String> provisionedProductArn;
  /// The ID of the instance.
  late final pulumi.Output<String> provisionedProductId;
  /// The name of the instance.The length is 1~128 characters.
  late final pulumi.Output<String> provisionedProductName;
  /// Instance type.The value is RosStack, which indicates the stack of Alibaba Cloud resource orchestration service (ROS).
  late final pulumi.Output<String> provisionedProductType;
  /// The ID of the ROS stack
  late final pulumi.Output<String> stackId;
  /// The ID of the region to which the resource stack of the Alibaba Cloud resource orchestration service (ROS) belongs.
  late final pulumi.Output<String> stackRegionId;
  /// Instance status
  late final pulumi.Output<String> status;
  /// The status message of the product instance
  late final pulumi.Output<String> statusMessage;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ProvisionedProduct].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProvisionedProduct]. {@macro pulumi_servicecatalog_provisioned_product_provisioned_product_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProvisionedProduct(
    String name, {
    ProvisionedProductArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:servicecatalog/provisionedProduct:ProvisionedProduct',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    lastProvisioningTaskId = registerOutput<String>('lastProvisioningTaskId');
    lastSuccessfulProvisioningTaskId = registerOutput<String>('lastSuccessfulProvisioningTaskId');
    lastTaskId = registerOutput<String>('lastTaskId');
    outputs = registerOutput<List<Map<String, dynamic>>>('outputs');
    ownerPrincipalId = registerOutput<String>('ownerPrincipalId');
    ownerPrincipalType = registerOutput<String>('ownerPrincipalType');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    portfolioId = registerOutput<String?>('portfolioId');
    productId = registerOutput<String>('productId');
    productName = registerOutput<String>('productName');
    productVersionId = registerOutput<String>('productVersionId');
    productVersionName = registerOutput<String>('productVersionName');
    provisionedProductArn = registerOutput<String>('provisionedProductArn');
    provisionedProductId = registerOutput<String>('provisionedProductId');
    provisionedProductName = registerOutput<String>('provisionedProductName');
    provisionedProductType = registerOutput<String>('provisionedProductType');
    stackId = registerOutput<String>('stackId');
    stackRegionId = registerOutput<String>('stackRegionId');
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [ProvisionedProduct] resource's state with the given [name] and [id].
  static ProvisionedProduct get(
    String name,
    pulumi.Input<String> id, {
    ProvisionedProductState? state,
  }) {
    return ProvisionedProduct._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProvisionedProduct._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:servicecatalog/provisionedProduct:ProvisionedProduct',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    lastProvisioningTaskId = registerOutput<String>('lastProvisioningTaskId');
    lastSuccessfulProvisioningTaskId = registerOutput<String>('lastSuccessfulProvisioningTaskId');
    lastTaskId = registerOutput<String>('lastTaskId');
    outputs = registerOutput<List<Map<String, dynamic>>>('outputs');
    ownerPrincipalId = registerOutput<String>('ownerPrincipalId');
    ownerPrincipalType = registerOutput<String>('ownerPrincipalType');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    portfolioId = registerOutput<String?>('portfolioId');
    productId = registerOutput<String>('productId');
    productName = registerOutput<String>('productName');
    productVersionId = registerOutput<String>('productVersionId');
    productVersionName = registerOutput<String>('productVersionName');
    provisionedProductArn = registerOutput<String>('provisionedProductArn');
    provisionedProductId = registerOutput<String>('provisionedProductId');
    provisionedProductName = registerOutput<String>('provisionedProductName');
    provisionedProductType = registerOutput<String>('provisionedProductType');
    stackId = registerOutput<String>('stackId');
    stackRegionId = registerOutput<String>('stackRegionId');
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
