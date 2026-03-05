import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_enterprise_sync_rule_args.dart';
import 'registry_enterprise_sync_rule_state.dart';

/// Provides a Container Registry Sync Rule resource.
///
/// For information about Container Registry Sync Rule and how to use it, see [What is Sync Rule](https://www.alibabacloud.com/help/en/acr/developer-reference/api-cr-2018-12-01-createreposyncrule)
///
/// &gt; **NOTE:** Available since v1.90.0.
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
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const source = new alicloud.cr.RegistryEnterpriseInstance("source", {
///     paymentType: "Subscription",
///     period: 1,
///     renewPeriod: 0,
///     renewalStatus: "ManualRenewal",
///     instanceType: "Advanced",
///     instanceName: `${name}-source-${defaultInteger.result}`,
/// });
/// const target = new alicloud.cr.RegistryEnterpriseInstance("target", {
///     paymentType: "Subscription",
///     period: 1,
///     renewPeriod: 0,
///     renewalStatus: "ManualRenewal",
///     instanceType: "Advanced",
///     instanceName: `${name}-target-${defaultInteger.result}`,
/// });
/// const sourceRegistryEnterpriseNamespace = new alicloud.cs.RegistryEnterpriseNamespace("source", {
///     instanceId: source.id,
///     name: `${name}-${defaultInteger.result}`,
///     autoCreate: false,
///     defaultVisibility: "PUBLIC",
/// });
/// const targetRegistryEnterpriseNamespace = new alicloud.cs.RegistryEnterpriseNamespace("target", {
///     instanceId: target.id,
///     name: `${name}-${defaultInteger.result}`,
///     autoCreate: false,
///     defaultVisibility: "PUBLIC",
/// });
/// const sourceRegistryEnterpriseRepo = new alicloud.cs.RegistryEnterpriseRepo("source", {
///     instanceId: source.id,
///     namespace: sourceRegistryEnterpriseNamespace.name,
///     name: `${name}-${defaultInteger.result}`,
///     summary: "this is summary of my new repo",
///     repoType: "PUBLIC",
/// });
/// const targetRegistryEnterpriseRepo = new alicloud.cs.RegistryEnterpriseRepo("target", {
///     instanceId: target.id,
///     namespace: targetRegistryEnterpriseNamespace.name,
///     name: `${name}-${defaultInteger.result}`,
///     summary: "this is summary of my new repo",
///     repoType: "PUBLIC",
/// });
/// const defaultRegistryEnterpriseSyncRule = new alicloud.cs.RegistryEnterpriseSyncRule("default", {
///     instanceId: source.id,
///     namespaceName: sourceRegistryEnterpriseNamespace.name,
///     syncRuleName: `${name}-${defaultInteger.result}`,
///     targetInstanceId: target.id,
///     targetNamespaceName: targetRegistryEnterpriseNamespace.name,
///     targetRegionId: _default.then(_default => _default.regions?.[0]?.id),
///     tagFilter: ".*",
///     repoName: sourceRegistryEnterpriseRepo.name,
///     targetRepoName: targetRegistryEnterpriseRepo.name,
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
/// default = alicloud.get_regions(current=True)
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// source = alicloud.cr.RegistryEnterpriseInstance("source",
///     payment_type="Subscription",
///     period=1,
///     renew_period=0,
///     renewal_status="ManualRenewal",
///     instance_type="Advanced",
///     instance_name=f"{name}-source-{default_integer['result']}")
/// target = alicloud.cr.RegistryEnterpriseInstance("target",
///     payment_type="Subscription",
///     period=1,
///     renew_period=0,
///     renewal_status="ManualRenewal",
///     instance_type="Advanced",
///     instance_name=f"{name}-target-{default_integer['result']}")
/// source_registry_enterprise_namespace = alicloud.cs.RegistryEnterpriseNamespace("source",
///     instance_id=source.id,
///     name=f"{name}-{default_integer['result']}",
///     auto_create=False,
///     default_visibility="PUBLIC")
/// target_registry_enterprise_namespace = alicloud.cs.RegistryEnterpriseNamespace("target",
///     instance_id=target.id,
///     name=f"{name}-{default_integer['result']}",
///     auto_create=False,
///     default_visibility="PUBLIC")
/// source_registry_enterprise_repo = alicloud.cs.RegistryEnterpriseRepo("source",
///     instance_id=source.id,
///     namespace=source_registry_enterprise_namespace.name,
///     name=f"{name}-{default_integer['result']}",
///     summary="this is summary of my new repo",
///     repo_type="PUBLIC")
/// target_registry_enterprise_repo = alicloud.cs.RegistryEnterpriseRepo("target",
///     instance_id=target.id,
///     namespace=target_registry_enterprise_namespace.name,
///     name=f"{name}-{default_integer['result']}",
///     summary="this is summary of my new repo",
///     repo_type="PUBLIC")
/// default_registry_enterprise_sync_rule = alicloud.cs.RegistryEnterpriseSyncRule("default",
///     instance_id=source.id,
///     namespace_name=source_registry_enterprise_namespace.name,
///     sync_rule_name=f"{name}-{default_integer['result']}",
///     target_instance_id=target.id,
///     target_namespace_name=target_registry_enterprise_namespace.name,
///     target_region_id=default.regions[0].id,
///     tag_filter=".*",
///     repo_name=source_registry_enterprise_repo.name,
///     target_repo_name=target_registry_enterprise_repo.name)
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
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var source = new AliCloud.CR.RegistryEnterpriseInstance("source", new()
///     {
///         PaymentType = "Subscription",
///         Period = 1,
///         RenewPeriod = 0,
///         RenewalStatus = "ManualRenewal",
///         InstanceType = "Advanced",
///         InstanceName = $"{name}-source-{defaultInteger.Result}",
///     });
///
///     var target = new AliCloud.CR.RegistryEnterpriseInstance("target", new()
///     {
///         PaymentType = "Subscription",
///         Period = 1,
///         RenewPeriod = 0,
///         RenewalStatus = "ManualRenewal",
///         InstanceType = "Advanced",
///         InstanceName = $"{name}-target-{defaultInteger.Result}",
///     });
///
///     var sourceRegistryEnterpriseNamespace = new AliCloud.CS.RegistryEnterpriseNamespace("source", new()
///     {
///         InstanceId = source.Id,
///         Name = $"{name}-{defaultInteger.Result}",
///         AutoCreate = false,
///         DefaultVisibility = "PUBLIC",
///     });
///
///     var targetRegistryEnterpriseNamespace = new AliCloud.CS.RegistryEnterpriseNamespace("target", new()
///     {
///         InstanceId = target.Id,
///         Name = $"{name}-{defaultInteger.Result}",
///         AutoCreate = false,
///         DefaultVisibility = "PUBLIC",
///     });
///
///     var sourceRegistryEnterpriseRepo = new AliCloud.CS.RegistryEnterpriseRepo("source", new()
///     {
///         InstanceId = source.Id,
///         Namespace = sourceRegistryEnterpriseNamespace.Name,
///         Name = $"{name}-{defaultInteger.Result}",
///         Summary = "this is summary of my new repo",
///         RepoType = "PUBLIC",
///     });
///
///     var targetRegistryEnterpriseRepo = new AliCloud.CS.RegistryEnterpriseRepo("target", new()
///     {
///         InstanceId = target.Id,
///         Namespace = targetRegistryEnterpriseNamespace.Name,
///         Name = $"{name}-{defaultInteger.Result}",
///         Summary = "this is summary of my new repo",
///         RepoType = "PUBLIC",
///     });
///
///     var defaultRegistryEnterpriseSyncRule = new AliCloud.CS.RegistryEnterpriseSyncRule("default", new()
///     {
///         InstanceId = source.Id,
///         NamespaceName = sourceRegistryEnterpriseNamespace.Name,
///         SyncRuleName = $"{name}-{defaultInteger.Result}",
///         TargetInstanceId = target.Id,
///         TargetNamespaceName = targetRegistryEnterpriseNamespace.Name,
///         TargetRegionId = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///         TagFilter = ".*",
///         RepoName = sourceRegistryEnterpriseRepo.Name,
///         TargetRepoName = targetRegistryEnterpriseRepo.Name,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cr"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
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
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		source, err := cr.NewRegistryEnterpriseInstance(ctx, "source", &cr.RegistryEnterpriseInstanceArgs{
/// 			PaymentType:   pulumi.String("Subscription"),
/// 			Period:        pulumi.Int(1),
/// 			RenewPeriod:   pulumi.Int(0),
/// 			RenewalStatus: pulumi.String("ManualRenewal"),
/// 			InstanceType:  pulumi.String("Advanced"),
/// 			InstanceName:  pulumi.Sprintf("%v-source-%v", name, defaultInteger.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		target, err := cr.NewRegistryEnterpriseInstance(ctx, "target", &cr.RegistryEnterpriseInstanceArgs{
/// 			PaymentType:   pulumi.String("Subscription"),
/// 			Period:        pulumi.Int(1),
/// 			RenewPeriod:   pulumi.Int(0),
/// 			RenewalStatus: pulumi.String("ManualRenewal"),
/// 			InstanceType:  pulumi.String("Advanced"),
/// 			InstanceName:  pulumi.Sprintf("%v-target-%v", name, defaultInteger.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sourceRegistryEnterpriseNamespace, err := cs.NewRegistryEnterpriseNamespace(ctx, "source", &cs.RegistryEnterpriseNamespaceArgs{
/// 			InstanceId:        source.ID(),
/// 			Name:              pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			AutoCreate:        pulumi.Bool(false),
/// 			DefaultVisibility: pulumi.String("PUBLIC"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		targetRegistryEnterpriseNamespace, err := cs.NewRegistryEnterpriseNamespace(ctx, "target", &cs.RegistryEnterpriseNamespaceArgs{
/// 			InstanceId:        target.ID(),
/// 			Name:              pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			AutoCreate:        pulumi.Bool(false),
/// 			DefaultVisibility: pulumi.String("PUBLIC"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sourceRegistryEnterpriseRepo, err := cs.NewRegistryEnterpriseRepo(ctx, "source", &cs.RegistryEnterpriseRepoArgs{
/// 			InstanceId: source.ID(),
/// 			Namespace:  sourceRegistryEnterpriseNamespace.Name,
/// 			Name:       pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			Summary:    pulumi.String("this is summary of my new repo"),
/// 			RepoType:   pulumi.String("PUBLIC"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		targetRegistryEnterpriseRepo, err := cs.NewRegistryEnterpriseRepo(ctx, "target", &cs.RegistryEnterpriseRepoArgs{
/// 			InstanceId: target.ID(),
/// 			Namespace:  targetRegistryEnterpriseNamespace.Name,
/// 			Name:       pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			Summary:    pulumi.String("this is summary of my new repo"),
/// 			RepoType:   pulumi.String("PUBLIC"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cs.NewRegistryEnterpriseSyncRule(ctx, "default", &cs.RegistryEnterpriseSyncRuleArgs{
/// 			InstanceId:          source.ID(),
/// 			NamespaceName:       sourceRegistryEnterpriseNamespace.Name,
/// 			SyncRuleName:        pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			TargetInstanceId:    target.ID(),
/// 			TargetNamespaceName: targetRegistryEnterpriseNamespace.Name,
/// 			TargetRegionId:      pulumi.String(_default.Regions[0].Id),
/// 			TagFilter:           pulumi.String(".*"),
/// 			RepoName:            sourceRegistryEnterpriseRepo.Name,
/// 			TargetRepoName:      targetRegistryEnterpriseRepo.Name,
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
/// import com.pulumi.alicloud.cr.RegistryEnterpriseInstance;
/// import com.pulumi.alicloud.cr.RegistryEnterpriseInstanceArgs;
/// import com.pulumi.alicloud.cs.RegistryEnterpriseNamespace;
/// import com.pulumi.alicloud.cs.RegistryEnterpriseNamespaceArgs;
/// import com.pulumi.alicloud.cs.RegistryEnterpriseRepo;
/// import com.pulumi.alicloud.cs.RegistryEnterpriseRepoArgs;
/// import com.pulumi.alicloud.cs.RegistryEnterpriseSyncRule;
/// import com.pulumi.alicloud.cs.RegistryEnterpriseSyncRuleArgs;
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
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var source = new RegistryEnterpriseInstance("source", RegistryEnterpriseInstanceArgs.builder()
///             .paymentType("Subscription")
///             .period(1)
///             .renewPeriod(0)
///             .renewalStatus("ManualRenewal")
///             .instanceType("Advanced")
///             .instanceName(String.format("%s-source-%s", name,defaultInteger.result()))
///             .build());
///
///         var target = new RegistryEnterpriseInstance("target", RegistryEnterpriseInstanceArgs.builder()
///             .paymentType("Subscription")
///             .period(1)
///             .renewPeriod(0)
///             .renewalStatus("ManualRenewal")
///             .instanceType("Advanced")
///             .instanceName(String.format("%s-target-%s", name,defaultInteger.result()))
///             .build());
///
///         var sourceRegistryEnterpriseNamespace = new RegistryEnterpriseNamespace("sourceRegistryEnterpriseNamespace", RegistryEnterpriseNamespaceArgs.builder()
///             .instanceId(source.id())
///             .name(String.format("%s-%s", name,defaultInteger.result()))
///             .autoCreate(false)
///             .defaultVisibility("PUBLIC")
///             .build());
///
///         var targetRegistryEnterpriseNamespace = new RegistryEnterpriseNamespace("targetRegistryEnterpriseNamespace", RegistryEnterpriseNamespaceArgs.builder()
///             .instanceId(target.id())
///             .name(String.format("%s-%s", name,defaultInteger.result()))
///             .autoCreate(false)
///             .defaultVisibility("PUBLIC")
///             .build());
///
///         var sourceRegistryEnterpriseRepo = new RegistryEnterpriseRepo("sourceRegistryEnterpriseRepo", RegistryEnterpriseRepoArgs.builder()
///             .instanceId(source.id())
///             .namespace(sourceRegistryEnterpriseNamespace.name())
///             .name(String.format("%s-%s", name,defaultInteger.result()))
///             .summary("this is summary of my new repo")
///             .repoType("PUBLIC")
///             .build());
///
///         var targetRegistryEnterpriseRepo = new RegistryEnterpriseRepo("targetRegistryEnterpriseRepo", RegistryEnterpriseRepoArgs.builder()
///             .instanceId(target.id())
///             .namespace(targetRegistryEnterpriseNamespace.name())
///             .name(String.format("%s-%s", name,defaultInteger.result()))
///             .summary("this is summary of my new repo")
///             .repoType("PUBLIC")
///             .build());
///
///         var defaultRegistryEnterpriseSyncRule = new RegistryEnterpriseSyncRule("defaultRegistryEnterpriseSyncRule", RegistryEnterpriseSyncRuleArgs.builder()
///             .instanceId(source.id())
///             .namespaceName(sourceRegistryEnterpriseNamespace.name())
///             .syncRuleName(String.format("%s-%s", name,defaultInteger.result()))
///             .targetInstanceId(target.id())
///             .targetNamespaceName(targetRegistryEnterpriseNamespace.name())
///             .targetRegionId(default_.regions()[0].id())
///             .tagFilter(".*")
///             .repoName(sourceRegistryEnterpriseRepo.name())
///             .targetRepoName(targetRegistryEnterpriseRepo.name())
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
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   source:
///     type: alicloud:cr:RegistryEnterpriseInstance
///     properties:
///       paymentType: Subscription
///       period: 1
///       renewPeriod: 0
///       renewalStatus: ManualRenewal
///       instanceType: Advanced
///       instanceName: ${name}-source-${defaultInteger.result}
///   target:
///     type: alicloud:cr:RegistryEnterpriseInstance
///     properties:
///       paymentType: Subscription
///       period: 1
///       renewPeriod: 0
///       renewalStatus: ManualRenewal
///       instanceType: Advanced
///       instanceName: ${name}-target-${defaultInteger.result}
///   sourceRegistryEnterpriseNamespace:
///     type: alicloud:cs:RegistryEnterpriseNamespace
///     name: source
///     properties:
///       instanceId: ${source.id}
///       name: ${name}-${defaultInteger.result}
///       autoCreate: false
///       defaultVisibility: PUBLIC
///   targetRegistryEnterpriseNamespace:
///     type: alicloud:cs:RegistryEnterpriseNamespace
///     name: target
///     properties:
///       instanceId: ${target.id}
///       name: ${name}-${defaultInteger.result}
///       autoCreate: false
///       defaultVisibility: PUBLIC
///   sourceRegistryEnterpriseRepo:
///     type: alicloud:cs:RegistryEnterpriseRepo
///     name: source
///     properties:
///       instanceId: ${source.id}
///       namespace: ${sourceRegistryEnterpriseNamespace.name}
///       name: ${name}-${defaultInteger.result}
///       summary: this is summary of my new repo
///       repoType: PUBLIC
///   targetRegistryEnterpriseRepo:
///     type: alicloud:cs:RegistryEnterpriseRepo
///     name: target
///     properties:
///       instanceId: ${target.id}
///       namespace: ${targetRegistryEnterpriseNamespace.name}
///       name: ${name}-${defaultInteger.result}
///       summary: this is summary of my new repo
///       repoType: PUBLIC
///   defaultRegistryEnterpriseSyncRule:
///     type: alicloud:cs:RegistryEnterpriseSyncRule
///     name: default
///     properties:
///       instanceId: ${source.id}
///       namespaceName: ${sourceRegistryEnterpriseNamespace.name}
///       syncRuleName: ${name}-${defaultInteger.result}
///       targetInstanceId: ${target.id}
///       targetNamespaceName: ${targetRegistryEnterpriseNamespace.name}
///       targetRegionId: ${default.regions[0].id}
///       tagFilter: .*
///       repoName: ${sourceRegistryEnterpriseRepo.name}
///       targetRepoName: ${targetRegistryEnterpriseRepo.name}
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
/// Container Registry Sync Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cs/registryEnterpriseSyncRule:RegistryEnterpriseSyncRule example <instance_id>:<namespace_name>:<repo_sync_rule_id>
/// ```
class RegistryEnterpriseSyncRule extends pulumi.CustomResource {
  /// (Available since v1.240.0) The time when the synchronization rule was created.
  late final pulumi.Output<String> createTime;
  /// The ID of the Container Registry source instance.
  late final pulumi.Output<String> instanceId;
  /// Field `name` has been deprecated from provider version 1.240.0. New field `sync_rule_name` instead.
  late final pulumi.Output<String> name;
  /// The namespace name of the source instance.
  late final pulumi.Output<String> namespaceName;
  /// (Available since v1.240.0) The region ID of the source instance.
  late final pulumi.Output<String> regionId;
  /// The image repository name of the source instance.
  late final pulumi.Output<String?> repoName;
  /// (Available since v1.240.0) The ID of the synchronization rule.
  late final pulumi.Output<String> repoSyncRuleId;
  /// (Deprecated since v1.240.0) Field `rule_id` has been deprecated from provider version 1.240.0. New field `repo_sync_rule_id` instead.
  late final pulumi.Output<String> ruleId;
  /// The synchronization direction.
  late final pulumi.Output<String> syncDirection;
  /// The name of the sync rule.
  late final pulumi.Output<String> syncRuleName;
  /// The synchronization scope. Valid values:
  /// - `REPO`: Encrypts or decrypts data.
  /// - `NAMESPACE`: Generates or verifies a digital signature.
  /// &gt; **NOTE:** From version 1.240.0, `sync_scope` can be set.
  late final pulumi.Output<String> syncScope;
  /// The policy configured to trigger the synchronization rule. Default value: `PASSIVE`. Valid values:
  /// - `INITIATIVE`: Manually triggers the synchronization rule.
  /// - `PASSIVE`: Automatically triggers the synchronization rule.
  late final pulumi.Output<String> syncTrigger;
  /// The regular expression used to filter image tags.
  late final pulumi.Output<String> tagFilter;
  /// The ID of the destination instance.
  late final pulumi.Output<String> targetInstanceId;
  /// The namespace name of the destination instance.
  late final pulumi.Output<String> targetNamespaceName;
  /// The region ID of the destination instance.
  late final pulumi.Output<String> targetRegionId;
  /// The image repository name of the destination instance.
  late final pulumi.Output<String?> targetRepoName;
  /// The UID of the account to which the target instance belongs.
  late final pulumi.Output<String?> targetUserId;

  /// Creates a new [RegistryEnterpriseSyncRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryEnterpriseSyncRule]. {@macro pulumi_cs_registry_enterprise_sync_rule_registry_enterprise_sync_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryEnterpriseSyncRule(
    String name, {
    RegistryEnterpriseSyncRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/registryEnterpriseSyncRule:RegistryEnterpriseSyncRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    namespaceName = registerOutput<String>('namespaceName');
    regionId = registerOutput<String>('regionId');
    repoName = registerOutput<String?>('repoName');
    repoSyncRuleId = registerOutput<String>('repoSyncRuleId');
    ruleId = registerOutput<String>('ruleId');
    syncDirection = registerOutput<String>('syncDirection');
    syncRuleName = registerOutput<String>('syncRuleName');
    syncScope = registerOutput<String>('syncScope');
    syncTrigger = registerOutput<String>('syncTrigger');
    tagFilter = registerOutput<String>('tagFilter');
    targetInstanceId = registerOutput<String>('targetInstanceId');
    targetNamespaceName = registerOutput<String>('targetNamespaceName');
    targetRegionId = registerOutput<String>('targetRegionId');
    targetRepoName = registerOutput<String?>('targetRepoName');
    targetUserId = registerOutput<String?>('targetUserId');
  }

  /// Gets an existing [RegistryEnterpriseSyncRule] resource's state with the given [name] and [id].
  static RegistryEnterpriseSyncRule get(
    String name,
    pulumi.Input<String> id, {
    RegistryEnterpriseSyncRuleState? state,
  }) {
    return RegistryEnterpriseSyncRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegistryEnterpriseSyncRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/registryEnterpriseSyncRule:RegistryEnterpriseSyncRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    namespaceName = registerOutput<String>('namespaceName');
    regionId = registerOutput<String>('regionId');
    repoName = registerOutput<String?>('repoName');
    repoSyncRuleId = registerOutput<String>('repoSyncRuleId');
    ruleId = registerOutput<String>('ruleId');
    syncDirection = registerOutput<String>('syncDirection');
    syncRuleName = registerOutput<String>('syncRuleName');
    syncScope = registerOutput<String>('syncScope');
    syncTrigger = registerOutput<String>('syncTrigger');
    tagFilter = registerOutput<String>('tagFilter');
    targetInstanceId = registerOutput<String>('targetInstanceId');
    targetNamespaceName = registerOutput<String>('targetNamespaceName');
    targetRegionId = registerOutput<String>('targetRegionId');
    targetRepoName = registerOutput<String?>('targetRepoName');
    targetUserId = registerOutput<String?>('targetUserId');
  }
}
