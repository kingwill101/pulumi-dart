import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_advanced_backup_setting.dart';
import 'plan_args.dart';
import 'plan_rule.dart';
import 'plan_scan_setting.dart';
import 'plan_state.dart';

/// Provides an AWS Backup plan resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.backup.Plan("example", {
///     advancedBackupSettings: [{
///         backupOptions: {
///             WindowsVSS: "enabled",
///         },
///         resourceType: "EC2",
///     }],
///     rules: [{
///         lifecycle: {
///             deleteAfter: 14,
///         },
///         ruleName: "my_example_backup_rule",
///         targetVaultName: test.name,
///         schedule: "cron(0 12 * * ? *)",
///     }],
///     name: "my_example_backup_plan",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.Plan("example",
///     advanced_backup_settings=[{
///         "backup_options": {
///             "WindowsVSS": "enabled",
///         },
///         "resource_type": "EC2",
///     }],
///     rules=[{
///         "lifecycle": {
///             "delete_after": 14,
///         },
///         "rule_name": "my_example_backup_rule",
///         "target_vault_name": test["name"],
///         "schedule": "cron(0 12 * * ? *)",
///     }],
///     name="my_example_backup_plan")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Backup.Plan("example", new()
///     {
///         AdvancedBackupSettings = new[]
///         {
///             new Aws.Backup.Inputs.PlanAdvancedBackupSettingArgs
///             {
///                 BackupOptions =
///                 {
///                     { "WindowsVSS", "enabled" },
///                 },
///                 ResourceType = "EC2",
///             },
///         },
///         Rules = new[]
///         {
///             new Aws.Backup.Inputs.PlanRuleArgs
///             {
///                 Lifecycle = new Aws.Backup.Inputs.PlanRuleLifecycleArgs
///                 {
///                     DeleteAfter = 14,
///                 },
///                 RuleName = "my_example_backup_rule",
///                 TargetVaultName = test.Name,
///                 Schedule = "cron(0 12 * * ? *)",
///             },
///         },
///         Name = "my_example_backup_plan",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backup.NewPlan(ctx, "example", &backup.PlanArgs{
/// 			AdvancedBackupSettings: backup.PlanAdvancedBackupSettingArray{
/// 				&backup.PlanAdvancedBackupSettingArgs{
/// 					BackupOptions: pulumi.StringMap{
/// 						"WindowsVSS": pulumi.String("enabled"),
/// 					},
/// 					ResourceType: pulumi.String("EC2"),
/// 				},
/// 			},
/// 			Rules: backup.PlanRuleArray{
/// 				&backup.PlanRuleArgs{
/// 					Lifecycle: &backup.PlanRuleLifecycleArgs{
/// 						DeleteAfter: pulumi.Int(14),
/// 					},
/// 					RuleName:        pulumi.String("my_example_backup_rule"),
/// 					TargetVaultName: pulumi.Any(test.Name),
/// 					Schedule:        pulumi.String("cron(0 12 * * ? *)"),
/// 				},
/// 			},
/// 			Name: pulumi.String("my_example_backup_plan"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_backup_plan" "example" {
///   advanced_backup_settings {
///     backup_options = {
///       "WindowsVSS" = "enabled"
///     }
///     resource_type = "EC2"
///   }
///   rules {
///     lifecycle = {
///       delete_after = 14
///     }
///     rule_name         = "my_example_backup_rule"
///     target_vault_name = test.name
///     schedule          = "cron(0 12 * * ? *)"
///   }
///   name = "my_example_backup_plan"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.backup.Plan;
/// import com.pulumi.aws.backup.PlanArgs;
/// import com.pulumi.aws.backup.inputs.PlanAdvancedBackupSettingArgs;
/// import com.pulumi.aws.backup.inputs.PlanRuleArgs;
/// import com.pulumi.aws.backup.inputs.PlanRuleLifecycleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Plan("example", PlanArgs.builder()
///             .advancedBackupSettings(PlanAdvancedBackupSettingArgs.builder()
///                 .backupOptions(Map.of("WindowsVSS", "enabled"))
///                 .resourceType("EC2")
///                 .build())
///             .rules(PlanRuleArgs.builder()
///                 .lifecycle(PlanRuleLifecycleArgs.builder()
///                     .deleteAfter(14)
///                     .build())
///                 .ruleName("my_example_backup_rule")
///                 .targetVaultName(test.name())
///                 .schedule("cron(0 12 * * ? *)")
///                 .build())
///             .name("my_example_backup_plan")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:backup:Plan
///     properties:
///       advancedBackupSettings:
///         - backupOptions:
///             WindowsVSS: enabled
///           resourceType: EC2
///       rules:
///         - lifecycle:
///             deleteAfter: 14
///           ruleName: my_example_backup_rule
///           targetVaultName: ${test.name}
///           schedule: cron(0 12 * * ? *)
///       name: my_example_backup_plan
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) Backup Plan ID.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Backup Plan using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:backup/plan:Plan example abc123
/// ```
class Plan extends pulumi.CustomResource {
  /// An object that specifies backup options for each resource type.
  late final pulumi.Output<List<PlanAdvancedBackupSetting>?> advancedBackupSettings;
  /// The ARN of the backup plan.
  late final pulumi.Output<String> arn;
  /// The display name of a backup plan.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A rule object that specifies a scheduled task that is used to back up a selection of resources.
  late final pulumi.Output<List<PlanRule>> rules;
  /// Block for scanning configuration for the backup rule and includes the malware scanner, and scan mode of either full or incremental. Detailed below.
  late final pulumi.Output<List<PlanScanSetting>?> scanSettings;
  /// Metadata that you can assign to help organize the plans you create. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Unique, randomly generated, Unicode, UTF-8 encoded string that serves as the version ID of the backup plan.
  late final pulumi.Output<String> version;

