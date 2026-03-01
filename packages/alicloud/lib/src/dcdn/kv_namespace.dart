import 'package:pulumi/pulumi.dart' as pulumi;
import 'kv_namespace_args.dart';

/// Provides a Dcdn Kv Namespace resource.
///
/// For information about Dcdn Kv Namespace and how to use it, see [What is Kv Namespace](https://www.alibabacloud.com/help/en/dcdn/developer-reference/api-dcdn-2018-01-15-putdcdnkvnamespace).
///
/// > **NOTE:** Available since v1.198.0.
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
/// const defaultKvNamespace = new alicloud.dcdn.KvNamespace("default", {
///     description: name,
///     namespace: `${name}-${_default.result}`,
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
/// default_kv_namespace = alicloud.dcdn.KvNamespace("default",
///     description=name,
///     namespace=f"{name}-{default['result']}")
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
///     var defaultKvNamespace = new AliCloud.Dcdn.KvNamespace("default", new()
///     {
///         Description = name,
///         Namespace = $"{name}-{@default.Result}",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dcdn"
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
/// 		_, err = dcdn.NewKvNamespace(ctx, "default", &dcdn.KvNamespaceArgs{
/// 			Description: pulumi.String(name),
/// 			Namespace:   pulumi.Sprintf("%v-%v", name, _default.Result),
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
/// import com.pulumi.alicloud.dcdn.KvNamespace;
/// import com.pulumi.alicloud.dcdn.KvNamespaceArgs;
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
///         var defaultKvNamespace = new KvNamespace("defaultKvNamespace", KvNamespaceArgs.builder()
///             .description(name)
///             .namespace(String.format("%s-%s", name,default_.result()))
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
///   defaultKvNamespace:
///     type: alicloud:dcdn:KvNamespace
///     name: default
///     properties:
///       description: ${name}
///       namespace: ${name}-${default.result}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Dcdn Kv Namespace can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dcdn/kvNamespace:KvNamespace example
/// ```
class KvNamespace extends pulumi.CustomResource {
  /// Namespace description information
  late final pulumi.Output<String> description;
  /// Namespace name. The name can contain letters, digits, hyphens (-), and underscores (_).
  late final pulumi.Output<String> namespace;
  /// The status of the resource
  late final pulumi.Output<String> status;

  /// Creates a new [KvNamespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KvNamespace]. {@macro pulumi_dcdn_kv_namespace_kv_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KvNamespace(
    String name, {
    KvNamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dcdn/kvNamespace:KvNamespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.namespace = registerOutput<String>('namespace');
    this.status = registerOutput<String>('status');
  }
}
