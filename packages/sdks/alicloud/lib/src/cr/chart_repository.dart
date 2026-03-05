import 'package:pulumi/pulumi.dart' as pulumi;
import 'chart_repository_args.dart';
import 'chart_repository_state.dart';

/// Provides a CR Chart Repository resource.
///
/// For information about CR Chart Repository and how to use it, see [What is Chart Repository](https://www.alibabacloud.com/help/en/acr/developer-reference/api-cr-2018-12-01-createchartrepository).
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
/// const name = config.get("name") || "tf-example";
/// const _default = new random.index.Integer("default", {
///     min: 100000,
///     max: 999999,
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
/// const exampleChartRepository = new alicloud.cr.ChartRepository("example", {
///     repoNamespaceName: exampleChartNamespace.namespaceName,
///     instanceId: exampleChartNamespace.instanceId,
///     repoName: `${name}-${_default.result}`,
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
///     name = "tf-example"
/// default = random.index.Integer("default",
///     min=100000,
///     max=999999)
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
/// example_chart_repository = alicloud.cr.ChartRepository("example",
///     repo_namespace_name=example_chart_namespace.namespace_name,
///     instance_id=example_chart_namespace.instance_id,
///     repo_name=f"{name}-{default['result']}")
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
///     var name = config.Get("name") ?? "tf-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 100000,
///         Max = 999999,
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
///     var exampleChartRepository = new AliCloud.CR.ChartRepository("example", new()
///     {
///         RepoNamespaceName = exampleChartNamespace.NamespaceName,
///         InstanceId = exampleChartNamespace.InstanceId,
///         RepoName = $"{name}-{@default.Result}",
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
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 100000,
/// 			Max: 999999,
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
/// 		exampleChartNamespace, err := cr.NewChartNamespace(ctx, "example", &cr.ChartNamespaceArgs{
/// 			InstanceId:    example.ID(),
/// 			NamespaceName: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cr.NewChartRepository(ctx, "example", &cr.ChartRepositoryArgs{
/// 			RepoNamespaceName: exampleChartNamespace.NamespaceName,
/// 			InstanceId:        exampleChartNamespace.InstanceId,
/// 			RepoName:          pulumi.Sprintf("%v-%v", name, _default.Result),
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
/// import com.pulumi.alicloud.cr.ChartRepository;
/// import com.pulumi.alicloud.cr.ChartRepositoryArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(100000)
///             .max(999999)
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
///         var exampleChartRepository = new ChartRepository("exampleChartRepository", ChartRepositoryArgs.builder()
///             .repoNamespaceName(exampleChartNamespace.namespaceName())
///             .instanceId(exampleChartNamespace.instanceId())
///             .repoName(String.format("%s-%s", name,default_.result()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 100000
///       max: 999999
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
///   exampleChartRepository:
///     type: alicloud:cr:ChartRepository
///     name: example
///     properties:
///       repoNamespaceName: ${exampleChartNamespace.namespaceName}
///       instanceId: ${exampleChartNamespace.instanceId}
///       repoName: ${name}-${default.result}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CR Chart Repository can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cr/chartRepository:ChartRepository example <instance_id>:<repo_namespace_name>:<repo_name>
/// ```
class ChartRepository extends pulumi.CustomResource {
  /// The ID of the Container Registry instance.
  late final pulumi.Output<String> instanceId;
  /// The name of the repository that you want to create.
  late final pulumi.Output<String> repoName;
  /// The namespace to which the repository belongs.
  late final pulumi.Output<String> repoNamespaceName;
  /// The default repository type. Valid values: `PUBLIC`,`PRIVATE`.
  late final pulumi.Output<String> repoType;
  /// The summary about the repository.
  late final pulumi.Output<String?> summary;

  /// Creates a new [ChartRepository].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ChartRepository]. {@macro pulumi_cr_chart_repository_chart_repository_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ChartRepository(
    String name, {
    ChartRepositoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cr/chartRepository:ChartRepository',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instanceId = registerOutput<String>('instanceId');
    repoName = registerOutput<String>('repoName');
    repoNamespaceName = registerOutput<String>('repoNamespaceName');
    repoType = registerOutput<String>('repoType');
    summary = registerOutput<String?>('summary');
  }

  /// Gets an existing [ChartRepository] resource's state with the given [name] and [id].
  static ChartRepository get(
    String name,
    pulumi.Input<String> id, {
    ChartRepositoryState? state,
  }) {
    return ChartRepository._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ChartRepository._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cr/chartRepository:ChartRepository',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instanceId = registerOutput<String>('instanceId');
    repoName = registerOutput<String>('repoName');
    repoNamespaceName = registerOutput<String>('repoNamespaceName');
    repoType = registerOutput<String>('repoType');
    summary = registerOutput<String?>('summary');
  }
}
