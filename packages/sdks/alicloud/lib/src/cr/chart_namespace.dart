import 'package:pulumi/pulumi.dart' as pulumi;
import 'chart_namespace_args.dart';
import 'chart_namespace_state.dart';

/// Provides a CR Chart Namespace resource.
///
/// For information about CR Chart Namespace and how to use it, see [What is Chart Namespace](https://www.alibabacloud.com/help/en/acr/developer-reference/api-cr-2018-12-01-createchartnamespace).
///
/// &gt; **NOTE:** Available since v1.149.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000000,
///     max: 99999999,
/// });
/// const example = new alicloud.cr.RegistryEnterpriseInstance("example", {
///     paymentType: "Subscription",
///     period: 1,
///     renewPeriod: 0,
///     renewalStatus: "ManualRenewal",
///     instanceType: "Advanced",
///     instanceName: `${name}-${_default.result}`,
/// });
/// const exampleChartNamespace = new alicloud.cr.ChartNamespace("example", {
///     instanceId: example.id,
///     namespaceName: `${name}-${_default.result}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = random.index.Integer("default",
///     min=10000000,
///     max=99999999)
/// example = alicloud.cr.RegistryEnterpriseInstance("example",
///     payment_type="Subscription",
///     period=1,
///     renew_period=0,
///     renewal_status="ManualRenewal",
///     instance_type="Advanced",
///     instance_name=f"{name}-{default['result']}")
/// example_chart_namespace = alicloud.cr.ChartNamespace("example",
///     instance_id=example.id,
///     namespace_name=f"{name}-{default['result']}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000000,
///         Max = 99999999,
///     });
///
///     var example = new AliCloud.CR.RegistryEnterpriseInstance("example", new()
///     {
///         PaymentType = "Subscription",
///         Period = 1,
///         RenewPeriod = 0,
///         RenewalStatus = "ManualRenewal",
///         InstanceType = "Advanced",
///         InstanceName = $"{name}-{@default.Result}",
///     });
///
///     var exampleChartNamespace = new AliCloud.CR.ChartNamespace("example", new()
///     {
///         InstanceId = example.Id,
///         NamespaceName = $"{name}-{@default.Result}",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cr"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000000,
/// 			Max: 99999999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := cr.NewRegistryEnterpriseInstance(ctx, "example", &cr.RegistryEnterpriseInstanceArgs{
/// 			PaymentType:   pulumi.String("Subscription"),
/// 			Period:        pulumi.Int(1),
/// 			RenewPeriod:   pulumi.Int(0),
/// 			RenewalStatus: pulumi.String("ManualRenewal"),
/// 			InstanceType:  pulumi.String("Advanced"),
/// 			InstanceName:  pulumi.Sprintf("%v-%v", name, _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cr.NewChartNamespace(ctx, "example", &cr.ChartNamespaceArgs{
/// 			InstanceId:    example.ID(),
/// 			NamespaceName: pulumi.Sprintf("%v-%v", name, _default.Result),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.cr.RegistryEnterpriseInstance;
/// import com.pulumi.alicloud.cr.RegistryEnterpriseInstanceArgs;
/// import com.pulumi.alicloud.cr.ChartNamespace;
/// import com.pulumi.alicloud.cr.ChartNamespaceArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000000)
///             .max(99999999)
///             .build());
///
///         var example = new RegistryEnterpriseInstance("example", RegistryEnterpriseInstanceArgs.builder()
///             .paymentType("Subscription")
///             .period(1)
///             .renewPeriod(0)
///             .renewalStatus("ManualRenewal")
///             .instanceType("Advanced")
///             .instanceName(String.format("%s-%s", name,default_.result()))
///             .build());
///
///         var exampleChartNamespace = new ChartNamespace("exampleChartNamespace", ChartNamespaceArgs.builder()
///             .instanceId(example.id())
///             .namespaceName(String.format("%s-%s", name,default_.result()))
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
///   default:
///     type: random:Integer
///     properties:
///       min: 1e+07
///       max: 9.9999999e+07
///   example:
///     type: alicloud:cr:RegistryEnterpriseInstance
///     properties:
///       paymentType: Subscription
///       period: 1
///       renewPeriod: 0
///       renewalStatus: ManualRenewal
///       instanceType: Advanced
///       instanceName: ${name}-${default.result}
///   exampleChartNamespace:
///     type: alicloud:cr:ChartNamespace
///     name: example
///     properties:
///       instanceId: ${example.id}
///       namespaceName: ${name}-${default.result}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CR Chart Namespace can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cr/chartNamespace:ChartNamespace example <instance_id>:<namespace_name>
/// ```
class ChartNamespace extends pulumi.CustomResource {
  /// Specifies whether to automatically create repositories in the namespace. Valid values:
  late final pulumi.Output<bool> autoCreateRepo;

  /// DefaultRepoType. Valid values: `PRIVATE`, `PUBLIC`.
  late final pulumi.Output<String> defaultRepoType;

  /// The ID of the Container Registry instance.
  late final pulumi.Output<String> instanceId;

  /// The name of the namespace that you want to create.
  late final pulumi.Output<String> namespaceName;

  /// Creates a new [ChartNamespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ChartNamespace]. {@macro pulumi_cr_chart_namespace_chart_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ChartNamespace(
    String name, {
    ChartNamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cr/chartNamespace:ChartNamespace',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoCreateRepo = registerOutput<bool>('autoCreateRepo');
    defaultRepoType = registerOutput<String>('defaultRepoType');
    instanceId = registerOutput<String>('instanceId');
    namespaceName = registerOutput<String>('namespaceName');
  }

  /// Gets an existing [ChartNamespace] resource's state with the given [name] and [id].
  static ChartNamespace get(
    String name,
    pulumi.Input<String> id, {
    ChartNamespaceState? state,
  }) {
    return ChartNamespace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ChartNamespace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cr/chartNamespace:ChartNamespace',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoCreateRepo = registerOutput<bool>('autoCreateRepo');
    defaultRepoType = registerOutput<String>('defaultRepoType');
    instanceId = registerOutput<String>('instanceId');
    namespaceName = registerOutput<String>('namespaceName');
  }
}
