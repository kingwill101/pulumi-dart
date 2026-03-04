import 'package:pulumi/pulumi.dart' as pulumi;
import 'vsc_args.dart';
import 'vsc_state.dart';

/// Provides a Eflo Vsc resource.
///
/// Virtual Storage Channel.
///
/// For information about Eflo Vsc and how to use it, see [What is Vsc](https://www.alibabacloud.com/help/en/pai/developer-reference/api-eflo-controller-2022-12-15-createvsc).
///
/// &gt; **NOTE:** Available since v1.250.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.eflo.Vsc("default", {
///     vscType: "primary",
///     nodeId: "e01-cn-9me49omda01",
///     vscName: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.eflo.Vsc("default",
///     vsc_type="primary",
///     node_id="e01-cn-9me49omda01",
///     vsc_name=name)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Eflo.Vsc("default", new()
///     {
///         VscType = "primary",
///         NodeId = "e01-cn-9me49omda01",
///         VscName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eflo"
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
/// 		_, err := eflo.NewVsc(ctx, "default", &eflo.VscArgs{
/// 			VscType: pulumi.String("primary"),
/// 			NodeId:  pulumi.String("e01-cn-9me49omda01"),
/// 			VscName: pulumi.String(name),
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
/// import com.pulumi.alicloud.eflo.Vsc;
/// import com.pulumi.alicloud.eflo.VscArgs;
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
///         var default_ = new Vsc("default", VscArgs.builder()
///             .vscType("primary")
///             .nodeId("e01-cn-9me49omda01")
///             .vscName(name)
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
///     type: alicloud:eflo:Vsc
///     properties:
///       vscType: primary
///       nodeId: e01-cn-9me49omda01
///       vscName: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Eflo Vsc can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eflo/vsc:Vsc example <id>
/// ```
class Vsc extends pulumi.CustomResource {
  /// The ID of the Node.
  late final pulumi.Output<String> nodeId;

  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;

  /// The status of the Vsc.
  late final pulumi.Output<String> status;

  /// The tag of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The name of the Vsc.
  late final pulumi.Output<String?> vscName;

  /// The type of the Vsc. Default value: `primary`. Valid values: `primary`.
  late final pulumi.Output<String> vscType;

  /// Creates a new [Vsc].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Vsc]. {@macro pulumi_eflo_vsc_vsc_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Vsc(String name, {VscArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:eflo/vsc:Vsc',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    nodeId = registerOutput<String>('nodeId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vscName = registerOutput<String?>('vscName');
    vscType = registerOutput<String>('vscType');
  }

  /// Gets an existing [Vsc] resource's state with the given [name] and [id].
  static Vsc get(String name, pulumi.Input<String> id, {VscState? state}) {
    return Vsc._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Vsc._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eflo/vsc:Vsc',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    nodeId = registerOutput<String>('nodeId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vscName = registerOutput<String?>('vscName');
    vscType = registerOutput<String>('vscType');
  }
}
