import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_baseline_approval_rule.dart';
import 'patch_baseline_args.dart';
import 'patch_baseline_global_filter.dart';
import 'patch_baseline_source.dart';
import 'patch_baseline_state.dart';

/// Provides an SSM Patch Baseline resource.
///
/// &gt; **NOTE on Patch Baselines:** The `approvedPatches` and `approvalRule` are
/// both marked as optional fields, but the Patch Baseline requires that at least one
/// of them is specified.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// Using `approvedPatches` only.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const production = new aws.ssm.PatchBaseline("production", {
///     name: "patch-baseline",
///     approvedPatches: ["KB123456"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// production = aws.ssm.PatchBaseline("production",
///     name="patch-baseline",
///     approved_patches=["KB123456"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var production = new Aws.Ssm.PatchBaseline("production", new()
///     {
///         Name = "patch-baseline",
///         ApprovedPatches = new[]
///         {
///             "KB123456",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.NewPatchBaseline(ctx, "production", &ssm.PatchBaselineArgs{
/// 			Name: pulumi.String("patch-baseline"),
/// 			ApprovedPatches: pulumi.StringArray{
/// 				pulumi.String("KB123456"),
/// 			},
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
/// resource "aws_ssm_patchbaseline" "production" {
///   name             = "patch-baseline"
///   approved_patches = ["KB123456"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.PatchBaseline;
/// import com.pulumi.aws.ssm.PatchBaselineArgs;
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
///         var production = new PatchBaseline("production", PatchBaselineArgs.builder()
///             .name("patch-baseline")
///             .approvedPatches("KB123456")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   production:
///     type: aws:ssm:PatchBaseline
///     properties:
///       name: patch-baseline
///       approvedPatches:
///         - KB123456
/// ```
///
///
/// ### Advanced Usage, specifying patch filters
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const production = new aws.ssm.PatchBaseline("production", {
///     approvalRules: [
///         {
///             patchFilters: [
///                 {
///                     key: "PRODUCT",
///                     values: ["WindowsServer2016"],
///                 },
///                 {
///                     key: "CLASSIFICATION",
///                     values: [
///                         "CriticalUpdates",
///                         "SecurityUpdates",
///                         "Updates",
///                     ],
///                 },
///                 {
///                     key: "MSRC_SEVERITY",
///                     values: [
///                         "Critical",
///                         "Important",
///                         "Moderate",
///                     ],
///                 },
///             ],
///             approveAfterDays: 7,
///             complianceLevel: "HIGH",
///         },
///         {
///             patchFilters: [{
///                 key: "PRODUCT",
///                 values: ["WindowsServer2012"],
///             }],
///             approveAfterDays: 7,
///         },
///     ],
///     globalFilters: [
///         {
///             key: "PRODUCT",
///             values: ["WindowsServer2008"],
///         },
///         {
///             key: "CLASSIFICATION",
///             values: ["ServicePacks"],
///         },
///         {
///             key: "MSRC_SEVERITY",
///             values: ["Low"],
///         },
///     ],
///     name: "patch-baseline",
///     description: "Patch Baseline Description",
///     approvedPatches: [
///         "KB123456",
///         "KB456789",
///     ],
///     rejectedPatches: ["KB987654"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// production = aws.ssm.PatchBaseline("production",
///     approval_rules=[
///         {
///             "patch_filters": [
///                 {
///                     "key": "PRODUCT",
///                     "values": ["WindowsServer2016"],
///                 },
///                 {
///                     "key": "CLASSIFICATION",
///                     "values": [
///                         "CriticalUpdates",
///                         "SecurityUpdates",
///                         "Updates",
///                     ],
///                 },
///                 {
///                     "key": "MSRC_SEVERITY",
///                     "values": [
///                         "Critical",
///                         "Important",
///                         "Moderate",
///                     ],
///                 },
///             ],
///             "approve_after_days": 7,
///             "compliance_level": "HIGH",
///         },
///         {
///             "patch_filters": [{
///                 "key": "PRODUCT",
///                 "values": ["WindowsServer2012"],
///             }],
///             "approve_after_days": 7,
///         },
///     ],
///     global_filters=[
///         {
///             "key": "PRODUCT",
///             "values": ["WindowsServer2008"],
///         },
///         {
///             "key": "CLASSIFICATION",
///             "values": ["ServicePacks"],
///         },
///         {
///             "key": "MSRC_SEVERITY",
///             "values": ["Low"],
///         },
///     ],
///     name="patch-baseline",
///     description="Patch Baseline Description",
///     approved_patches=[
///         "KB123456",
///         "KB456789",
///     ],
///     rejected_patches=["KB987654"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var production = new Aws.Ssm.PatchBaseline("production", new()
///     {
///         ApprovalRules = new[]
///         {
///             new Aws.Ssm.Inputs.PatchBaselineApprovalRuleArgs
///             {
///                 PatchFilters = new[]
///                 {
///                     new Aws.Ssm.Inputs.PatchBaselineApprovalRulePatchFilterArgs
///                     {
///                         Key = "PRODUCT",
///                         Values = new[]
///                         {
///                             "WindowsServer2016",
///                         },
///                     },
///                     new Aws.Ssm.Inputs.PatchBaselineApprovalRulePatchFilterArgs
///                     {
///                         Key = "CLASSIFICATION",
///                         Values = new[]
///                         {
///                             "CriticalUpdates",
///                             "SecurityUpdates",
///                             "Updates",
///                         },
///                     },
///                     new Aws.Ssm.Inputs.PatchBaselineApprovalRulePatchFilterArgs
///                     {
///                         Key = "MSRC_SEVERITY",
///                         Values = new[]
///                         {
///                             "Critical",
///                             "Important",
///                             "Moderate",
///                         },
///                     },
///                 },
///                 ApproveAfterDays = 7,
///                 ComplianceLevel = "HIGH",
///             },
///             new Aws.Ssm.Inputs.PatchBaselineApprovalRuleArgs
///             {
///                 PatchFilters = new[]
///                 {
///                     new Aws.Ssm.Inputs.PatchBaselineApprovalRulePatchFilterArgs
///                     {
///                         Key = "PRODUCT",
///                         Values = new[]
///                         {
///                             "WindowsServer2012",
///                         },
///                     },
///                 },
///                 ApproveAfterDays = 7,
///             },
///         },
///         GlobalFilters = new[]
///         {
///             new Aws.Ssm.Inputs.PatchBaselineGlobalFilterArgs
///             {
///                 Key = "PRODUCT",
///                 Values = new[]
///                 {
///                     "WindowsServer2008",
///                 },
///             },
///             new Aws.Ssm.Inputs.PatchBaselineGlobalFilterArgs
///             {
///                 Key = "CLASSIFICATION",
///                 Values = new[]
///                 {
///                     "ServicePacks",
///                 },
///             },
///             new Aws.Ssm.Inputs.PatchBaselineGlobalFilterArgs
///             {
///                 Key = "MSRC_SEVERITY",
///                 Values = new[]
///                 {
///                     "Low",
///                 },
///             },
///         },
///         Name = "patch-baseline",
///         Description = "Patch Baseline Description",
///         ApprovedPatches = new[]
///         {
///             "KB123456",
///             "KB456789",
///         },
///         RejectedPatches = new[]
///         {
///             "KB987654",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.NewPatchBaseline(ctx, "production", &ssm.PatchBaselineArgs{
/// 			ApprovalRules: ssm.PatchBaselineApprovalRuleArray{
/// 				&ssm.PatchBaselineApprovalRuleArgs{
/// 					PatchFilters: ssm.PatchBaselineApprovalRulePatchFilterArray{
/// 						&ssm.PatchBaselineApprovalRulePatchFilterArgs{
/// 							Key: pulumi.String("PRODUCT"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("WindowsServer2016"),
/// 							},
/// 						},
/// 						&ssm.PatchBaselineApprovalRulePatchFilterArgs{
/// 							Key: pulumi.String("CLASSIFICATION"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("CriticalUpdates"),
/// 								pulumi.String("SecurityUpdates"),
/// 								pulumi.String("Updates"),
/// 							},
/// 						},
/// 						&ssm.PatchBaselineApprovalRulePatchFilterArgs{
/// 							Key: pulumi.String("MSRC_SEVERITY"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("Critical"),
/// 								pulumi.String("Important"),
/// 								pulumi.String("Moderate"),
/// 							},
/// 						},
/// 					},
/// 					ApproveAfterDays: pulumi.Int(7),
/// 					ComplianceLevel:  pulumi.String("HIGH"),
/// 				},
/// 				&ssm.PatchBaselineApprovalRuleArgs{
/// 					PatchFilters: ssm.PatchBaselineApprovalRulePatchFilterArray{
/// 						&ssm.PatchBaselineApprovalRulePatchFilterArgs{
/// 							Key: pulumi.String("PRODUCT"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("WindowsServer2012"),
/// 							},
/// 						},
/// 					},
/// 					ApproveAfterDays: pulumi.Int(7),
/// 				},
/// 			},
/// 			GlobalFilters: ssm.PatchBaselineGlobalFilterArray{
/// 				&ssm.PatchBaselineGlobalFilterArgs{
/// 					Key: pulumi.String("PRODUCT"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("WindowsServer2008"),
/// 					},
/// 				},
/// 				&ssm.PatchBaselineGlobalFilterArgs{
/// 					Key: pulumi.String("CLASSIFICATION"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("ServicePacks"),
/// 					},
/// 				},
/// 				&ssm.PatchBaselineGlobalFilterArgs{
/// 					Key: pulumi.String("MSRC_SEVERITY"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("Low"),
/// 					},
/// 				},
/// 			},
/// 			Name:        pulumi.String("patch-baseline"),
/// 			Description: pulumi.String("Patch Baseline Description"),
/// 			ApprovedPatches: pulumi.StringArray{
/// 				pulumi.String("KB123456"),
/// 				pulumi.String("KB456789"),
/// 			},
/// 			RejectedPatches: pulumi.StringArray{
/// 				pulumi.String("KB987654"),
/// 			},
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
/// resource "aws_ssm_patchbaseline" "production" {
///   approval_rules {
///     patch_filters {
///       key    = "PRODUCT"
///       values = ["WindowsServer2016"]
///     }
///     patch_filters {
///       key    = "CLASSIFICATION"
///       values = ["CriticalUpdates", "SecurityUpdates", "Updates"]
///     }
///     patch_filters {
///       key    = "MSRC_SEVERITY"
///       values = ["Critical", "Important", "Moderate"]
///     }
///     approve_after_days = 7
///     compliance_level   = "HIGH"
///   }
///   approval_rules {
///     patch_filters {
///       key    = "PRODUCT"
///       values = ["WindowsServer2012"]
///     }
///     approve_after_days = 7
///   }
///   global_filters {
///     key    = "PRODUCT"
///     values = ["WindowsServer2008"]
///   }
///   global_filters {
///     key    = "CLASSIFICATION"
///     values = ["ServicePacks"]
///   }
///   global_filters {
///     key    = "MSRC_SEVERITY"
///     values = ["Low"]
///   }
///   name             = "patch-baseline"
///   description      = "Patch Baseline Description"
///   approved_patches = ["KB123456", "KB456789"]
///   rejected_patches = ["KB987654"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.PatchBaseline;
/// import com.pulumi.aws.ssm.PatchBaselineArgs;
/// import com.pulumi.aws.ssm.inputs.PatchBaselineApprovalRuleArgs;
/// import com.pulumi.aws.ssm.inputs.PatchBaselineApprovalRulePatchFilterArgs;
/// import com.pulumi.aws.ssm.inputs.PatchBaselineGlobalFilterArgs;
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
///         var production = new PatchBaseline("production", PatchBaselineArgs.builder()
///             .approvalRules(
///                 PatchBaselineApprovalRuleArgs.builder()
///                     .patchFilters(
///                         PatchBaselineApprovalRulePatchFilterArgs.builder()
///                             .key("PRODUCT")
///                             .values("WindowsServer2016")
///                             .build(),
///                         PatchBaselineApprovalRulePatchFilterArgs.builder()
///                             .key("CLASSIFICATION")
///                             .values(
///                                 "CriticalUpdates",
///                                 "SecurityUpdates",
///                                 "Updates")
///                             .build(),
///                         PatchBaselineApprovalRulePatchFilterArgs.builder()
///                             .key("MSRC_SEVERITY")
///                             .values(
///                                 "Critical",
///                                 "Important",
///                                 "Moderate")
///                             .build())
///                     .approveAfterDays(7)
///                     .complianceLevel("HIGH")
///                     .build(),
///                 PatchBaselineApprovalRuleArgs.builder()
///                     .patchFilters(PatchBaselineApprovalRulePatchFilterArgs.builder()
///                         .key("PRODUCT")
///                         .values("WindowsServer2012")
///                         .build())
///                     .approveAfterDays(7)
///                     .build())
///             .globalFilters(
///                 PatchBaselineGlobalFilterArgs.builder()
///                     .key("PRODUCT")
///                     .values("WindowsServer2008")
///                     .build(),
///                 PatchBaselineGlobalFilterArgs.builder()
///                     .key("CLASSIFICATION")
///                     .values("ServicePacks")
///                     .build(),
///                 PatchBaselineGlobalFilterArgs.builder()
///                     .key("MSRC_SEVERITY")
///                     .values("Low")
///                     .build())
///             .name("patch-baseline")
///             .description("Patch Baseline Description")
///             .approvedPatches(
///                 "KB123456",
///                 "KB456789")
///             .rejectedPatches("KB987654")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   production:
///     type: aws:ssm:PatchBaseline
///     properties:
///       approvalRules:
///         - patchFilters:
///             - key: PRODUCT
///               values:
///                 - WindowsServer2016
///             - key: CLASSIFICATION
///               values:
///                 - CriticalUpdates
///                 - SecurityUpdates
///                 - Updates
///             - key: MSRC_SEVERITY
///               values:
///                 - Critical
///                 - Important
///                 - Moderate
///           approveAfterDays: 7
///           complianceLevel: HIGH
///         - patchFilters:
///             - key: PRODUCT
///               values:
///                 - WindowsServer2012
///           approveAfterDays: 7
///       globalFilters:
///         - key: PRODUCT
///           values:
///             - WindowsServer2008
///         - key: CLASSIFICATION
///           values:
///             - ServicePacks
///         - key: MSRC_SEVERITY
///           values:
///             - Low
///       name: patch-baseline
///       description: Patch Baseline Description
///       approvedPatches:
///         - KB123456
///         - KB456789
///       rejectedPatches:
///         - KB987654
/// ```
///
///
/// ### Advanced usage, specifying Microsoft application and Windows patch rules
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const windowsOsApps = new aws.ssm.PatchBaseline("windows_os_apps", {
///     approvalRules: [
///         {
///             patchFilters: [
///                 {
///                     key: "CLASSIFICATION",
///                     values: [
///                         "CriticalUpdates",
///                         "SecurityUpdates",
///                     ],
///                 },
///                 {
///                     key: "MSRC_SEVERITY",
///                     values: [
///                         "Critical",
///                         "Important",
///                     ],
///                 },
///             ],
///             approveAfterDays: 7,
///         },
///         {
///             patchFilters: [
///                 {
///                     key: "PATCH_SET",
///                     values: ["APPLICATION"],
///                 },
///                 {
///                     key: "PRODUCT",
///                     values: [
///                         "Office 2013",
///                         "Office 2016",
///                     ],
///                 },
///             ],
///             approveAfterDays: 7,
///         },
///     ],
///     name: "WindowsOSAndMicrosoftApps",
///     description: "Patch both Windows and Microsoft apps",
///     operatingSystem: "WINDOWS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// windows_os_apps = aws.ssm.PatchBaseline("windows_os_apps",
///     approval_rules=[
///         {
///             "patch_filters": [
///                 {
///                     "key": "CLASSIFICATION",
///                     "values": [
///                         "CriticalUpdates",
///                         "SecurityUpdates",
///                     ],
///                 },
///                 {
///                     "key": "MSRC_SEVERITY",
///                     "values": [
///                         "Critical",
///                         "Important",
///                     ],
///                 },
///             ],
///             "approve_after_days": 7,
///         },
///         {
///             "patch_filters": [
///                 {
///                     "key": "PATCH_SET",
///                     "values": ["APPLICATION"],
///                 },
///                 {
///                     "key": "PRODUCT",
///                     "values": [
///                         "Office 2013",
///                         "Office 2016",
///                     ],
///                 },
///             ],
///             "approve_after_days": 7,
///         },
///     ],
///     name="WindowsOSAndMicrosoftApps",
///     description="Patch both Windows and Microsoft apps",
///     operating_system="WINDOWS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var windowsOsApps = new Aws.Ssm.PatchBaseline("windows_os_apps", new()
///     {
///         ApprovalRules = new[]
///         {
///             new Aws.Ssm.Inputs.PatchBaselineApprovalRuleArgs
///             {
///                 PatchFilters = new[]
///                 {
///                     new Aws.Ssm.Inputs.PatchBaselineApprovalRulePatchFilterArgs
///                     {
///                         Key = "CLASSIFICATION",
///                         Values = new[]
///                         {
///                             "CriticalUpdates",
///                             "SecurityUpdates",
///                         },
///                     },
///                     new Aws.Ssm.Inputs.PatchBaselineApprovalRulePatchFilterArgs
///                     {
///                         Key = "MSRC_SEVERITY",
///                         Values = new[]
///                         {
///                             "Critical",
///                             "Important",
///                         },
///                     },
///                 },
///                 ApproveAfterDays = 7,
///             },
///             new Aws.Ssm.Inputs.PatchBaselineApprovalRuleArgs
///             {
///                 PatchFilters = new[]
///                 {
///                     new Aws.Ssm.Inputs.PatchBaselineApprovalRulePatchFilterArgs
///                     {
///                         Key = "PATCH_SET",
///                         Values = new[]
///                         {
///                             "APPLICATION",
///                         },
///                     },
///                     new Aws.Ssm.Inputs.PatchBaselineApprovalRulePatchFilterArgs
///                     {
///                         Key = "PRODUCT",
///                         Values = new[]
///                         {
///                             "Office 2013",
///                             "Office 2016",
///                         },
///                     },
///                 },
///                 ApproveAfterDays = 7,
///             },
///         },
///         Name = "WindowsOSAndMicrosoftApps",
///         Description = "Patch both Windows and Microsoft apps",
///         OperatingSystem = "WINDOWS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.NewPatchBaseline(ctx, "windows_os_apps", &ssm.PatchBaselineArgs{
/// 			ApprovalRules: ssm.PatchBaselineApprovalRuleArray{
/// 				&ssm.PatchBaselineApprovalRuleArgs{
/// 					PatchFilters: ssm.PatchBaselineApprovalRulePatchFilterArray{
/// 						&ssm.PatchBaselineApprovalRulePatchFilterArgs{
/// 							Key: pulumi.String("CLASSIFICATION"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("CriticalUpdates"),
/// 								pulumi.String("SecurityUpdates"),
/// 							},
/// 						},
/// 						&ssm.PatchBaselineApprovalRulePatchFilterArgs{
/// 							Key: pulumi.String("MSRC_SEVERITY"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("Critical"),
/// 								pulumi.String("Important"),
/// 							},
/// 						},
/// 					},
/// 					ApproveAfterDays: pulumi.Int(7),
/// 				},
/// 				&ssm.PatchBaselineApprovalRuleArgs{
/// 					PatchFilters: ssm.PatchBaselineApprovalRulePatchFilterArray{
/// 						&ssm.PatchBaselineApprovalRulePatchFilterArgs{
/// 							Key: pulumi.String("PATCH_SET"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("APPLICATION"),
/// 							},
/// 						},
/// 						&ssm.PatchBaselineApprovalRulePatchFilterArgs{
/// 							Key: pulumi.String("PRODUCT"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("Office 2013"),
/// 								pulumi.String("Office 2016"),
/// 							},
/// 						},
/// 					},
/// 					ApproveAfterDays: pulumi.Int(7),
/// 				},
/// 			},
/// 			Name:            pulumi.String("WindowsOSAndMicrosoftApps"),
/// 			Description:     pulumi.String("Patch both Windows and Microsoft apps"),
/// 			OperatingSystem: pulumi.String("WINDOWS"),
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
/// resource "aws_ssm_patchbaseline" "windows_os_apps" {
///   approval_rules {
///     patch_filters {
///       key    = "CLASSIFICATION"
///       values = ["CriticalUpdates", "SecurityUpdates"]
///     }
///     patch_filters {
///       key    = "MSRC_SEVERITY"
///       values = ["Critical", "Important"]
///     }
///     approve_after_days = 7
///   }
///   approval_rules {
///     patch_filters {
///       key    = "PATCH_SET"
///       values = ["APPLICATION"]
///     }
///     patch_filters {
///       key    = "PRODUCT"
///       values = ["Office 2013", "Office 2016"]
///     }
///     approve_after_days = 7
///   }
///   name             = "WindowsOSAndMicrosoftApps"
///   description      = "Patch both Windows and Microsoft apps"
///   operating_system = "WINDOWS"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.PatchBaseline;
/// import com.pulumi.aws.ssm.PatchBaselineArgs;
/// import com.pulumi.aws.ssm.inputs.PatchBaselineApprovalRuleArgs;
/// import com.pulumi.aws.ssm.inputs.PatchBaselineApprovalRulePatchFilterArgs;
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
///         var windowsOsApps = new PatchBaseline("windowsOsApps", PatchBaselineArgs.builder()
///             .approvalRules(
///                 PatchBaselineApprovalRuleArgs.builder()
///                     .patchFilters(
///                         PatchBaselineApprovalRulePatchFilterArgs.builder()
///                             .key("CLASSIFICATION")
///                             .values(
///                                 "CriticalUpdates",
///                                 "SecurityUpdates")
///                             .build(),
///                         PatchBaselineApprovalRulePatchFilterArgs.builder()
///                             .key("MSRC_SEVERITY")
///                             .values(
///                                 "Critical",
///                                 "Important")
///                             .build())
///                     .approveAfterDays(7)
///                     .build(),
///                 PatchBaselineApprovalRuleArgs.builder()
///                     .patchFilters(
///                         PatchBaselineApprovalRulePatchFilterArgs.builder()
///                             .key("PATCH_SET")
///                             .values("APPLICATION")
///                             .build(),
///                         PatchBaselineApprovalRulePatchFilterArgs.builder()
///                             .key("PRODUCT")
///                             .values(
///                                 "Office 2013",
///                                 "Office 2016")
///                             .build())
///                     .approveAfterDays(7)
///                     .build())
///             .name("WindowsOSAndMicrosoftApps")
///             .description("Patch both Windows and Microsoft apps")
///             .operatingSystem("WINDOWS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   windowsOsApps:
///     type: aws:ssm:PatchBaseline
///     name: windows_os_apps
///     properties:
///       approvalRules:
///         - patchFilters:
///             - key: CLASSIFICATION
///               values:
///                 - CriticalUpdates
///                 - SecurityUpdates
///             - key: MSRC_SEVERITY
///               values:
///                 - Critical
///                 - Important
///           approveAfterDays: 7
///         - patchFilters:
///             - key: PATCH_SET
///               values:
///                 - APPLICATION
///             - key: PRODUCT
///               values:
///                 - Office 2013
///                 - Office 2016
///           approveAfterDays: 7
///       name: WindowsOSAndMicrosoftApps
///       description: Patch both Windows and Microsoft apps
///       operatingSystem: WINDOWS
/// ```
///
///
/// ### Advanced usage, specifying alternate patch source repository
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const al201709 = new aws.ssm.PatchBaseline("al_2017_09", {
///     approvalRules: [{}],
///     sources: [{
///         name: "My-AL2017.09",
///         products: ["AmazonLinux2017.09"],
///         configuration: `[amzn-main]
/// name=amzn-main-Base
/// mirrorlist=http://repo./awsregion./awsdomain//releasever/main/mirror.list
/// mirrorlist_expire=300
/// metadata_expire=300
/// priority=10
/// failovermethod=priority
/// fastestmirror_enabled=0
/// gpgcheck=1
/// gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-ga
/// enabled=1
/// retries=3
/// timeout=5
/// report_instanceid=yes
/// `,
///     }],
///     name: "Amazon-Linux-2017.09",
///     description: "My patch repository for Amazon Linux 2017.09",
///     operatingSystem: "AMAZON_LINUX",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// al201709 = aws.ssm.PatchBaseline("al_2017_09",
///     approval_rules=[{}],
///     sources=[{
///         "name": "My-AL2017.09",
///         "products": ["AmazonLinux2017.09"],
///         "configuration": """[amzn-main]
/// name=amzn-main-Base
/// mirrorlist=http://repo./$awsregion./$awsdomain//$releasever/main/mirror.list
/// mirrorlist_expire=300
/// metadata_expire=300
/// priority=10
/// failovermethod=priority
/// fastestmirror_enabled=0
/// gpgcheck=1
/// gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-ga
/// enabled=1
/// retries=3
/// timeout=5
/// report_instanceid=yes
/// """,
///     }],
///     name="Amazon-Linux-2017.09",
///     description="My patch repository for Amazon Linux 2017.09",
///     operating_system="AMAZON_LINUX")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var al201709 = new Aws.Ssm.PatchBaseline("al_2017_09", new()
///     {
///         ApprovalRules = new[]
///         {
///             null,
///         },
///         Sources = new[]
///         {
///             new Aws.Ssm.Inputs.PatchBaselineSourceArgs
///             {
///                 Name = "My-AL2017.09",
///                 Products = new[]
///                 {
///                     "AmazonLinux2017.09",
///                 },
///                 Configuration = @"[amzn-main]
/// name=amzn-main-Base
/// mirrorlist=http://repo./$awsregion./$awsdomain//$releasever/main/mirror.list
/// mirrorlist_expire=300
/// metadata_expire=300
/// priority=10
/// failovermethod=priority
/// fastestmirror_enabled=0
/// gpgcheck=1
/// gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-ga
/// enabled=1
/// retries=3
/// timeout=5
/// report_instanceid=yes
/// ",
///             },
///         },
///         Name = "Amazon-Linux-2017.09",
///         Description = "My patch repository for Amazon Linux 2017.09",
///         OperatingSystem = "AMAZON_LINUX",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.NewPatchBaseline(ctx, "al_2017_09", &ssm.PatchBaselineArgs{
/// 			ApprovalRules: ssm.PatchBaselineApprovalRuleArray{
/// 				&ssm.PatchBaselineApprovalRuleArgs{},
/// 			},
/// 			Sources: ssm.PatchBaselineSourceArray{
/// 				&ssm.PatchBaselineSourceArgs{
/// 					Name: pulumi.String("My-AL2017.09"),
/// 					Products: pulumi.StringArray{
/// 						pulumi.String("AmazonLinux2017.09"),
/// 					},
/// 					Configuration: pulumi.String(`[amzn-main]
/// name=amzn-main-Base
/// mirrorlist=http://repo./$awsregion./$awsdomain//$releasever/main/mirror.list
/// mirrorlist_expire=300
/// metadata_expire=300
/// priority=10
/// failovermethod=priority
/// fastestmirror_enabled=0
/// gpgcheck=1
/// gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-ga
/// enabled=1
/// retries=3
/// timeout=5
/// report_instanceid=yes
/// `),
/// 				},
/// 			},
/// 			Name:            pulumi.String("Amazon-Linux-2017.09"),
/// 			Description:     pulumi.String("My patch repository for Amazon Linux 2017.09"),
/// 			OperatingSystem: pulumi.String("AMAZON_LINUX"),
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
/// resource "aws_ssm_patchbaseline" "al_2017_09" {
///   approval_rules {
///   }
///   sources {
///     name          = "My-AL2017.09"
///     products      = ["AmazonLinux2017.09"]
///     configuration = "[amzn-main]\nname=amzn-main-Base\nmirrorlist=http://repo./$awsregion./$awsdomain//$releasever/main/mirror.list\nmirrorlist_expire=300\nmetadata_expire=300\npriority=10\nfailovermethod=priority\nfastestmirror_enabled=0\ngpgcheck=1\ngpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-ga\nenabled=1\nretries=3\ntimeout=5\nreport_instanceid=yes\n"
///   }
///   name             = "Amazon-Linux-2017.09"
///   description      = "My patch repository for Amazon Linux 2017.09"
///   operating_system = "AMAZON_LINUX"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.PatchBaseline;
/// import com.pulumi.aws.ssm.PatchBaselineArgs;
/// import com.pulumi.aws.ssm.inputs.PatchBaselineApprovalRuleArgs;
/// import com.pulumi.aws.ssm.inputs.PatchBaselineSourceArgs;
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
///         var al201709 = new PatchBaseline("al201709", PatchBaselineArgs.builder()
///             .approvalRules(PatchBaselineApprovalRuleArgs.builder()
///                 .build())
///             .sources(PatchBaselineSourceArgs.builder()
///                 .name("My-AL2017.09")
///                 .products("AmazonLinux2017.09")
///                 .configuration("""
/// [amzn-main]
/// name=amzn-main-Base
/// mirrorlist=http://repo./$awsregion./$awsdomain//$releasever/main/mirror.list
/// mirrorlist_expire=300
/// metadata_expire=300
/// priority=10
/// failovermethod=priority
/// fastestmirror_enabled=0
/// gpgcheck=1
/// gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-ga
/// enabled=1
/// retries=3
/// timeout=5
/// report_instanceid=yes
///                 """)
///                 .build())
///             .name("Amazon-Linux-2017.09")
///             .description("My patch repository for Amazon Linux 2017.09")
///             .operatingSystem("AMAZON_LINUX")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   al201709:
///     type: aws:ssm:PatchBaseline
///     name: al_2017_09
///     properties:
///       approvalRules:
///         - {}
///       sources:
///         - name: My-AL2017.09
///           products:
///             - AmazonLinux2017.09
///           configuration: |
///             [amzn-main]
///             name=amzn-main-Base
///             mirrorlist=http://repo./$awsregion./$awsdomain//$releasever/main/mirror.list
///             mirrorlist_expire=300
///             metadata_expire=300
///             priority=10
///             failovermethod=priority
///             fastestmirror_enabled=0
///             gpgcheck=1
///             gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-ga
///             enabled=1
///             retries=3
///             timeout=5
///             report_instanceid=yes
///       name: Amazon-Linux-2017.09
///       description: My patch repository for Amazon Linux 2017.09
///       operatingSystem: AMAZON_LINUX
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the patch baseline.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSM Patch Baselines using their baseline ID. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/patchBaseline:PatchBaseline example pb-12345678
/// ```
class PatchBaseline extends pulumi.CustomResource {
  /// Set of rules used to include patches in the baseline. Up to 10 approval rules can be specified. See `approvalRule` below.
  late final pulumi.Output<List<PatchBaselineApprovalRule>?> approvalRules;
  /// List of explicitly approved patches for the baseline. Cannot be specified with `approvalRule`.
  late final pulumi.Output<List<String>?> approvedPatches;
  /// Compliance level for approved patches. This means that if an approved patch is reported as missing, this is the severity of the compliance violation. Valid values are `CRITICAL`, `HIGH`, `MEDIUM`, `LOW`, `INFORMATIONAL`, `UNSPECIFIED`. The default value is `UNSPECIFIED`.
  late final pulumi.Output<String?> approvedPatchesComplianceLevel;
  /// Whether the list of approved patches includes non-security updates that should be applied to the instances. Applies to Linux instances only.
  late final pulumi.Output<bool?> approvedPatchesEnableNonSecurity;
  /// ARN of the baseline.
  late final pulumi.Output<String> arn;
  /// Indicates the compliance status of managed nodes for which security-related patches are available but were not approved. Supported for Windows Server managed nodes only. Valid values are `COMPLIANT`, `NON_COMPLIANT`.
  late final pulumi.Output<String> availableSecurityUpdatesComplianceStatus;
  /// Description of the patch baseline.
  late final pulumi.Output<String?> description;
  /// Set of global filters used to exclude patches from the baseline. Up to 4 global filters can be specified using Key/Value pairs. Valid Keys are `PRODUCT`, `CLASSIFICATION`, `MSRC_SEVERITY`, and `PATCH_ID`.
  late final pulumi.Output<List<PatchBaselineGlobalFilter>?> globalFilters;
  /// JSON definition of the baseline.
  late final pulumi.Output<String> json;
  /// Name of the patch baseline.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Operating system the patch baseline applies to. Valid values are `ALMA_LINUX`, `AMAZON_LINUX`, `AMAZON_LINUX_2`, `AMAZON_LINUX_2022`, `AMAZON_LINUX_2023`, `CENTOS`, `DEBIAN`, `MACOS`, `ORACLE_LINUX`, `RASPBIAN`, `REDHAT_ENTERPRISE_LINUX`, `ROCKY_LINUX`, `SUSE`, `UBUNTU`, and `WINDOWS`. The default value is `WINDOWS`.
  late final pulumi.Output<String?> operatingSystem;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// List of rejected patches.
  late final pulumi.Output<List<String>?> rejectedPatches;
  /// Action for Patch Manager to take on patches included in the `rejectedPatches` list. Valid values are `ALLOW_AS_DEPENDENCY` and `BLOCK`.
  late final pulumi.Output<String> rejectedPatchesAction;
  /// Configuration block with alternate sources for patches. Applies to Linux instances only. See `source` below.
  late final pulumi.Output<List<PatchBaselineSource>?> sources;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [PatchBaseline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PatchBaseline]. {@macro pulumi_ssm_patch_baseline_patch_baseline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PatchBaseline(
    String name, {
    PatchBaselineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/patchBaseline:PatchBaseline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    approvalRules = registerOutput<List<PatchBaselineApprovalRule>?>('approvalRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PatchBaselineApprovalRule>(guardedValue, (value) => PatchBaselineApprovalRule.fromMap((value as Map).cast<String, dynamic>())); });
    approvedPatches = registerOutput<List<String>?>('approvedPatches', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    approvedPatchesComplianceLevel = registerOutput<String?>('approvedPatchesComplianceLevel');
    approvedPatchesEnableNonSecurity = registerOutput<bool?>('approvedPatchesEnableNonSecurity');
    arn = registerOutput<String>('arn');
    availableSecurityUpdatesComplianceStatus = registerOutput<String>('availableSecurityUpdatesComplianceStatus');
    description = registerOutput<String?>('description');
    globalFilters = registerOutput<List<PatchBaselineGlobalFilter>?>('globalFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PatchBaselineGlobalFilter>(guardedValue, (value) => PatchBaselineGlobalFilter.fromMap((value as Map).cast<String, dynamic>())); });
    json = registerOutput<String>('json');
    this.name = registerOutput<String>('name');
    operatingSystem = registerOutput<String?>('operatingSystem');
    region = registerOutput<String>('region');
    rejectedPatches = registerOutput<List<String>?>('rejectedPatches', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    rejectedPatchesAction = registerOutput<String>('rejectedPatchesAction');
    sources = registerOutput<List<PatchBaselineSource>?>('sources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PatchBaselineSource>(guardedValue, (value) => PatchBaselineSource.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [PatchBaseline] resource's state with the given [name] and [id].
  static PatchBaseline get(
    String name,
    pulumi.Input<String> id, {
    PatchBaselineState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PatchBaseline._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PatchBaseline._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/patchBaseline:PatchBaseline',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    approvalRules = registerOutput<List<PatchBaselineApprovalRule>?>('approvalRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PatchBaselineApprovalRule>(guardedValue, (value) => PatchBaselineApprovalRule.fromMap((value as Map).cast<String, dynamic>())); });
    approvedPatches = registerOutput<List<String>?>('approvedPatches', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    approvedPatchesComplianceLevel = registerOutput<String?>('approvedPatchesComplianceLevel');
    approvedPatchesEnableNonSecurity = registerOutput<bool?>('approvedPatchesEnableNonSecurity');
    arn = registerOutput<String>('arn');
    availableSecurityUpdatesComplianceStatus = registerOutput<String>('availableSecurityUpdatesComplianceStatus');
    description = registerOutput<String?>('description');
    globalFilters = registerOutput<List<PatchBaselineGlobalFilter>?>('globalFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PatchBaselineGlobalFilter>(guardedValue, (value) => PatchBaselineGlobalFilter.fromMap((value as Map).cast<String, dynamic>())); });
    json = registerOutput<String>('json');
    this.name = registerOutput<String>('name');
    operatingSystem = registerOutput<String?>('operatingSystem');
    region = registerOutput<String>('region');
    rejectedPatches = registerOutput<List<String>?>('rejectedPatches', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    rejectedPatchesAction = registerOutput<String>('rejectedPatchesAction');
    sources = registerOutput<List<PatchBaselineSource>?>('sources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PatchBaselineSource>(guardedValue, (value) => PatchBaselineSource.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [PatchBaseline] resource.
  PatchBaseline.reference(String urn)
    : super(
        'aws:ssm/patchBaseline:PatchBaseline',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    approvalRules = registerOutput<List<PatchBaselineApprovalRule>?>('approvalRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PatchBaselineApprovalRule>(guardedValue, (value) => PatchBaselineApprovalRule.fromMap((value as Map).cast<String, dynamic>())); });
    approvedPatches = registerOutput<List<String>?>('approvedPatches', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    approvedPatchesComplianceLevel = registerOutput<String?>('approvedPatchesComplianceLevel');
    approvedPatchesEnableNonSecurity = registerOutput<bool?>('approvedPatchesEnableNonSecurity');
    arn = registerOutput<String>('arn');
    availableSecurityUpdatesComplianceStatus = registerOutput<String>('availableSecurityUpdatesComplianceStatus');
    description = registerOutput<String?>('description');
    globalFilters = registerOutput<List<PatchBaselineGlobalFilter>?>('globalFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PatchBaselineGlobalFilter>(guardedValue, (value) => PatchBaselineGlobalFilter.fromMap((value as Map).cast<String, dynamic>())); });
    json = registerOutput<String>('json');
    this.name = registerOutput<String>('name');
    operatingSystem = registerOutput<String?>('operatingSystem');
    region = registerOutput<String>('region');
    rejectedPatches = registerOutput<List<String>?>('rejectedPatches', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    rejectedPatchesAction = registerOutput<String>('rejectedPatchesAction');
    sources = registerOutput<List<PatchBaselineSource>?>('sources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PatchBaselineSource>(guardedValue, (value) => PatchBaselineSource.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
