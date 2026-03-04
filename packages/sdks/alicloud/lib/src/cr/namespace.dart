import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_args.dart';
import 'namespace_state.dart';

/// This resource will help you to manager Container Registry namespaces, see [What is Namespace](https://www.alibabacloud.com/help/en/acr/developer-reference/api-cr-2018-12-01-createnamespace).
///
/// &gt; **NOTE:** Available since v1.34.0.
///
/// &gt; **NOTE:** You need to set your registry password in Container Registry console before use this resource.
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
/// const example = new alicloud.cr.Namespace("example", {
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
///     min=10000000,
///     max=99999999)
/// example = alicloud.cr.Namespace("example",
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
///         Min = 10000000,
///         Max = 99999999,
///     });
///
///     var example = new AliCloud.CR.Namespace("example", new()
///     {
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
/// 		_, err = cr.NewNamespace(ctx, "example", &cr.NamespaceArgs{
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
/// import com.pulumi.alicloud.cr.Namespace;
/// import com.pulumi.alicloud.cr.NamespaceArgs;
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
///         var example = new Namespace("example", NamespaceArgs.builder()
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
///       min: 1e+07
///       max: 9.9999999e+07
///   example:
///     type: alicloud:cr:Namespace
///     properties:
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
/// Container Registry namespace can be imported using the namespace, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cr/namespace:Namespace default my-namespace
/// ```
class Namespace extends pulumi.CustomResource {
  /// Boolean, when it set to true, repositories are automatically created when pushing new images. If it set to false, you create repository for images before pushing.
  late final pulumi.Output<bool> autoCreate;

  /// `PUBLIC` or `PRIVATE`, default repository visibility in this namespace.
  late final pulumi.Output<String> defaultVisibility;

  /// Name of Container Registry namespace.
  late final pulumi.Output<String> name;

  /// Creates a new [Namespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Namespace]. {@macro pulumi_cr_namespace_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cr/namespace:Namespace',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoCreate = registerOutput<bool>('autoCreate');
    defaultVisibility = registerOutput<String>('defaultVisibility');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [Namespace] resource's state with the given [name] and [id].
  static Namespace get(
    String name,
    pulumi.Input<String> id, {
    NamespaceState? state,
  }) {
    return Namespace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Namespace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cr/namespace:Namespace',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoCreate = registerOutput<bool>('autoCreate');
    defaultVisibility = registerOutput<String>('defaultVisibility');
    this.name = registerOutput<String>('name');
  }
}
