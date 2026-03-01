import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_rule_args.dart';
import 'network_rule_state.dart';

/// Provides a KMS Network Rule resource. Network rules that can be bound by Application Access Point's policies.
///
/// For information about KMS Network Rule and how to use it, see [What is Network Rule](https://www.alibabacloud.com/help/zh/key-management-service/latest/api-createnetworkrule).
///
/// > **NOTE:** Available since v1.210.0.
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
/// const _default = new alicloud.kms.NetworkRule("default", {
///     description: "example-description",
///     sourcePrivateIps: [
///         "10.10.10.10/24",
///         "192.168.17.13",
///         "100.177.24.254",
///     ],
///     networkRuleName: name,
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
/// default = alicloud.kms.NetworkRule("default",
///     description="example-description",
///     source_private_ips=[
///         "10.10.10.10/24",
///         "192.168.17.13",
///         "100.177.24.254",
///     ],
///     network_rule_name=name)
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
///     var @default = new AliCloud.Kms.NetworkRule("default", new()
///     {
///         Description = "example-description",
///         SourcePrivateIps = new[]
///         {
///             "10.10.10.10/24",
///             "192.168.17.13",
///             "100.177.24.254",
///         },
///         NetworkRuleName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
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
/// 		_, err := kms.NewNetworkRule(ctx, "default", &kms.NetworkRuleArgs{
/// 			Description: pulumi.String("example-description"),
/// 			SourcePrivateIps: pulumi.StringArray{
/// 				pulumi.String("10.10.10.10/24"),
/// 				pulumi.String("192.168.17.13"),
/// 				pulumi.String("100.177.24.254"),
/// 			},
/// 			NetworkRuleName: pulumi.String(name),
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
/// import com.pulumi.alicloud.kms.NetworkRule;
/// import com.pulumi.alicloud.kms.NetworkRuleArgs;
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
///         var default_ = new NetworkRule("default", NetworkRuleArgs.builder()
///             .description("example-description")
///             .sourcePrivateIps(
///                 "10.10.10.10/24",
///                 "192.168.17.13",
///                 "100.177.24.254")
///             .networkRuleName(name)
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
///     type: alicloud:kms:NetworkRule
///     properties:
///       description: example-description
///       sourcePrivateIps:
///         - 10.10.10.10/24
///         - 192.168.17.13
///         - 100.177.24.254
///       networkRuleName: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// KMS Network Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:kms/networkRule:NetworkRule example <id>
/// ```
class NetworkRule extends pulumi.CustomResource {
  /// Description.
  late final pulumi.Output<String?> description;
  /// Network Rule Name.
  late final pulumi.Output<String> networkRuleName;
  /// Allowed private network addresses.
  late final pulumi.Output<List<String>> sourcePrivateIps;

  /// Creates a new [NetworkRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkRule]. {@macro pulumi_kms_network_rule_network_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkRule(
    String name, {
    NetworkRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:kms/networkRule:NetworkRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.networkRuleName = registerOutput<String>('networkRuleName');
    this.sourcePrivateIps = registerOutput<List<String>>('sourcePrivateIps');
  }

  /// Gets an existing [NetworkRule] resource's state with the given [name] and [id].
  static NetworkRule get(
    String name,
    pulumi.Input<String> id, {
    NetworkRuleState? state,
  }) {
    return NetworkRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:kms/networkRule:NetworkRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.networkRuleName = registerOutput<String>('networkRuleName');
    this.sourcePrivateIps = registerOutput<List<String>>('sourcePrivateIps');
  }
}
