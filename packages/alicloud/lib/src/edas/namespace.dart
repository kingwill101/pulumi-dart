import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_args.dart';

/// Provides a EDAS Namespace resource.
///
/// For information about EDAS Namespace and how to use it, see [What is Namespace](https://www.alibabacloud.com/help/en/enterprise-distributed-application-service/latest/insertorupdateregion).
///
/// > **NOTE:** Available since v1.173.0.
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
/// const region = config.get("region") || "cn-hangzhou";
/// const name = config.get("name") || "tfexample";
/// const _default = new alicloud.edas.Namespace("default", {
///     debugEnable: false,
///     description: name,
///     namespaceLogicalId: `${region}:${name}`,
///     namespaceName: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// region = config.get("region")
/// if region is None:
///     region = "cn-hangzhou"
/// name = config.get("name")
/// if name is None:
///     name = "tfexample"
/// default = alicloud.edas.Namespace("default",
///     debug_enable=False,
///     description=name,
///     namespace_logical_id=f"{region}:{name}",
///     namespace_name=name)
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
///     var region = config.Get("region") ?? "cn-hangzhou";
///     var name = config.Get("name") ?? "tfexample";
///     var @default = new AliCloud.Edas.Namespace("default", new()
///     {
///         DebugEnable = false,
///         Description = name,
///         NamespaceLogicalId = $"{region}:{name}",
///         NamespaceName = name,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/edas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		region := "cn-hangzhou"
/// 		if param := cfg.Get("region"); param != "" {
/// 			region = param
/// 		}
/// 		name := "tfexample"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := edas.NewNamespace(ctx, "default", &edas.NamespaceArgs{
/// 			DebugEnable:        pulumi.Bool(false),
/// 			Description:        pulumi.String(name),
/// 			NamespaceLogicalId: pulumi.Sprintf("%v:%v", region, name),
/// 			NamespaceName:      pulumi.String(name),
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
/// import com.pulumi.alicloud.edas.Namespace;
/// import com.pulumi.alicloud.edas.NamespaceArgs;
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
///         final var region = config.get("region").orElse("cn-hangzhou");
///         final var name = config.get("name").orElse("tfexample");
///         var default_ = new Namespace("default", NamespaceArgs.builder()
///             .debugEnable(false)
///             .description(name)
///             .namespaceLogicalId(String.format("%s:%s", region,name))
///             .namespaceName(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   region:
///     type: string
///     default: cn-hangzhou
///   name:
///     type: string
///     default: tfexample
/// resources:
///   default:
///     type: alicloud:edas:Namespace
///     properties:
///       debugEnable: false
///       description: ${name}
///       namespaceLogicalId: ${region}:${name}
///       namespaceName: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// EDAS Namespace can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:edas/namespace:Namespace example <id>
/// ```
class Namespace extends pulumi.CustomResource {
  /// Specifies whether to enable remote debugging.
  late final pulumi.Output<bool> debugEnable;
  /// The description of the namespace, The description can be up to `128` characters in length.
  late final pulumi.Output<String?> description;
  /// The ID of the namespace.
  /// - The ID of a custom namespace is in the `region ID:namespace identifier` format. An example is `cn-beijing:tdy218`.
  /// - The ID of the default namespace is in the `region ID` format. An example is cn-beijing.
  late final pulumi.Output<String> namespaceLogicalId;
  /// The name of the namespace, The name can be up to `63` characters in length.
  late final pulumi.Output<String> namespaceName;

  /// Creates a new [Namespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Namespace]. {@macro pulumi_edas_namespace_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:edas/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.debugEnable = registerOutput<bool>('debugEnable');
    this.description = registerOutput<String?>('description');
    this.namespaceLogicalId = registerOutput<String>('namespaceLogicalId');
    this.namespaceName = registerOutput<String>('namespaceName');
  }
}
