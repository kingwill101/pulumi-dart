import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_policy_args.dart';
import 'bgp_policy_content.dart';
import 'bgp_policy_state.dart';

/// Provides a Ddos Bgp Policy resource.
///
/// Ddos protection policy.
///
/// For information about Ddos Bgp Policy and how to use it, see [What is Policy](https://www.alibabacloud.com/help/en/anti-ddos/anti-ddos-origin/developer-reference/api-ddosbgp-2018-07-20-createpolicy).
///
/// &gt; **NOTE:** Available since v1.226.0.
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
/// const name = config.get("name") || "tf_exampleacc_bgp32594";
/// const policyName = config.get("policyName") || "example_l4_policy";
/// const _default = new alicloud.ddos.BgpPolicy("default", {
///     content: {
///         enableDefense: false,
///         layer4RuleLists: [{
///             method: "hex",
///             match: "1",
///             action: "1",
///             limited: 0,
///             conditionLists: [{
///                 arg: "3C",
///                 position: 1,
///                 depth: 2,
///             }],
///             name: "11",
///             priority: 10,
///         }],
///     },
///     type: "l4",
///     policyName: "tf_exampleacc_bgp32594",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_exampleacc_bgp32594"
/// policy_name = config.get("policyName")
/// if policy_name is None:
///     policy_name = "example_l4_policy"
/// default = alicloud.ddos.BgpPolicy("default",
///     content={
///         "enable_defense": False,
///         "layer4_rule_lists": [{
///             "method": "hex",
///             "match": "1",
///             "action": "1",
///             "limited": 0,
///             "condition_lists": [{
///                 "arg": "3C",
///                 "position": 1,
///                 "depth": 2,
///             }],
///             "name": "11",
///             "priority": 10,
///         }],
///     },
///     type="l4",
///     policy_name="tf_exampleacc_bgp32594")
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
///     var name = config.Get("name") ?? "tf_exampleacc_bgp32594";
///     var policyName = config.Get("policyName") ?? "example_l4_policy";
///     var @default = new AliCloud.Ddos.BgpPolicy("default", new()
///     {
///         Content = new AliCloud.Ddos.Inputs.BgpPolicyContentArgs
///         {
///             EnableDefense = false,
///             Layer4RuleLists = new[]
///             {
///                 new AliCloud.Ddos.Inputs.BgpPolicyContentLayer4RuleListArgs
///                 {
///                     Method = "hex",
///                     Match = "1",
///                     Action = "1",
///                     Limited = 0,
///                     ConditionLists = new[]
///                     {
///                         new AliCloud.Ddos.Inputs.BgpPolicyContentLayer4RuleListConditionListArgs
///                         {
///                             Arg = "3C",
///                             Position = 1,
///                             Depth = 2,
///                         },
///                     },
///                     Name = "11",
///                     Priority = 10,
///                 },
///             },
///         },
///         Type = "l4",
///         PolicyName = "tf_exampleacc_bgp32594",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ddos"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_exampleacc_bgp32594"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		policyName := "example_l4_policy"
/// 		if param := cfg.Get("policyName"); param != "" {
/// 			policyName = param
/// 		}
/// 		_, err := ddos.NewBgpPolicy(ctx, "default", &ddos.BgpPolicyArgs{
/// 			Content: &ddos.BgpPolicyContentArgs{
/// 				EnableDefense: pulumi.Bool(false),
/// 				Layer4RuleLists: ddos.BgpPolicyContentLayer4RuleListArray{
/// 					&ddos.BgpPolicyContentLayer4RuleListArgs{
/// 						Method:  pulumi.String("hex"),
/// 						Match:   pulumi.String("1"),
/// 						Action:  pulumi.String("1"),
/// 						Limited: pulumi.Int(0),
/// 						ConditionLists: ddos.BgpPolicyContentLayer4RuleListConditionListArray{
/// 							&ddos.BgpPolicyContentLayer4RuleListConditionListArgs{
/// 								Arg:      pulumi.String("3C"),
/// 								Position: pulumi.Int(1),
/// 								Depth:    pulumi.Int(2),
/// 							},
/// 						},
/// 						Name:     pulumi.String("11"),
/// 						Priority: pulumi.Int(10),
/// 					},
/// 				},
/// 			},
/// 			Type:       pulumi.String("l4"),
/// 			PolicyName: pulumi.String("tf_exampleacc_bgp32594"),
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
/// import com.pulumi.alicloud.ddos.BgpPolicy;
/// import com.pulumi.alicloud.ddos.BgpPolicyArgs;
/// import com.pulumi.alicloud.ddos.inputs.BgpPolicyContentArgs;
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
///         final var name = config.get("name").orElse("tf_exampleacc_bgp32594");
///         final var policyName = config.get("policyName").orElse("example_l4_policy");
///         var default_ = new BgpPolicy("default", BgpPolicyArgs.builder()
///             .content(BgpPolicyContentArgs.builder()
///                 .enableDefense(false)
///                 .layer4RuleLists(BgpPolicyContentLayer4RuleListArgs.builder()
///                     .method("hex")
///                     .match("1")
///                     .action("1")
///                     .limited(0)
///                     .conditionLists(BgpPolicyContentLayer4RuleListConditionListArgs.builder()
///                         .arg("3C")
///                         .position(1)
///                         .depth(2)
///                         .build())
///                     .name("11")
///                     .priority(10)
///                     .build())
///                 .build())
///             .type("l4")
///             .policyName("tf_exampleacc_bgp32594")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_exampleacc_bgp32594
///   policyName:
///     type: string
///     default: example_l4_policy
/// resources:
///   default:
///     type: alicloud:ddos:BgpPolicy
///     properties:
///       content:
///         enableDefense: 'false'
///         layer4RuleLists:
///           - method: hex
///             match: '1'
///             action: '1'
///             limited: '0'
///             conditionLists:
///               - arg: 3C
///                 position: '1'
///                 depth: '2'
///             name: '11'
///             priority: '10'
///       type: l4
///       policyName: tf_exampleacc_bgp32594
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Ddos Bgp Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ddos/bgpPolicy:BgpPolicy example <id>
/// ```
class BgpPolicy extends pulumi.CustomResource {
  /// Configuration Content See `content` below.
  late final pulumi.Output<BgpPolicyContent> content;

  /// The name of the resource
  late final pulumi.Output<String> policyName;

  /// Type
  late final pulumi.Output<String> type;

  /// Creates a new [BgpPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BgpPolicy]. {@macro pulumi_ddos_bgp_policy_bgp_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BgpPolicy(
    String name, {
    BgpPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ddos/bgpPolicy:BgpPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    content = registerOutput<BgpPolicyContent>(
      'content',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BgpPolicyContent.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    policyName = registerOutput<String>('policyName');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [BgpPolicy] resource's state with the given [name] and [id].
  static BgpPolicy get(
    String name,
    pulumi.Input<String> id, {
    BgpPolicyState? state,
  }) {
    return BgpPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BgpPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ddos/bgpPolicy:BgpPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    content = registerOutput<BgpPolicyContent>(
      'content',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BgpPolicyContent.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    policyName = registerOutput<String>('policyName');
    type = registerOutput<String>('type');
  }
}
