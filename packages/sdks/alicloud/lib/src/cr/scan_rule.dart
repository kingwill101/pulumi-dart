import 'package:pulumi/pulumi.dart' as pulumi;
import 'scan_rule_args.dart';
import 'scan_rule_state.dart';

/// Provides a CR Scan Rule resource.
///
/// Artifact Scan Rule.
///
/// For information about CR Scan Rule and how to use it, see [What is Scan Rule](https://next.api.alibabacloud.com/document/cr/2018-12-01/CreateScanRule).
///
/// > **NOTE:** Available since v1.265.0.
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
/// const default2Aqoce = new alicloud.cr.RegistryEnterpriseInstance("default2Aqoce", {
///     defaultOssBucket: "false",
///     renewalStatus: "ManualRenewal",
///     period: 1,
///     instanceName: "pl-example-2",
///     paymentType: "Subscription",
///     instanceType: "Basic",
/// });
/// const _default = new alicloud.cr.ScanRule("default", {
///     repoTagFilterPattern: ".*",
///     scanScope: "REPO",
///     triggerType: "MANUAL",
///     scanType: "VUL",
///     ruleName: name,
///     namespaces: ["aa"],
///     repoNames: [
///         "bb",
///         "cc",
///         "dd",
///         "ee",
///     ],
///     instanceId: default2Aqoce.id,
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
/// default2_aqoce = alicloud.cr.RegistryEnterpriseInstance("default2Aqoce",
///     default_oss_bucket="false",
///     renewal_status="ManualRenewal",
///     period=1,
///     instance_name="pl-example-2",
///     payment_type="Subscription",
///     instance_type="Basic")
/// default = alicloud.cr.ScanRule("default",
///     repo_tag_filter_pattern=".*",
///     scan_scope="REPO",
///     trigger_type="MANUAL",
///     scan_type="VUL",
///     rule_name=name,
///     namespaces=["aa"],
///     repo_names=[
///         "bb",
///         "cc",
///         "dd",
///         "ee",
///     ],
///     instance_id=default2_aqoce.id)
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
///     var default2Aqoce = new AliCloud.CR.RegistryEnterpriseInstance("default2Aqoce", new()
///     {
///         DefaultOssBucket = "false",
///         RenewalStatus = "ManualRenewal",
///         Period = 1,
///         InstanceName = "pl-example-2",
///         PaymentType = "Subscription",
///         InstanceType = "Basic",
///     });
///
///     var @default = new AliCloud.CR.ScanRule("default", new()
///     {
///         RepoTagFilterPattern = ".*",
///         ScanScope = "REPO",
///         TriggerType = "MANUAL",
///         ScanType = "VUL",
///         RuleName = name,
///         Namespaces = new[]
///         {
///             "aa",
///         },
///         RepoNames = new[]
///         {
///             "bb",
///             "cc",
///             "dd",
///             "ee",
///         },
///         InstanceId = default2Aqoce.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cr"
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
/// 		default2Aqoce, err := cr.NewRegistryEnterpriseInstance(ctx, "default2Aqoce", &cr.RegistryEnterpriseInstanceArgs{
/// 			DefaultOssBucket: pulumi.String("false"),
/// 			RenewalStatus:    pulumi.String("ManualRenewal"),
/// 			Period:           pulumi.Int(1),
/// 			InstanceName:     pulumi.String("pl-example-2"),
/// 			PaymentType:      pulumi.String("Subscription"),
/// 			InstanceType:     pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cr.NewScanRule(ctx, "default", &cr.ScanRuleArgs{
/// 			RepoTagFilterPattern: pulumi.String(".*"),
/// 			ScanScope:            pulumi.String("REPO"),
/// 			TriggerType:          pulumi.String("MANUAL"),
/// 			ScanType:             pulumi.String("VUL"),
/// 			RuleName:             pulumi.String(name),
/// 			Namespaces: pulumi.StringArray{
/// 				pulumi.String("aa"),
/// 			},
/// 			RepoNames: pulumi.StringArray{
/// 				pulumi.String("bb"),
/// 				pulumi.String("cc"),
/// 				pulumi.String("dd"),
/// 				pulumi.String("ee"),
/// 			},
/// 			InstanceId: default2Aqoce.ID(),
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
/// import com.pulumi.alicloud.cr.RegistryEnterpriseInstance;
/// import com.pulumi.alicloud.cr.RegistryEnterpriseInstanceArgs;
/// import com.pulumi.alicloud.cr.ScanRule;
/// import com.pulumi.alicloud.cr.ScanRuleArgs;
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
///         var default2Aqoce = new RegistryEnterpriseInstance("default2Aqoce", RegistryEnterpriseInstanceArgs.builder()
///             .defaultOssBucket("false")
///             .renewalStatus("ManualRenewal")
///             .period(1)
///             .instanceName("pl-example-2")
///             .paymentType("Subscription")
///             .instanceType("Basic")
///             .build());
///
///         var default_ = new ScanRule("default", ScanRuleArgs.builder()
///             .repoTagFilterPattern(".*")
///             .scanScope("REPO")
///             .triggerType("MANUAL")
///             .scanType("VUL")
///             .ruleName(name)
///             .namespaces("aa")
///             .repoNames(
///                 "bb",
///                 "cc",
///                 "dd",
///                 "ee")
///             .instanceId(default2Aqoce.id())
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
///   default2Aqoce:
///     type: alicloud:cr:RegistryEnterpriseInstance
///     properties:
///       defaultOssBucket: 'false'
///       renewalStatus: ManualRenewal
///       period: '1'
///       instanceName: pl-example-2
///       paymentType: Subscription
///       instanceType: Basic
///   default:
///     type: alicloud:cr:ScanRule
///     properties:
///       repoTagFilterPattern: .*
///       scanScope: REPO
///       triggerType: MANUAL
///       scanType: VUL
///       ruleName: ${name}
///       namespaces:
///         - aa
///       repoNames:
///         - bb
///         - cc
///         - dd
///         - ee
///       instanceId: ${default2Aqoce.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CR Scan Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cr/scanRule:ScanRule example <instance_id>:<scan_rule_id>
/// ```
class ScanRule extends pulumi.CustomResource {
  /// Creation time
  late final pulumi.Output<int> createTime;
  /// Instance ID
  late final pulumi.Output<String> instanceId;
  /// Set of namespaces:
  /// - This parameter must not be empty when the scan scope is NAMESPACE.
  /// - This parameter must contain exactly one namespace when the scan scope is REPO.
  late final pulumi.Output<List<String>?> namespaces;
  /// Repository list:
  /// - This parameter must be empty when the scan scope is NAMESPACE.
  /// - This parameter must not be empty when the scan scope is REPO.
  late final pulumi.Output<List<String>?> repoNames;
  /// Regular expression for matching tags that trigger a scan
  late final pulumi.Output<String> repoTagFilterPattern;
  /// Event rule name
  late final pulumi.Output<String> ruleName;
  /// Rule ID
  late final pulumi.Output<String> scanRuleId;
  /// Scan scope
  late final pulumi.Output<String> scanScope;
  /// Scan type:
  /// - `VUL`: Artifact vulnerability scan
  /// - `SBOM`: Artifact content analysis
  ///
  /// The default value of this parameter is `VUL`.
  late final pulumi.Output<String> scanType;
  /// Trigger type
  late final pulumi.Output<String> triggerType;

