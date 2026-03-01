import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_enterprise_repo_args.dart';
import 'registry_enterprise_repo_state.dart';

/// Provides a Container Registry Enterprise Edition Repository resource.
///
/// For information about Container Registry Enterprise Edition Repository and how to use it, see [What is Repository](https://www.alibabacloud.com/help/en/acr/developer-reference/api-cr-2018-12-01-createrepository)
///
/// > **NOTE:** Available since v1.86.0.
///
/// > **NOTE:** You need to set your registry password in Container Registry Enterprise Edition console before use this resource.
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
/// const defaultRegistryEnterpriseInstance = new alicloud.cr.RegistryEnterpriseInstance("default", {
///     paymentType: "Subscription",
///     period: 1,
///     renewPeriod: 0,
///     renewalStatus: "ManualRenewal",
///     instanceType: "Advanced",
///     instanceName: `${name}-${_default.result}`,
/// });
/// const defaultRegistryEnterpriseNamespace = new alicloud.cs.RegistryEnterpriseNamespace("default", {
///     instanceId: defaultRegistryEnterpriseInstance.id,
///     name: `${name}-${_default.result}`,
///     autoCreate: false,
///     defaultVisibility: "PUBLIC",
/// });
/// const example = new alicloud.cs.RegistryEnterpriseRepo("example", {
///     instanceId: defaultRegistryEnterpriseInstance.id,
///     namespace: defaultRegistryEnterpriseNamespace.name,
///     name: `${name}-${_default.result}`,
///     repoType: "PUBLIC",
///     summary: "this is summary of my new repo",
///     detail: "this is a public repo",
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
/// default_registry_enterprise_instance = alicloud.cr.RegistryEnterpriseInstance("default",
///     payment_type="Subscription",
///     period=1,
///     renew_period=0,
///     renewal_status="ManualRenewal",
///     instance_type="Advanced",
///     instance_name=f"{name}-{default['result']}")
/// default_registry_enterprise_namespace = alicloud.cs.RegistryEnterpriseNamespace("default",
///     instance_id=default_registry_enterprise_instance.id,
///     name=f"{name}-{default['result']}",
///     auto_create=False,
///     default_visibility="PUBLIC")
/// example = alicloud.cs.RegistryEnterpriseRepo("example",
///     instance_id=default_registry_enterprise_instance.id,
///     namespace=default_registry_enterprise_namespace.name,
///     name=f"{name}-{default['result']}",
///     repo_type="PUBLIC",
///     summary="this is summary of my new repo",
///     detail="this is a public repo")
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
///     var defaultRegistryEnterpriseInstance = new AliCloud.CR.RegistryEnterpriseInstance("default", new()
///     {
///         PaymentType = "Subscription",
///         Period = 1,
///         RenewPeriod = 0,
///         RenewalStatus = "ManualRenewal",
///         InstanceType = "Advanced",
///         InstanceName = $"{name}-{@default.Result}",
///     });
///
///     var defaultRegistryEnterpriseNamespace = new AliCloud.CS.RegistryEnterpriseNamespace("default", new()
///     {
///         InstanceId = defaultRegistryEnterpriseInstance.Id,
///         Name = $"{name}-{@default.Result}",
///         AutoCreate = false,
///         DefaultVisibility = "PUBLIC",
///     });
///
///     var example = new AliCloud.CS.RegistryEnterpriseRepo("example", new()
///     {
///         InstanceId = defaultRegistryEnterpriseInstance.Id,
///         Namespace = defaultRegistryEnterpriseNamespace.Name,
///         Name = $"{name}-{@default.Result}",
///         RepoType = "PUBLIC",
///         Summary = "this is summary of my new repo",
///         Detail = "this is a public repo",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
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
/// 		defaultRegistryEnterpriseInstance, err := cr.NewRegistryEnterpriseInstance(ctx, "default", &cr.RegistryEnterpriseInstanceArgs{
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
/// 		defaultRegistryEnterpriseNamespace, err := cs.NewRegistryEnterpriseNamespace(ctx, "default", &cs.RegistryEnterpriseNamespaceArgs{
/// 			InstanceId:        defaultRegistryEnterpriseInstance.ID(),
/// 			Name:              pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			AutoCreate:        pulumi.Bool(false),
/// 			DefaultVisibility: pulumi.String("PUBLIC"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cs.NewRegistryEnterpriseRepo(ctx, "example", &cs.RegistryEnterpriseRepoArgs{
/// 			InstanceId: defaultRegistryEnterpriseInstance.ID(),
/// 			Namespace:  defaultRegistryEnterpriseNamespace.Name,
/// 			Name:       pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			RepoType:   pulumi.String("PUBLIC"),
/// 			Summary:    pulumi.String("this is summary of my new repo"),
/// 			Detail:     pulumi.String("this is a public repo"),
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
/// import com.pulumi.alicloud.cs.RegistryEnterpriseNamespace;
/// import com.pulumi.alicloud.cs.RegistryEnterpriseNamespaceArgs;
/// import com.pulumi.alicloud.cs.RegistryEnterpriseRepo;
/// import com.pulumi.alicloud.cs.RegistryEnterpriseRepoArgs;
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
///         var defaultRegistryEnterpriseInstance = new RegistryEnterpriseInstance("defaultRegistryEnterpriseInstance", RegistryEnterpriseInstanceArgs.builder()
///             .paymentType("Subscription")
///             .period(1)
///             .renewPeriod(0)
///             .renewalStatus("ManualRenewal")
///             .instanceType("Advanced")
///             .instanceName(String.format("%s-%s", name,default_.result()))
///             .build());
///
///         var defaultRegistryEnterpriseNamespace = new RegistryEnterpriseNamespace("defaultRegistryEnterpriseNamespace", RegistryEnterpriseNamespaceArgs.builder()
///             .instanceId(defaultRegistryEnterpriseInstance.id())
///             .name(String.format("%s-%s", name,default_.result()))
///             .autoCreate(false)
///             .defaultVisibility("PUBLIC")
///             .build());
///
///         var example = new RegistryEnterpriseRepo("example", RegistryEnterpriseRepoArgs.builder()
///             .instanceId(defaultRegistryEnterpriseInstance.id())
///             .namespace(defaultRegistryEnterpriseNamespace.name())
///             .name(String.format("%s-%s", name,default_.result()))
///             .repoType("PUBLIC")
///             .summary("this is summary of my new repo")
///             .detail("this is a public repo")
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
///   defaultRegistryEnterpriseInstance:
///     type: alicloud:cr:RegistryEnterpriseInstance
///     name: default
///     properties:
///       paymentType: Subscription
///       period: 1
///       renewPeriod: 0
///       renewalStatus: ManualRenewal
///       instanceType: Advanced
///       instanceName: ${name}-${default.result}
///   defaultRegistryEnterpriseNamespace:
///     type: alicloud:cs:RegistryEnterpriseNamespace
///     name: default
///     properties:
///       instanceId: ${defaultRegistryEnterpriseInstance.id}
///       name: ${name}-${default.result}
///       autoCreate: false
///       defaultVisibility: PUBLIC
///   example:
///     type: alicloud:cs:RegistryEnterpriseRepo
///     properties:
///       instanceId: ${defaultRegistryEnterpriseInstance.id}
///       namespace: ${defaultRegistryEnterpriseNamespace.name}
///       name: ${name}-${default.result}
///       repoType: PUBLIC
///       summary: this is summary of my new repo
///       detail: this is a public repo
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Container Registry Enterprise Edition Repository can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cs/registryEnterpriseRepo:RegistryEnterpriseRepo example <instance_id>:<namespace>:<name>
/// ```
class RegistryEnterpriseRepo extends pulumi.CustomResource {
  /// The description of the repository.
  late final pulumi.Output<String?> detail;
  /// The ID of the Container Registry Enterprise Edition instance.
  late final pulumi.Output<String> instanceId;
  /// The name of the image repository.
  late final pulumi.Output<String> name;
  /// The name of the namespace to which the image repository belongs.
  late final pulumi.Output<String> namespace;
  /// The ID of the repository.
  late final pulumi.Output<String> repoId;
  /// The type of the repository. Valid values:
  /// - `PUBLIC`: The repository is a public repository.
  /// - `PRIVATE`: The repository is a private repository.
  late final pulumi.Output<String> repoType;
  /// The summary about the repository.
  late final pulumi.Output<String> summary;

