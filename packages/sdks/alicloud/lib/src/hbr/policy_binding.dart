import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_binding_advanced_options.dart';
import 'policy_binding_args.dart';
import 'policy_binding_state.dart';

/// Provides a Hybrid Backup Recovery (HBR) Policy Binding resource.
///
/// A policy binding relationship consists of a data source, a policy, and binding options.
///
/// For information about Hybrid Backup Recovery (HBR) Policy Binding and how to use it, see [What is Policy Binding](https://www.alibabacloud.com/help/en/cloud-backup/developer-reference/api-hbr-2017-09-08-createpolicybindings).
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
/// const defaultKtt2XY = new alicloud.oss.Bucket("defaultKtt2XY", {
///     storageClass: "Standard",
///     bucket: `example-value-${_default.result}`,
/// });
/// const defaultPolicyBinding = new alicloud.hbr.PolicyBinding("default", {
///     sourceType: "OSS",
///     disabled: false,
///     policyId: defaultoqWvHQ.id,
///     dataSourceId: defaultKtt2XY.bucket,
///     policyBindingDescription: "policy binding example (update)",
///     source: "prefix-example-update/",
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
/// default_ktt2_xy = alicloud.oss.Bucket("defaultKtt2XY",
///     storage_class="Standard",
///     bucket=f"example-value-{default['result']}")
/// default_policy_binding = alicloud.hbr.PolicyBinding("default",
///     source_type="OSS",
///     disabled=False,
///     policy_id=defaultoq_wv_hq.id,
///     data_source_id=default_ktt2_xy.bucket,
///     policy_binding_description="policy binding example (update)",
///     source="prefix-example-update/")
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
///     var defaultKtt2XY = new AliCloud.Oss.Bucket("defaultKtt2XY", new()
///     {
///         StorageClass = "Standard",
///         BucketName = $"example-value-{@default.Result}",
///     });
///
///     var defaultPolicyBinding = new AliCloud.Hbr.PolicyBinding("default", new()
///     {
///         SourceType = "OSS",
///         Disabled = false,
///         PolicyId = defaultoqWvHQ.Id,
///         DataSourceId = defaultKtt2XY.BucketName,
///         PolicyBindingDescription = "policy binding example (update)",
///         Source = "prefix-example-update/",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
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
/// 		defaultoqWvHQ, err := hbr.NewPolicy(ctx, "defaultoqWvHQ", &hbr.PolicyArgs{
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
/// 		defaultKtt2XY, err := oss.NewBucket(ctx, "defaultKtt2XY", &oss.BucketArgs{
/// 			StorageClass: pulumi.String("Standard"),
/// 			Bucket:       pulumi.Sprintf("example-value-%v", _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hbr.NewPolicyBinding(ctx, "default", &hbr.PolicyBindingArgs{
/// 			SourceType:               pulumi.String("OSS"),
/// 			Disabled:                 pulumi.Bool(false),
/// 			PolicyId:                 defaultoqWvHQ.ID(),
/// 			DataSourceId:             defaultKtt2XY.Bucket,
/// 			PolicyBindingDescription: pulumi.String("policy binding example (update)"),
/// 			Source:                   pulumi.String("prefix-example-update/"),
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
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.hbr.PolicyBinding;
/// import com.pulumi.alicloud.hbr.PolicyBindingArgs;
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
///         var defaultKtt2XY = new Bucket("defaultKtt2XY", BucketArgs.builder()
///             .storageClass("Standard")
///             .bucket(String.format("example-value-%s", default_.result()))
///             .build());
///
///         var defaultPolicyBinding = new PolicyBinding("defaultPolicyBinding", PolicyBindingArgs.builder()
///             .sourceType("OSS")
///             .disabled(false)
///             .policyId(defaultoqWvHQ.id())
///             .dataSourceId(defaultKtt2XY.bucket())
///             .policyBindingDescription("policy binding example (update)")
///             .source("prefix-example-update/")
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
///   defaultKtt2XY:
///     type: alicloud:oss:Bucket
///     properties:
///       storageClass: Standard
///       bucket: example-value-${default.result}
///   defaultPolicyBinding:
///     type: alicloud:hbr:PolicyBinding
///     name: default
///     properties:
///       sourceType: OSS
///       disabled: 'false'
///       policyId: ${defaultoqWvHQ.id}
///       dataSourceId: ${defaultKtt2XY.bucket}
///       policyBindingDescription: policy binding example (update)
///       source: prefix-example-update/
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Hybrid Backup Recovery (HBR) Policy Binding can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:hbr/policyBinding:PolicyBinding example <policy_id>:<source_type>:<data_source_id>
/// ```
class PolicyBinding extends pulumi.CustomResource {
  /// Backup Advanced Options See `advanced_options` below.
  late final pulumi.Output<PolicyBindingAdvancedOptions> advancedOptions;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// Valid only when CrossAccountType = CROSS_ACCOUNT, indicating the name of the cross-account authorization role of the data source, and the management account uses this role to access the data source.
  late final pulumi.Output<String?> crossAccountRoleName;
  /// Cross-account type, supported
  late final pulumi.Output<String> crossAccountType;
  /// Valid only when CrossAccountType = CROSS_ACCOUNT, indicating the ID of the actual account to which the data source belongs.
  late final pulumi.Output<int?> crossAccountUserId;
  /// The data source ID.
  late final pulumi.Output<String> dataSourceId;
  /// Whether the policy is effective for the data source.
  /// - true: Pause
  /// - false: not paused
  late final pulumi.Output<bool?> disabled;
  /// This parameter is required only when the value of SourceType is ECS_FILE or File. Indicates a file type that does not need to be backed up. All files of this type are not backed up. A maximum of 255 characters is supported.
  late final pulumi.Output<String?> exclude;
  /// This parameter is required only when the value of SourceType is ECS_FILE or File. Indicates the file types to be backed up, and all files of these types are backed up. A maximum of 255 characters is supported.
  late final pulumi.Output<String?> include;
  /// Resource Description
  late final pulumi.Output<String?> policyBindingDescription;
  /// The policy ID.
  late final pulumi.Output<String> policyId;
  /// When SourceType is OSS, a prefix is specified to be backed up. If it is not specified, the entire root directory of the Bucket is backed up.
  late final pulumi.Output<String?> source;
  /// Data source type, value range:
  /// - `UDM_ECS`: indicates the ECS instance backup.
  /// - `OSS`: indicates an OSS backup.
  /// - `NAS`: indicates an Alibaba Cloud NAS Backup. When you bind a file system to a policy, Cloud Backup automatically creates a mount point for the file system. If you no longer need the mount point, delete it manually.
  /// - `ECS_FILE`: indicates that the ECS file is backed up.
  /// - `File`: indicates a local File backup.
  /// - `OTS`: indicates the Tablestore backup.
  late final pulumi.Output<String> sourceType;
  /// This parameter is required only when the value of SourceType is ECS_FILE or File. Indicates backup flow control. The format is {start}{end}{bandwidth}. Multiple flow control configurations use partitioning, and no overlap in configuration time is allowed. start: start hour. end: end of hour. bandwidth: limit rate, in KB/s.
  late final pulumi.Output<String?> speedLimit;

