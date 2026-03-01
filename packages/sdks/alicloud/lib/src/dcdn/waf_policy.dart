import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_policy_args.dart';
import 'waf_policy_state.dart';

/// Provides a DCDN Waf Policy resource.
///
/// For information about DCDN Waf Policy and how to use it, see [What is Waf Policy](https://www.alibabacloud.com/help/en/dcdn/developer-reference/api-dcdn-2018-01-15-createdcdnwafpolicy).
///
/// > **NOTE:** Available since v1.184.0.
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
/// const name = config.get("name") || "tf_example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const example = new alicloud.dcdn.WafPolicy("example", {
///     defenseScene: "waf_group",
///     policyName: `${name}_${_default.result}`,
///     policyType: "custom",
///     status: "on",
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
///     name = "tf_example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// example = alicloud.dcdn.WafPolicy("example",
///     defense_scene="waf_group",
///     policy_name=f"{name}_{default['result']}",
///     policy_type="custom",
///     status="on")
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
///     var name = config.Get("name") ?? "tf_example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var example = new AliCloud.Dcdn.WafPolicy("example", new()
///     {
///         DefenseScene = "waf_group",
///         PolicyName = $"{name}_{@default.Result}",
///         PolicyType = "custom",
///         Status = "on",
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
/// 		name := "tf_example"
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
/// 		_, err = dcdn.NewWafPolicy(ctx, "example", &dcdn.WafPolicyArgs{
/// 			DefenseScene: pulumi.String("waf_group"),
/// 			PolicyName:   pulumi.Sprintf("%v_%v", name, _default.Result),
/// 			PolicyType:   pulumi.String("custom"),
/// 			Status:       pulumi.String("on"),
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
/// import com.pulumi.alicloud.dcdn.WafPolicy;
/// import com.pulumi.alicloud.dcdn.WafPolicyArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var example = new WafPolicy("example", WafPolicyArgs.builder()
///             .defenseScene("waf_group")
///             .policyName(String.format("%s_%s", name,default_.result()))
///             .policyType("custom")
///             .status("on")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   example:
///     type: alicloud:dcdn:WafPolicy
///     properties:
///       defenseScene: waf_group
///       policyName: ${name}_${default.result}
///       policyType: custom
///       status: on
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DCDN Waf Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dcdn/wafPolicy:WafPolicy example <id>
/// ```
class WafPolicy extends pulumi.CustomResource {
  /// The type of protection policy. Valid values: `waf_group`, `custom_acl`, `whitelist`, `ip_blacklist`, `region_block`.
  late final pulumi.Output<String> defenseScene;
  /// The name of the protection policy. The name must be 1 to 64 characters in length, and can contain letters, digits,and underscores (_).
  late final pulumi.Output<String> policyName;
  /// The type of the protection policy. Valid values: `default`, `custom`.
  late final pulumi.Output<String> policyType;
  /// The status of the resource. Valid values: `on`, `off`.
  late final pulumi.Output<String> status;

  /// Creates a new [WafPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WafPolicy]. {@macro pulumi_dcdn_waf_policy_waf_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WafPolicy(
    String name, {
    WafPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dcdn/wafPolicy:WafPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.defenseScene = registerOutput<String>('defenseScene');
    this.policyName = registerOutput<String>('policyName');
    this.policyType = registerOutput<String>('policyType');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [WafPolicy] resource's state with the given [name] and [id].
  static WafPolicy get(
    String name,
    pulumi.Input<String> id, {
    WafPolicyState? state,
  }) {
    return WafPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WafPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dcdn/wafPolicy:WafPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.defenseScene = registerOutput<String>('defenseScene');
    this.policyName = registerOutput<String>('policyName');
    this.policyType = registerOutput<String>('policyType');
    this.status = registerOutput<String>('status');
  }
}
