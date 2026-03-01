import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_args.dart';
import 'namespace_state.dart';

/// Provides a Serverless App Engine (SAE) Namespace resource.
///
/// For information about SAE Namespace and how to use it, see [What is Namespace](https://www.alibabacloud.com/help/en/sae/latest/createnamespace).
///
/// > **NOTE:** Available since v1.129.0.
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
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const example = new alicloud.sae.Namespace("example", {
///     namespaceId: _default.then(_default => `${_default.regions?.[0]?.id}:example${defaultInteger.result}`),
///     namespaceName: name,
///     namespaceDescription: name,
///     enableMicroRegistration: false,
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
/// default = alicloud.get_regions(current=True)
/// default_integer = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// example = alicloud.sae.Namespace("example",
///     namespace_id=f"{default.regions[0].id}:example{default_integer['result']}",
///     namespace_name=name,
///     namespace_description=name,
///     enable_micro_registration=False)
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
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var example = new AliCloud.Sae.Namespace("example", new()
///     {
///         NamespaceId = @default.Apply(@default => $"{@default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)}:example{defaultInteger.Result}"),
///         NamespaceName = name,
///         NamespaceDescription = name,
///         EnableMicroRegistration = false,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sae"
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
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sae.NewNamespace(ctx, "example", &sae.NamespaceArgs{
/// 			NamespaceId:             pulumi.Sprintf("%v:example%v", _default.Regions[0].Id, defaultInteger.Result),
/// 			NamespaceName:           pulumi.String(name),
/// 			NamespaceDescription:    pulumi.String(name),
/// 			EnableMicroRegistration: pulumi.Bool(false),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.sae.Namespace;
/// import com.pulumi.alicloud.sae.NamespaceArgs;
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
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var example = new Namespace("example", NamespaceArgs.builder()
///             .namespaceId(String.format("%s:example%s", default_.regions()[0].id(),defaultInteger.result()))
///             .namespaceName(name)
///             .namespaceDescription(name)
///             .enableMicroRegistration(false)
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
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       max: 99999
///       min: 10000
///   example:
///     type: alicloud:sae:Namespace
///     properties:
///       namespaceId: ${default.regions[0].id}:example${defaultInteger.result}
///       namespaceName: ${name}
///       namespaceDescription: ${name}
///       enableMicroRegistration: false
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Serverless App Engine (SAE) Namespace can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sae/namespace:Namespace example <namespace_id>
/// ```
class Namespace extends pulumi.CustomResource {
  /// Specifies whether to enable the SAE built-in registry. If you do not use the built-in registry, you can set `enable_micro_registration` to `false` to accelerate the creation of the namespace. Default value: `true`. Valid values:
  late final pulumi.Output<bool> enableMicroRegistration;
  /// The Description of Namespace.
  late final pulumi.Output<String?> namespaceDescription;
  /// The ID of the Namespace. It can contain 2 to 32 lowercase characters. The value is in format `{RegionId}:{namespace}`.
  late final pulumi.Output<String> namespaceId;
  /// The Name of Namespace.
  late final pulumi.Output<String> namespaceName;
  /// The short ID of the Namespace. You do not need to specify a region ID. The value of `namespace_short_id` can be up to 20 characters in length and can contain only lowercase letters and digits.
  late final pulumi.Output<String> namespaceShortId;

  /// Creates a new [Namespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Namespace]. {@macro pulumi_sae_namespace_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sae/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enableMicroRegistration = registerOutput<bool>('enableMicroRegistration');
    this.namespaceDescription = registerOutput<String?>('namespaceDescription');
    this.namespaceId = registerOutput<String>('namespaceId');
    this.namespaceName = registerOutput<String>('namespaceName');
    this.namespaceShortId = registerOutput<String>('namespaceShortId');
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
          'alicloud:sae/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enableMicroRegistration = registerOutput<bool>('enableMicroRegistration');
    this.namespaceDescription = registerOutput<String?>('namespaceDescription');
    this.namespaceId = registerOutput<String>('namespaceId');
    this.namespaceName = registerOutput<String>('namespaceName');
    this.namespaceShortId = registerOutput<String>('namespaceShortId');
  }
}