  /// Creates a new [RegistryEnterpriseRepo].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryEnterpriseRepo]. {@macro pulumi_cs_registry_enterprise_repo_registry_enterprise_repo_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryEnterpriseRepo(
    String name, {
    RegistryEnterpriseRepoArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/registryEnterpriseRepo:RegistryEnterpriseRepo',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.detail = registerOutput<String?>('detail');
    this.instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    this.namespace = registerOutput<String>('namespace');
    this.repoId = registerOutput<String>('repoId');
    this.repoType = registerOutput<String>('repoType');
    this.summary = registerOutput<String>('summary');
  }

  /// Gets an existing [RegistryEnterpriseRepo] resource's state with the given [name] and [id].
  static RegistryEnterpriseRepo get(
    String name,
    pulumi.Input<String> id, {
    RegistryEnterpriseRepoState? state,
  }) {
    return RegistryEnterpriseRepo._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegistryEnterpriseRepo._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/registryEnterpriseRepo:RegistryEnterpriseRepo',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.detail = registerOutput<String?>('detail');
    this.instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    this.namespace = registerOutput<String>('namespace');
    this.repoId = registerOutput<String>('repoId');
    this.repoType = registerOutput<String>('repoType');
    this.summary = registerOutput<String>('summary');
  }
}