  /// Creates a new [ScanRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScanRule]. {@macro pulumi_cr_scan_rule_scan_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScanRule(
    String name, {
    ScanRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cr/scanRule:ScanRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<int>('createTime');
    this.instanceId = registerOutput<String>('instanceId');
    this.namespaces = registerOutput<List<String>?>('namespaces');
    this.repoNames = registerOutput<List<String>?>('repoNames');
    this.repoTagFilterPattern = registerOutput<String>('repoTagFilterPattern');
    this.ruleName = registerOutput<String>('ruleName');
    this.scanRuleId = registerOutput<String>('scanRuleId');
    this.scanScope = registerOutput<String>('scanScope');
    this.scanType = registerOutput<String>('scanType');
    this.triggerType = registerOutput<String>('triggerType');
  }

  /// Gets an existing [ScanRule] resource's state with the given [name] and [id].
  static ScanRule get(
    String name,
    pulumi.Input<String> id, {
    ScanRuleState? state,
  }) {
    return ScanRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ScanRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cr/scanRule:ScanRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<int>('createTime');
    this.instanceId = registerOutput<String>('instanceId');
    this.namespaces = registerOutput<List<String>?>('namespaces');
    this.repoNames = registerOutput<List<String>?>('repoNames');
    this.repoTagFilterPattern = registerOutput<String>('repoTagFilterPattern');
    this.ruleName = registerOutput<String>('ruleName');
    this.scanRuleId = registerOutput<String>('scanRuleId');
    this.scanScope = registerOutput<String>('scanScope');
    this.scanType = registerOutput<String>('scanType');
    this.triggerType = registerOutput<String>('triggerType');
  }
}