  /// Creates a new [PolicyBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyBinding]. {@macro pulumi_hbr_policy_binding_policy_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyBinding(
    String name, {
    PolicyBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hbr/policyBinding:PolicyBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.advancedOptions = registerOutput<PolicyBindingAdvancedOptions>('advancedOptions');
    this.createTime = registerOutput<String>('createTime');
    this.crossAccountRoleName = registerOutput<String?>('crossAccountRoleName');
    this.crossAccountType = registerOutput<String>('crossAccountType');
    this.crossAccountUserId = registerOutput<int?>('crossAccountUserId');
    this.dataSourceId = registerOutput<String>('dataSourceId');
    this.disabled = registerOutput<bool?>('disabled');
    this.exclude = registerOutput<String?>('exclude');
    this.include = registerOutput<String?>('include');
    this.policyBindingDescription = registerOutput<String?>('policyBindingDescription');
    this.policyId = registerOutput<String>('policyId');
    this.source = registerOutput<String?>('source');
    this.sourceType = registerOutput<String>('sourceType');
    this.speedLimit = registerOutput<String?>('speedLimit');
  }

  /// Gets an existing [PolicyBinding] resource's state with the given [name] and [id].
  static PolicyBinding get(
    String name,
    pulumi.Input<String> id, {
    PolicyBindingState? state,
  }) {
    return PolicyBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PolicyBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hbr/policyBinding:PolicyBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.advancedOptions = registerOutput<PolicyBindingAdvancedOptions>('advancedOptions');
    this.createTime = registerOutput<String>('createTime');
    this.crossAccountRoleName = registerOutput<String?>('crossAccountRoleName');
    this.crossAccountType = registerOutput<String>('crossAccountType');
    this.crossAccountUserId = registerOutput<int?>('crossAccountUserId');
    this.dataSourceId = registerOutput<String>('dataSourceId');
    this.disabled = registerOutput<bool?>('disabled');
    this.exclude = registerOutput<String?>('exclude');
    this.include = registerOutput<String?>('include');
    this.policyBindingDescription = registerOutput<String?>('policyBindingDescription');
    this.policyId = registerOutput<String>('policyId');
    this.source = registerOutput<String?>('source');
    this.sourceType = registerOutput<String>('sourceType');
    this.speedLimit = registerOutput<String?>('speedLimit');
  }
}
