import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_enterprise_namespace_args.dart';
import 'registry_enterprise_namespace_state.dart';

/// Provides a Container Registry Enterprise Edition Namespace resource.
///
/// For information about Container Registry Enterprise Edition Namespace and how to use it, see [What is Namespace](https://www.alibabacloud.com/help/en/acr/developer-reference/api-cr-2018-12-01-createnamespace)
///
/// &gt; **NOTE:** Available since v1.86.0.
///
/// &gt; **NOTE:** You need to set your registry password in Container Registry Enterprise Edition console before use this resource.
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
///     min: 10000,
///     max: 99999,
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
///     min=10000,
///     max=99999)
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
///         Min = 10000,
///         Max = 99999,
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
/// 			Min: 10000,
/// 			Max: 99999,
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
/// 		_, err = cs.NewRegistryEnterpriseNamespace(ctx, "default", &cs.RegistryEnterpriseNamespaceArgs{
/// 			InstanceId:        defaultRegistryEnterpriseInstance.ID(),
/// 			Name:              pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			AutoCreate:        pulumi.Bool(false),
/// 			DefaultVisibility: pulumi.String("PUBLIC"),
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
///             .min(10000)
///             .max(99999)
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
///       min: 10000
///       max: 99999
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
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Container Registry Enterprise Edition Namespace can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cs/registryEnterpriseNamespace:RegistryEnterpriseNamespace example <instance_id>:<name>
/// ```
class RegistryEnterpriseNamespace extends pulumi.CustomResource {
  /// Specifies whether to automatically create an image repository in the namespace. Default value: `false`. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> autoCreate;
  /// The default type of the repository that is automatically created. Valid values:
  /// - `PUBLIC`: A public repository.
  /// - `PRIVATE`: A private repository.
  late final pulumi.Output<String> defaultVisibility;
  /// The ID of the Container Registry Enterprise Edition instance.
  late final pulumi.Output<String> instanceId;
  /// The name of the Container Registry Enterprise Edition Name. It must be `2` to `120` characters in length, and can contain lowercase letters, digits, underscores (_), hyphens (-), and periods (.). It cannot start or end with a delimiter.
  late final pulumi.Output<String> name;

  /// Creates a new [RegistryEnterpriseNamespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryEnterpriseNamespace]. {@macro pulumi_cs_registry_enterprise_namespace_registry_enterprise_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryEnterpriseNamespace(
    String name, {
    RegistryEnterpriseNamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/registryEnterpriseNamespace:RegistryEnterpriseNamespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoCreate = registerOutput<bool?>('autoCreate');
    defaultVisibility = registerOutput<String>('defaultVisibility');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [RegistryEnterpriseNamespace] resource's state with the given [name] and [id].
  static RegistryEnterpriseNamespace get(
    String name,
    pulumi.Input<String> id, {
    RegistryEnterpriseNamespaceState? state,
  }) {
    return RegistryEnterpriseNamespace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegistryEnterpriseNamespace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/registryEnterpriseNamespace:RegistryEnterpriseNamespace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoCreate = registerOutput<bool?>('autoCreate');
    defaultVisibility = registerOutput<String>('defaultVisibility');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
  }
}
