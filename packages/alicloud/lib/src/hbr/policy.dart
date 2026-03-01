import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';
import 'policy_rule.dart';

/// Provides a Hybrid Backup Recovery (HBR) Policy resource.
///
///
///
/// For information about Hybrid Backup Recovery (HBR) Policy and how to use it, see [What is Policy](https://www.alibabacloud.com/help/en/cloud-backup/developer-reference/api-hbr-2017-09-08-createpolicyv2).
///
/// > **NOTE:** Available since v1.221.0.
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
///     max: 99999,
///     min: 10000,
/// });
/// const defaultyk84Hc = new alicloud.hbr.Vault("defaultyk84Hc", {
///     vaultType: "STANDARD",
///     vaultName: `example-value-${_default.result}`,
/// });
/// const defaultoqWvHQ = new alicloud.hbr.Policy("defaultoqWvHQ", {
///     policyName: `example-value-${_default.result}`,
///     rules: [{
///         ruleType: "BACKUP",
///         backupType: "COMPLETE",
///         schedule: "I|1631685600|P1D",
///         retention: 7,
///         archiveDays: 0,
///         vaultId: defaultyk84Hc.id,
///     }],
///     policyDescription: "policy example",
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
///     max=99999,
///     min=10000)
/// defaultyk84_hc = alicloud.hbr.Vault("defaultyk84Hc",
///     vault_type="STANDARD",
///     vault_name=f"example-value-{default['result']}")
/// defaultoq_wv_hq = alicloud.hbr.Policy("defaultoqWvHQ",
///     policy_name=f"example-value-{default['result']}",
///     rules=[{
///         "rule_type": "BACKUP",
///         "backup_type": "COMPLETE",
///         "schedule": "I|1631685600|P1D",
///         "retention": 7,
///         "archive_days": 0,
///         "vault_id": defaultyk84_hc.id,
///     }],
///     policy_description="policy example")
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
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var defaultyk84Hc = new AliCloud.Hbr.Vault("defaultyk84Hc", new()
///     {
///         VaultType = "STANDARD",
///         VaultName = $"example-value-{@default.Result}",
///     });
///
///     var defaultoqWvHQ = new AliCloud.Hbr.Policy("defaultoqWvHQ", new()
///     {
///         PolicyName = $"example-value-{@default.Result}",
///         Rules = new[]
///         {
///             new AliCloud.Hbr.Inputs.PolicyRuleArgs
///             {
///                 RuleType = "BACKUP",
///                 BackupType = "COMPLETE",
///                 Schedule = "I|1631685600|P1D",
///                 Retention = 7,
///                 ArchiveDays = 0,
///                 VaultId = defaultyk84Hc.Id,
///             },
///         },
///         PolicyDescription = "policy example",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
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
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultyk84Hc, err := hbr.NewVault(ctx, "defaultyk84Hc", &hbr.VaultArgs{
/// 			VaultType: pulumi.String("STANDARD"),
/// 			VaultName: pulumi.Sprintf("example-value-%v", _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hbr.NewPolicy(ctx, "defaultoqWvHQ", &hbr.PolicyArgs{
/// 			PolicyName: pulumi.Sprintf("example-value-%v", _default.Result),
/// 			Rules: hbr.PolicyRuleArray{
/// 				&hbr.PolicyRuleArgs{
/// 					RuleType:    pulumi.String("BACKUP"),
/// 					BackupType:  pulumi.String("COMPLETE"),
/// 					Schedule:    pulumi.String("I|1631685600|P1D"),
/// 					Retention:   pulumi.Int(7),
/// 					ArchiveDays: pulumi.Int(0),
/// 					VaultId:     defaultyk84Hc.ID(),
/// 				},
/// 			},
/// 			PolicyDescription: pulumi.String("policy example"),
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
/// import com.pulumi.alicloud.hbr.Vault;
/// import com.pulumi.alicloud.hbr.VaultArgs;
/// import com.pulumi.alicloud.hbr.Policy;
/// import com.pulumi.alicloud.hbr.PolicyArgs;
/// import com.pulumi.alicloud.hbr.inputs.PolicyRuleArgs;
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
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var defaultyk84Hc = new Vault("defaultyk84Hc", VaultArgs.builder()
///             .vaultType("STANDARD")
///             .vaultName(String.format("example-value-%s", default_.result()))
///             .build());
///
///         var defaultoqWvHQ = new Policy("defaultoqWvHQ", PolicyArgs.builder()
///             .policyName(String.format("example-value-%s", default_.result()))
///             .rules(PolicyRuleArgs.builder()
///                 .ruleType("BACKUP")
///                 .backupType("COMPLETE")
///                 .schedule("I|1631685600|P1D")
///                 .retention(7)
///                 .archiveDays(0)
///                 .vaultId(defaultyk84Hc.id())
///                 .build())
///             .policyDescription("policy example")
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
///       max: 99999
///       min: 10000
///   defaultyk84Hc:
///     type: alicloud:hbr:Vault
///     properties:
///       vaultType: STANDARD
///       vaultName: example-value-${default.result}
///   defaultoqWvHQ:
///     type: alicloud:hbr:Policy
///     properties:
///       policyName: example-value-${default.result}
///       rules:
///         - ruleType: BACKUP
///           backupType: COMPLETE
///           schedule: I|1631685600|P1D
///           retention: '7'
///           archiveDays: '0'
///           vaultId: ${defaultyk84Hc.id}
///       policyDescription: policy example
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Hybrid Backup Recovery (HBR) Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:hbr/policy:Policy example <id>
/// ```
class Policy extends pulumi.CustomResource {
  /// Policy creation time
  late final pulumi.Output<String> createTime;
  /// The policy description.
  late final pulumi.Output<String?> policyDescription;
  /// Policy Name
  late final pulumi.Output<String?> policyName;
  /// The policy type. The UDM_ECS_ONLY and STANDARD types are supported. The policy with PolicyType = UDM_ECS_ONLY can only be used for ECS instances. The policy with PolicyType = STANDARD can only be used for data sources other than ECS instances.
  late final pulumi.Output<String> policyType;
  /// A list of policy rules See `rules` below.
  late final pulumi.Output<List<PolicyRule>?> rules;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_hbr_policy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hbr/policy:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.policyDescription = registerOutput<String?>('policyDescription');
    this.policyName = registerOutput<String?>('policyName');
    this.policyType = registerOutput<String>('policyType');
    this.rules = registerOutput<List<PolicyRule>?>('rules');
  }
}