  /// Creates a new [Plan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Plan]. {@macro pulumi_backup_plan_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Plan(
    String name, {
    PlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:backup/plan:Plan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    advancedBackupSettings = registerOutput<List<PlanAdvancedBackupSetting>?>('advancedBackupSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanAdvancedBackupSetting>(guardedValue, (value) => PlanAdvancedBackupSetting.fromMap((value as Map).cast<String, dynamic>())); });
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    rules = registerOutput<List<PlanRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanRule>(guardedValue, (value) => PlanRule.fromMap((value as Map).cast<String, dynamic>())); });
    scanSettings = registerOutput<List<PlanScanSetting>?>('scanSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanScanSetting>(guardedValue, (value) => PlanScanSetting.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    version = registerOutput<String>('version');
  }

  /// Gets an existing [Plan] resource's state with the given [name] and [id].
  static Plan get(
    String name,
    pulumi.Input<String> id, {
    PlanState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Plan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Plan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:backup/plan:Plan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    advancedBackupSettings = registerOutput<List<PlanAdvancedBackupSetting>?>('advancedBackupSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanAdvancedBackupSetting>(guardedValue, (value) => PlanAdvancedBackupSetting.fromMap((value as Map).cast<String, dynamic>())); });
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    rules = registerOutput<List<PlanRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanRule>(guardedValue, (value) => PlanRule.fromMap((value as Map).cast<String, dynamic>())); });
    scanSettings = registerOutput<List<PlanScanSetting>?>('scanSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanScanSetting>(guardedValue, (value) => PlanScanSetting.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    version = registerOutput<String>('version');
  }

  /// Creates a typed reference to an existing [Plan] resource.
  Plan.reference(String urn)
    : super(
        'aws:backup/plan:Plan',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    advancedBackupSettings = registerOutput<List<PlanAdvancedBackupSetting>?>('advancedBackupSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanAdvancedBackupSetting>(guardedValue, (value) => PlanAdvancedBackupSetting.fromMap((value as Map).cast<String, dynamic>())); });
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    rules = registerOutput<List<PlanRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanRule>(guardedValue, (value) => PlanRule.fromMap((value as Map).cast<String, dynamic>())); });
    scanSettings = registerOutput<List<PlanScanSetting>?>('scanSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanScanSetting>(guardedValue, (value) => PlanScanSetting.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    version = registerOutput<String>('version');
  }
}
