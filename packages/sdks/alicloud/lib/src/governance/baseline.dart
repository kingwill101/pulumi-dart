import 'package:pulumi/pulumi.dart' as pulumi;
import 'baseline_args.dart';
import 'baseline_baseline_item.dart';
import 'baseline_state.dart';

/// Provides a Governance Baseline resource.
///
/// Account Factory Baseline.
///
/// For information about Governance Baseline and how to use it, see [What is Baseline](https://next.api.aliyun.com/document/governance/2021-01-20/CreateAccountFactoryBaseline).
///
/// > **NOTE:** Available since v1.228.0.
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
/// const itemPasswordPolicy = config.get("itemPasswordPolicy") || "ACS-BP_ACCOUNT_FACTORY_RAM_USER_PASSWORD_POLICY";
/// const baselineNameUpdate = config.get("baselineNameUpdate") || "tf-auto-example-baseline-update";
/// const itemServices = config.get("itemServices") || "ACS-BP_ACCOUNT_FACTORY_SUBSCRIBE_SERVICES";
/// const baselineName = config.get("baselineName") || "tf-auto-example-baseline";
/// const itemRamSecurity = config.get("itemRamSecurity") || "ACS-BP_ACCOUNT_FACTORY_RAM_SECURITY_PREFERENCE";
/// const defaultBaseline = new alicloud.governance.Baseline("default", {
///     baselineItems: [{
///         version: "1.0",
///         name: itemPasswordPolicy,
///         config: JSON.stringify({
///             MinimumPasswordLength: 8,
///             RequireLowercaseCharacters: true,
///             RequireUppercaseCharacters: true,
///             RequireNumbers: true,
///             RequireSymbols: true,
///             MaxPasswordAge: 0,
///             HardExpiry: false,
///             PasswordReusePrevention: 0,
///             MaxLoginAttempts: 0,
///         }),
///     }],
///     description: name,
///     baselineName: `${name}-${_default.result}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
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
/// item_password_policy = config.get("itemPasswordPolicy")
/// if item_password_policy is None:
///     item_password_policy = "ACS-BP_ACCOUNT_FACTORY_RAM_USER_PASSWORD_POLICY"
/// baseline_name_update = config.get("baselineNameUpdate")
/// if baseline_name_update is None:
///     baseline_name_update = "tf-auto-example-baseline-update"
/// item_services = config.get("itemServices")
/// if item_services is None:
///     item_services = "ACS-BP_ACCOUNT_FACTORY_SUBSCRIBE_SERVICES"
/// baseline_name = config.get("baselineName")
/// if baseline_name is None:
///     baseline_name = "tf-auto-example-baseline"
/// item_ram_security = config.get("itemRamSecurity")
/// if item_ram_security is None:
///     item_ram_security = "ACS-BP_ACCOUNT_FACTORY_RAM_SECURITY_PREFERENCE"
/// default_baseline = alicloud.governance.Baseline("default",
///     baseline_items=[{
///         "version": "1.0",
///         "name": item_password_policy,
///         "config": json.dumps({
///             "MinimumPasswordLength": 8,
///             "RequireLowercaseCharacters": True,
///             "RequireUppercaseCharacters": True,
///             "RequireNumbers": True,
///             "RequireSymbols": True,
///             "MaxPasswordAge": 0,
///             "HardExpiry": False,
///             "PasswordReusePrevention": 0,
///             "MaxLoginAttempts": 0,
///         }),
///     }],
///     description=name,
///     baseline_name=f"{name}-{default['result']}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
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
///     var itemPasswordPolicy = config.Get("itemPasswordPolicy") ?? "ACS-BP_ACCOUNT_FACTORY_RAM_USER_PASSWORD_POLICY";
///     var baselineNameUpdate = config.Get("baselineNameUpdate") ?? "tf-auto-example-baseline-update";
///     var itemServices = config.Get("itemServices") ?? "ACS-BP_ACCOUNT_FACTORY_SUBSCRIBE_SERVICES";
///     var baselineName = config.Get("baselineName") ?? "tf-auto-example-baseline";
///     var itemRamSecurity = config.Get("itemRamSecurity") ?? "ACS-BP_ACCOUNT_FACTORY_RAM_SECURITY_PREFERENCE";
///     var defaultBaseline = new AliCloud.Governance.Baseline("default", new()
///     {
///         BaselineItems = new[]
///         {
///             new AliCloud.Governance.Inputs.BaselineBaselineItemArgs
///             {
///                 Version = "1.0",
///                 Name = itemPasswordPolicy,
///                 Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["MinimumPasswordLength"] = 8,
///                     ["RequireLowercaseCharacters"] = true,
///                     ["RequireUppercaseCharacters"] = true,
///                     ["RequireNumbers"] = true,
///                     ["RequireSymbols"] = true,
///                     ["MaxPasswordAge"] = 0,
///                     ["HardExpiry"] = false,
///                     ["PasswordReusePrevention"] = 0,
///                     ["MaxLoginAttempts"] = 0,
///                 }),
///             },
///         },
///         Description = name,
///         BaselineName = $"{name}-{@default.Result}",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/governance"
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
/// 		itemPasswordPolicy := "ACS-BP_ACCOUNT_FACTORY_RAM_USER_PASSWORD_POLICY"
/// 		if param := cfg.Get("itemPasswordPolicy"); param != "" {
/// 			itemPasswordPolicy = param
/// 		}
/// 		baselineNameUpdate := "tf-auto-example-baseline-update"
/// 		if param := cfg.Get("baselineNameUpdate"); param != "" {
/// 			baselineNameUpdate = param
/// 		}
/// 		itemServices := "ACS-BP_ACCOUNT_FACTORY_SUBSCRIBE_SERVICES"
/// 		if param := cfg.Get("itemServices"); param != "" {
/// 			itemServices = param
/// 		}
/// 		baselineName := "tf-auto-example-baseline"
/// 		if param := cfg.Get("baselineName"); param != "" {
/// 			baselineName = param
/// 		}
/// 		itemRamSecurity := "ACS-BP_ACCOUNT_FACTORY_RAM_SECURITY_PREFERENCE"
/// 		if param := cfg.Get("itemRamSecurity"); param != "" {
/// 			itemRamSecurity = param
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"MinimumPasswordLength":      8,
/// 			"RequireLowercaseCharacters": true,
/// 			"RequireUppercaseCharacters": true,
/// 			"RequireNumbers":             true,
/// 			"RequireSymbols":             true,
/// 			"MaxPasswordAge":             0,
/// 			"HardExpiry":                 false,
/// 			"PasswordReusePrevention":    0,
/// 			"MaxLoginAttempts":           0,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = governance.NewBaseline(ctx, "default", &governance.BaselineArgs{
/// 			BaselineItems: governance.BaselineBaselineItemArray{
/// 				&governance.BaselineBaselineItemArgs{
/// 					Version: pulumi.String("1.0"),
/// 					Name:    pulumi.String(itemPasswordPolicy),
/// 					Config:  pulumi.String(json0),
/// 				},
/// 			},
/// 			Description:  pulumi.String(name),
/// 			BaselineName: pulumi.Sprintf("%v-%v", name, _default.Result),
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
/// import com.pulumi.alicloud.governance.Baseline;
/// import com.pulumi.alicloud.governance.BaselineArgs;
/// import com.pulumi.alicloud.governance.inputs.BaselineBaselineItemArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var itemPasswordPolicy = config.get("itemPasswordPolicy").orElse("ACS-BP_ACCOUNT_FACTORY_RAM_USER_PASSWORD_POLICY");
///         final var baselineNameUpdate = config.get("baselineNameUpdate").orElse("tf-auto-example-baseline-update");
///         final var itemServices = config.get("itemServices").orElse("ACS-BP_ACCOUNT_FACTORY_SUBSCRIBE_SERVICES");
///         final var baselineName = config.get("baselineName").orElse("tf-auto-example-baseline");
///         final var itemRamSecurity = config.get("itemRamSecurity").orElse("ACS-BP_ACCOUNT_FACTORY_RAM_SECURITY_PREFERENCE");
///         var defaultBaseline = new Baseline("defaultBaseline", BaselineArgs.builder()
///             .baselineItems(BaselineBaselineItemArgs.builder()
///                 .version("1.0")
///                 .name(itemPasswordPolicy)
///                 .config(serializeJson(
///                     jsonObject(
///                         jsonProperty("MinimumPasswordLength", 8),
///                         jsonProperty("RequireLowercaseCharacters", true),
///                         jsonProperty("RequireUppercaseCharacters", true),
///                         jsonProperty("RequireNumbers", true),
///                         jsonProperty("RequireSymbols", true),
///                         jsonProperty("MaxPasswordAge", 0),
///                         jsonProperty("HardExpiry", false),
///                         jsonProperty("PasswordReusePrevention", 0),
///                         jsonProperty("MaxLoginAttempts", 0)
///                     )))
///                 .build())
///             .description(name)
///             .baselineName(String.format("%s-%s", name,default_.result()))
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
///   itemPasswordPolicy:
///     type: string
///     default: ACS-BP_ACCOUNT_FACTORY_RAM_USER_PASSWORD_POLICY
///   baselineNameUpdate:
///     type: string
///     default: tf-auto-example-baseline-update
///   itemServices:
///     type: string
///     default: ACS-BP_ACCOUNT_FACTORY_SUBSCRIBE_SERVICES
///   baselineName:
///     type: string
///     default: tf-auto-example-baseline
///   itemRamSecurity:
///     type: string
///     default: ACS-BP_ACCOUNT_FACTORY_RAM_SECURITY_PREFERENCE
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultBaseline:
///     type: alicloud:governance:Baseline
///     name: default
///     properties:
///       baselineItems:
///         - version: '1.0'
///           name: ${itemPasswordPolicy}
///           config:
///             fn::toJSON:
///               MinimumPasswordLength: 8
///               RequireLowercaseCharacters: true
///               RequireUppercaseCharacters: true
///               RequireNumbers: true
///               RequireSymbols: true
///               MaxPasswordAge: 0
///               HardExpiry: false
///               PasswordReusePrevention: 0
///               MaxLoginAttempts: 0
///       description: ${name}
///       baselineName: ${name}-${default.result}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Governance Baseline can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:governance/baseline:Baseline example <id>
/// ```
class Baseline extends pulumi.CustomResource {
  /// List of baseline items.
  ///
  /// You can invoke [ListAccountFactoryBaselineItems](https://next.api.aliyun.com/document/governance/2021-01-20/ListAccountFactoryBaselineItems) to get a list of account factory baseline items supported by the Cloud Governance Center. See `baseline_items` below.
  late final pulumi.Output<List<BaselineBaselineItem>?> baselineItems;
  /// Baseline Name.
  late final pulumi.Output<String?> baselineName;
  /// Baseline Description.
  late final pulumi.Output<String?> description;

  /// Creates a new [Baseline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Baseline]. {@macro pulumi_governance_baseline_baseline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Baseline(
    String name, {
    BaselineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:governance/baseline:Baseline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.baselineItems = registerOutput<List<BaselineBaselineItem>?>('baselineItems');
    this.baselineName = registerOutput<String?>('baselineName');
    this.description = registerOutput<String?>('description');
  }

  /// Gets an existing [Baseline] resource's state with the given [name] and [id].
  static Baseline get(
    String name,
    pulumi.Input<String> id, {
    BaselineState? state,
  }) {
    return Baseline._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Baseline._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:governance/baseline:Baseline',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.baselineItems = registerOutput<List<BaselineBaselineItem>?>('baselineItems');
    this.baselineName = registerOutput<String?>('baselineName');
    this.description = registerOutput<String?>('description');
  }
}
