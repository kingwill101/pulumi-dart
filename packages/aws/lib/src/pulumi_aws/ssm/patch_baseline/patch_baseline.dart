import 'package:pulumi/pulumi.dart';
import '../patch_baseline_approval_rule/patch_baseline_approval_rule.dart';
import '../patch_baseline_global_filter/patch_baseline_global_filter.dart';
import '../patch_baseline_source/patch_baseline_source.dart';
import 'patch_baseline_args.dart';

/// Provides an SSM Patch Baseline resource.
///
/// > **NOTE on Patch Baselines:** The <span pulumi-lang-nodejs="`approvedPatches`" pulumi-lang-dotnet="`ApprovedPatches`" pulumi-lang-go="`approvedPatches`" pulumi-lang-python="`approved_patches`" pulumi-lang-yaml="`approvedPatches`" pulumi-lang-java="`approvedPatches`">`approved_patches`</span> and <span pulumi-lang-nodejs="`approvalRule`" pulumi-lang-dotnet="`ApprovalRule`" pulumi-lang-go="`approvalRule`" pulumi-lang-python="`approval_rule`" pulumi-lang-yaml="`approvalRule`" pulumi-lang-java="`approvalRule`">`approval_rule`</span> are
/// both marked as optional fields, but the Patch Baseline requires that at least one
/// of them is specified.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// Using <span pulumi-lang-nodejs="`approvedPatches`" pulumi-lang-dotnet="`ApprovedPatches`" pulumi-lang-go="`approvedPatches`" pulumi-lang-python="`approved_patches`" pulumi-lang-yaml="`approvedPatches`" pulumi-lang-java="`approvedPatches`">`approved_patches`</span> only.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const production = new aws.ssm.PatchBaseline("production", {
/// name: "patch-baseline",
/// approvedPatches: ["KB123456"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// production = aws.ssm.PatchBaseline("production",
/// name="patch-baseline",
/// approved_patches=["KB123456"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var production = new Aws.Ssm.PatchBaseline("production", new()
/// {
/// Name = "patch-baseline",
/// ApprovedPatches = new[]
/// {
/// "KB123456",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssm.NewPatchBaseline(ctx, "production", &ssm.PatchBaselineArgs{
/// Name: pulumi.String("patch-baseline"),
/// ApprovedPatches: pulumi.StringArray{
/// pulumi.String("KB123456"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var production = new PatchBaseline("production", PatchBaselineArgs.builder()
/// .name("patch-baseline")
/// .approvedPatches("KB123456")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// production:
/// type: aws:ssm:PatchBaseline
/// properties:
/// name: patch-baseline
/// approvedPatches:
/// - KB123456
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Advanced Usage, specifying patch filters
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const production = new aws.ssm.PatchBaseline("production", {
/// name: "patch-baseline",
/// description: "Patch Baseline Description",
/// approvedPatches: [
/// "KB123456",
/// "KB456789",
/// ],
/// rejectedPatches: ["KB987654"],
/// globalFilters: [
/// {
/// key: "PRODUCT",
/// values: ["WindowsServer2008"],
/// },
/// {
/// key: "CLASSIFICATION",
/// values: ["ServicePacks"],
/// },
/// {
/// key: "MSRC_SEVERITY",
/// values: ["Low"],
/// },
/// ],
/// approvalRules: [
/// {
/// approveAfterDays: 7,
/// complianceLevel: "HIGH",
/// patchFilters: [
/// {
/// key: "PRODUCT",
/// values: ["WindowsServer2016"],
/// },
/// {
/// key: "CLASSIFICATION",
/// values: [
/// "CriticalUpdates",
/// "SecurityUpdates",
/// "Updates",
/// ],
/// },
/// {
/// key: "MSRC_SEVERITY",
/// values: [
/// "Critical",
/// "Important",
/// "Moderate",
/// ],
/// },
/// ],
/// },
/// {
/// approveAfterDays: 7,
/// patchFilters: [{
/// key: "PRODUCT",
/// values: ["WindowsServer2012"],
/// }],
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// production = aws.ssm.PatchBaseline("production",
/// name="patch-baseline",
/// description="Patch Baseline Description",
/// approved_patches=[
/// "KB123456",
/// "KB456789",
/// ],
/// rejected_patches=["KB987654"],
/// global_filters=[
/// {
/// "key": "PRODUCT",
/// "values": ["WindowsServer2008"],
/// },
/// {
/// "key": "CLASSIFICATION",
/// "values": ["ServicePacks"],
/// },
/// {
/// "key": "MSRC_SEVERITY",
/// "values": ["Low"],
/// },
/// ],
/// approval_rules=[
/// {
/// "approve_after_days": 7,
/// "compliance_level": "HIGH",
/// "patch_filters": [
/// {
/// "key": "PRODUCT",
/// "values": ["WindowsServer2016"],
/// },
/// {
/// "key": "CLASSIFICATION",
/// "values": [
/// "CriticalUpdates",
/// "SecurityUpdates",
/// "Updates",
/// ],
/// },
/// {
/// "key": "MSRC_SEVERITY",
/// "values": [
/// "Critical",
/// "Important",
/// "Moderate",
/// ],
/// },
/// ],
/// },
/// {
/// "approve_after_days": 7,
/// "patch_filters": [{
/// "key": "PRODUCT",
/// "values": ["WindowsServer2012"],
/// }],
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var production = new Aws.Ssm.PatchBaseline("production", new()
/// {
/// Name = "patch-baseline",
/// Description = "Patch Baseline Description",
/// ApprovedPatches = new[]
/// {
/// "KB123456",
/// "KB456789",
/// },
/// RejectedPatches = new[]
/// {
/// "KB987654",
/// },
/// GlobalFilters = new[]
/// {
/// new Aws.Ssm.Inputs.PatchBaselineGlobalFilterArgs
/// {
/// Key = "PRODUCT",
/// Values = new[]
/// {
/// "WindowsServer2008",
/// },
/// },
/// new Aws.Ssm.Inputs.PatchBaselineGlobalFilterArgs
/// {
/// Key = "CLASSIFICATION",
/// Values = new[]
/// {
/// "ServicePacks",
/// },
/// },
/// new Aws.Ssm.Inputs.PatchBaselineGlobalFilterArgs
/// {
/// Key = "MSRC_SEVERITY",
/// Values = new[]
/// {
/// "Low",
/// },
/// },
/// },
/// ApprovalRules = new[]
/// {
/// new Aws.Ssm.Inputs.PatchBaselineApprovalRuleArgs
/// {
/// ApproveAfterDays = 7,
/// ComplianceLevel = "HIGH",
/// PatchFilters = new[]
/// {
/// new Aws.Ssm.Inputs.PatchBaselineApprovalRulePatchFilterArgs
/// {
/// Key = "PRODUCT",
/// Values = new[]
/// {
/// "WindowsServer2016",
/// },
/// },
/// new Aws.Ssm.Inputs.PatchBaselineApprovalRulePatchFilterArgs
/// {
/// Key = "CLASSIFICATION",
/// Values = new[]
/// {
/// "CriticalUpdates",
/// "SecurityUpdates",
/// "Updates",
/// },
/// },
/// new Aws.Ssm.Inputs.PatchBaselineApprovalRulePatchFilterArgs
/// {
/// Key = "MSRC_SEVERITY",
/// Values = new[]
/// {
/// "Critical",
/// "Important",
/// "Moderate",
/// },
/// },
/// },
/// },
/// new Aws.Ssm.Inputs.PatchBaselineApprovalRuleArgs
/// {
/// ApproveAfterDays = 7,
/// PatchFilters = new[]
/// {
/// new Aws.Ssm.Inputs.PatchBaselineApprovalRulePatchFilterArgs
/// {
/// Key = "PRODUCT",
/// Values = new[]
/// {
/// "WindowsServer2012",
/// },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssm.NewPatchBaseline(ctx, "production", &ssm.PatchBaselineArgs{
/// Name:        pulumi.String("patch-baseline"),
/// Description: pulumi.String("Patch Baseline Description"),
/// ApprovedPatches: pulumi.StringArray{
/// pulumi.String("KB123456"),
/// pulumi.String("KB456789"),
/// },
/// RejectedPatches: pulumi.StringArray{
/// pulumi.String("KB987654"),
/// },
/// GlobalFilters: ssm.PatchBaselineGlobalFilterArray{
/// &ssm.PatchBaselineGlobalFilterArgs{
/// Key: pulumi.String("PRODUCT"),
/// Values: pulumi.StringArray{
/// pulumi.String("WindowsServer2008"),
/// },
/// },
/// &ssm.PatchBaselineGlobalFilterArgs{
/// Key: pulumi.String("CLASSIFICATION"),
/// Values: pulumi.StringArray{
/// pulumi.String("ServicePacks"),
/// },
/// },
/// &ssm.PatchBaselineGlobalFilterArgs{
/// Key: pulumi.String("MSRC_SEVERITY"),
/// Values: pulumi.StringArray{
/// pulumi.String("Low"),
/// },
/// },
/// },
/// ApprovalRules: ssm.PatchBaselineApprovalRuleArray{
/// &ssm.PatchBaselineApprovalRuleArgs{
/// ApproveAfterDays: pulumi.Int(7),
/// ComplianceLevel:  pulumi.String("HIGH"),
/// PatchFilters: ssm.PatchBaselineApprovalRulePatchFilterArray{
/// &ssm.PatchBaselineApprovalRulePatchFilterArgs{
/// Key: pulumi.String("PRODUCT"),
/// Values: pulumi.StringArray{
/// pulumi.String("WindowsServer2016"),
/// },
/// },
/// &ssm.PatchBaselineApprovalRulePatchFilterArgs{
/// Key: pulumi.String("CLASSIFICATION"),
/// Values: pulumi.StringArray{
/// pulumi.String("CriticalUpdates"),
/// pulumi.String("SecurityUpdates"),
/// pulumi.String("Updates"),
/// },
/// },
/// &ssm.PatchBaselineApprovalRulePatchFilterArgs{
/// Key: pulumi.String("MSRC_SEVERITY"),
/// Values: pulumi.StringArray{
/// pulumi.String("Critical"),
/// pulumi.String("Important"),
/// pulumi.String("Moderate"),
/// },
/// },
/// },
/// },
/// &ssm.PatchBaselineApprovalRuleArgs{
/// ApproveAfterDays: pulumi.Int(7),
/// PatchFilters: ssm.PatchBaselineApprovalRulePatchFilterArray{
/// &ssm.PatchBaselineApprovalRulePatchFilterArgs{
/// Key: pulumi.String("PRODUCT"),
/// Values: pulumi.StringArray{
/// pulumi.String("WindowsServer2012"),
/// },
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.aws.ssm.inputs.PatchBaselineGlobalFilterArgs;
/// import com.pulumi.aws.ssm.inputs.PatchBaselineApprovalRuleArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var production = new PatchBaseline("production", PatchBaselineArgs.builder()
/// .name("patch-baseline")
/// .description("Patch Baseline Description")
/// .approvedPatches(
/// "KB123456",
/// "KB456789")
/// .rejectedPatches("KB987654")
/// .globalFilters(
/// PatchBaselineGlobalFilterArgs.builder()
/// .key("PRODUCT")
/// .values("WindowsServer2008")
/// .build(),
/// PatchBaselineGlobalFilterArgs.builder()
/// .key("CLASSIFICATION")
/// .values("ServicePacks")
/// .build(),
/// PatchBaselineGlobalFilterArgs.builder()
/// .key("MSRC_SEVERITY")
/// .values("Low")
/// .build())
/// .approvalRules(
/// PatchBaselineApprovalRuleArgs.builder()
/// .approveAfterDays(7)
/// .complianceLevel("HIGH")
/// .patchFilters(
/// PatchBaselineApprovalRulePatchFilterArgs.builder()
/// .key("PRODUCT")
/// .values("WindowsServer2016")
/// .build(),
/// PatchBaselineApprovalRulePatchFilterArgs.builder()
/// .key("CLASSIFICATION")
/// .values(
/// "CriticalUpdates",
/// "SecurityUpdates",
/// "Updates")
/// .build(),
/// PatchBaselineApprovalRulePatchFilterArgs.builder()
/// .key("MSRC_SEVERITY")
/// .values(
/// "Critical",
/// "Important",
/// "Moderate")
/// .build())
/// .build(),
/// PatchBaselineApprovalRuleArgs.builder()
/// .approveAfterDays(7)
/// .patchFilters(PatchBaselineApprovalRulePatchFilterArgs.builder()
/// .key("PRODUCT")
/// .values("WindowsServer2012")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// production:
/// type: aws:ssm:PatchBaseline
/// properties:
/// name: patch-baseline
/// description: Patch Baseline Description
/// approvedPatches:
/// - KB123456
/// - KB456789
/// rejectedPatches:
/// - KB987654
/// globalFilters:
/// - key: PRODUCT
/// values:
/// - WindowsServer2008
/// - key: CLASSIFICATION
/// values:
/// - ServicePacks
/// - key: MSRC_SEVERITY
/// values:
/// - Low
/// approvalRules:
/// - approveAfterDays: 7
/// complianceLevel: HIGH
/// patchFilters:
/// - key: PRODUCT
/// values:
/// - WindowsServer2016
/// - key: CLASSIFICATION
/// values:
/// - CriticalUpdates
/// - SecurityUpdates
/// - Updates
/// - key: MSRC_SEVERITY
/// values:
/// - Critical
/// - Important
/// - Moderate
/// - approveAfterDays: 7
/// patchFilters:
/// - key: PRODUCT
/// values:
/// - WindowsServer2012
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Advanced usage, specifying Microsoft application and Windows patch rules
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const windowsOsApps = new aws.ssm.PatchBaseline("windows_os_apps", {
/// name: "WindowsOSAndMicrosoftApps",
/// description: "Patch both Windows and Microsoft apps",
/// operatingSystem: "WINDOWS",
/// approvalRules: [
/// {
/// approveAfterDays: 7,
/// patchFilters: [
/// {
/// key: "CLASSIFICATION",
/// values: [
/// "CriticalUpdates",
/// "SecurityUpdates",
/// ],
/// },
/// {
/// key: "MSRC_SEVERITY",
/// values: [
/// "Critical",
/// "Important",
/// ],
/// },
/// ],
/// },
/// {
/// approveAfterDays: 7,
/// patchFilters: [
/// {
/// key: "PATCH_SET",
/// values: ["APPLICATION"],
/// },
/// {
/// key: "PRODUCT",
/// values: [
/// "Office 2013",
/// "Office 2016",
/// ],
/// },
/// ],
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// windows_os_apps = aws.ssm.PatchBaseline("windows_os_apps",
/// name="WindowsOSAndMicrosoftApps",
/// description="Patch both Windows and Microsoft apps",
/// operating_system="WINDOWS",
/// approval_rules=[
/// {
/// "approve_after_days": 7,
/// "patch_filters": [
/// {
/// "key": "CLASSIFICATION",
/// "values": [
/// "CriticalUpdates",
/// "SecurityUpdates",
/// ],
/// },
/// {
/// "key": "MSRC_SEVERITY",
/// "values": [
/// "Critical",
/// "Important",
/// ],
/// },
/// ],
/// },
/// {
/// "approve_after_days": 7,
/// "patch_filters": [
/// {
/// "key": "PATCH_SET",
/// "values": ["APPLICATION"],
/// },
/// {
/// "key": "PRODUCT",
/// "values": [
/// "Office 2013",
/// "Office 2016",
/// ],
/// },
/// ],
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var windowsOsApps = new Aws.Ssm.PatchBaseline("windows_os_apps", new()
/// {
/// Name = "WindowsOSAndMicrosoftApps",
/// Description = "Patch both Windows and Microsoft apps",
/// OperatingSystem = "WINDOWS",
/// ApprovalRules = new[]
/// {
/// new Aws.Ssm.Inputs.PatchBaselineApprovalRuleArgs
/// {
/// ApproveAfterDays = 7,
/// PatchFilters = new[]
/// {
/// new Aws.Ssm.Inputs.PatchBaselineApprovalRulePatchFilterArgs
/// {
/// Key = "CLASSIFICATION",
/// Values = new[]
/// {
/// "CriticalUpdates",
/// "SecurityUpdates",
/// },
/// },
/// new Aws.Ssm.Inputs.PatchBaselineApprovalRulePatchFilterArgs
/// {
/// Key = "MSRC_SEVERITY",
/// Values = new[]
/// {
/// "Critical",
/// "Important",
/// },
/// },
/// },
/// },
/// new Aws.Ssm.Inputs.PatchBaselineApprovalRuleArgs
/// {
/// ApproveAfterDays = 7,
/// PatchFilters = new[]
/// {
/// new Aws.Ssm.Inputs.PatchBaselineApprovalRulePatchFilterArgs
/// {
/// Key = "PATCH_SET",
/// Values = new[]
/// {
/// "APPLICATION",
/// },
/// },
/// new Aws.Ssm.Inputs.PatchBaselineApprovalRulePatchFilterArgs
/// {
/// Key = "PRODUCT",
/// Values = new[]
/// {
/// "Office 2013",
/// "Office 2016",
/// },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssm.NewPatchBaseline(ctx, "windows_os_apps", &ssm.PatchBaselineArgs{
/// Name:            pulumi.String("WindowsOSAndMicrosoftApps"),
/// Description:     pulumi.String("Patch both Windows and Microsoft apps"),
/// OperatingSystem: pulumi.String("WINDOWS"),
/// ApprovalRules: ssm.PatchBaselineApprovalRuleArray{
/// &ssm.PatchBaselineApprovalRuleArgs{
/// ApproveAfterDays: pulumi.Int(7),
/// PatchFilters: ssm.PatchBaselineApprovalRulePatchFilterArray{
/// &ssm.PatchBaselineApprovalRulePatchFilterArgs{
/// Key: pulumi.String("CLASSIFICATION"),
/// Values: pulumi.StringArray{
/// pulumi.String("CriticalUpdates"),
/// pulumi.String("SecurityUpdates"),
/// },
/// },
/// &ssm.PatchBaselineApprovalRulePatchFilterArgs{
/// Key: pulumi.String("MSRC_SEVERITY"),
/// Values: pulumi.StringArray{
/// pulumi.String("Critical"),
/// pulumi.String("Important"),
/// },
/// },
/// },
/// },
/// &ssm.PatchBaselineApprovalRuleArgs{
/// ApproveAfterDays: pulumi.Int(7),
/// PatchFilters: ssm.PatchBaselineApprovalRulePatchFilterArray{
/// &ssm.PatchBaselineApprovalRulePatchFilterArgs{
/// Key: pulumi.String("PATCH_SET"),
/// Values: pulumi.StringArray{
/// pulumi.String("APPLICATION"),
/// },
/// },
/// &ssm.PatchBaselineApprovalRulePatchFilterArgs{
/// Key: pulumi.String("PRODUCT"),
/// Values: pulumi.StringArray{
/// pulumi.String("Office 2013"),
/// pulumi.String("Office 2016"),
/// },
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var windowsOsApps = new PatchBaseline("windowsOsApps", PatchBaselineArgs.builder()
/// .name("WindowsOSAndMicrosoftApps")
/// .description("Patch both Windows and Microsoft apps")
/// .operatingSystem("WINDOWS")
/// .approvalRules(
/// PatchBaselineApprovalRuleArgs.builder()
/// .approveAfterDays(7)
/// .patchFilters(
/// PatchBaselineApprovalRulePatchFilterArgs.builder()
/// .key("CLASSIFICATION")
/// .values(
/// "CriticalUpdates",
/// "SecurityUpdates")
/// .build(),
/// PatchBaselineApprovalRulePatchFilterArgs.builder()
/// .key("MSRC_SEVERITY")
/// .values(
/// "Critical",
/// "Important")
/// .build())
/// .build(),
/// PatchBaselineApprovalRuleArgs.builder()
/// .approveAfterDays(7)
/// .patchFilters(
/// PatchBaselineApprovalRulePatchFilterArgs.builder()
/// .key("PATCH_SET")
/// .values("APPLICATION")
/// .build(),
/// PatchBaselineApprovalRulePatchFilterArgs.builder()
/// .key("PRODUCT")
/// .values(
/// "Office 2013",
/// "Office 2016")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// windowsOsApps:
/// type: aws:ssm:PatchBaseline
/// name: windows_os_apps
/// properties:
/// name: WindowsOSAndMicrosoftApps
/// description: Patch both Windows and Microsoft apps
/// operatingSystem: WINDOWS
/// approvalRules:
/// - approveAfterDays: 7
/// patchFilters:
/// - key: CLASSIFICATION
/// values:
/// - CriticalUpdates
/// - SecurityUpdates
/// - key: MSRC_SEVERITY
/// values:
/// - Critical
/// - Important
/// - approveAfterDays: 7
/// patchFilters:
/// - key: PATCH_SET
/// values:
/// - APPLICATION
/// - key: PRODUCT
/// values:
/// - Office 2013
/// - Office 2016
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Advanced usage, specifying alternate patch source repository
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const al201709 = new aws.ssm.PatchBaseline("al_2017_09", {
/// approvalRules: [{}],
/// name: "Amazon-Linux-2017.09",
/// description: "My patch repository for Amazon Linux 2017.09",
/// operatingSystem: "AMAZON_LINUX",
/// sources: [{
/// name: "My-AL2017.09",
/// products: ["AmazonLinux2017.09"],
/// configuration: `[amzn-main]
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
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// al201709 = aws.ssm.PatchBaseline("al_2017_09",
/// approval_rules=[{}],
/// name="Amazon-Linux-2017.09",
/// description="My patch repository for Amazon Linux 2017.09",
/// operating_system="AMAZON_LINUX",
/// sources=[{
/// "name": "My-AL2017.09",
/// "products": ["AmazonLinux2017.09"],
/// "configuration": """[amzn-main]
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
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var al201709 = new Aws.Ssm.PatchBaseline("al_2017_09", new()
/// {
/// ApprovalRules = new[]
/// {
/// null,
/// },
/// Name = "Amazon-Linux-2017.09",
/// Description = "My patch repository for Amazon Linux 2017.09",
/// OperatingSystem = "AMAZON_LINUX",
/// Sources = new[]
/// {
/// new Aws.Ssm.Inputs.PatchBaselineSourceArgs
/// {
/// Name = "My-AL2017.09",
/// Products = new[]
/// {
/// "AmazonLinux2017.09",
/// },
/// Configuration = @"[amzn-main]
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
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssm.NewPatchBaseline(ctx, "al_2017_09", &ssm.PatchBaselineArgs{
/// ApprovalRules: ssm.PatchBaselineApprovalRuleArray{
/// &ssm.PatchBaselineApprovalRuleArgs{},
/// },
/// Name:            pulumi.String("Amazon-Linux-2017.09"),
/// Description:     pulumi.String("My patch repository for Amazon Linux 2017.09"),
/// OperatingSystem: pulumi.String("AMAZON_LINUX"),
/// Sources: ssm.PatchBaselineSourceArray{
/// &ssm.PatchBaselineSourceArgs{
/// Name: pulumi.String("My-AL2017.09"),
/// Products: pulumi.StringArray{
/// pulumi.String("AmazonLinux2017.09"),
/// },
/// Configuration: pulumi.String(`[amzn-main]
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
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var al201709 = new PatchBaseline("al201709", PatchBaselineArgs.builder()
/// .approvalRules(PatchBaselineApprovalRuleArgs.builder()
/// .build())
/// .name("Amazon-Linux-2017.09")
/// .description("My patch repository for Amazon Linux 2017.09")
/// .operatingSystem("AMAZON_LINUX")
/// .sources(PatchBaselineSourceArgs.builder()
/// .name("My-AL2017.09")
/// .products("AmazonLinux2017.09")
/// .configuration("""
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
/// """)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// al201709:
/// type: aws:ssm:PatchBaseline
/// name: al_2017_09
/// properties:
/// approvalRules:
/// - {}
/// name: Amazon-Linux-2017.09
/// description: My patch repository for Amazon Linux 2017.09
/// operatingSystem: AMAZON_LINUX
/// sources:
/// - name: My-AL2017.09
/// products:
/// - AmazonLinux2017.09
/// configuration: |
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
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> - (String) ID of the patch baseline.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSM Patch Baselines using their baseline ID. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/patchBaseline:PatchBaseline example pb-12345678
/// ```
class PatchBaseline extends CustomResource {
  /// Set of rules used to include patches in the baseline. Up to 10 approval rules can be specified. See <span pulumi-lang-nodejs="`approvalRule`" pulumi-lang-dotnet="`ApprovalRule`" pulumi-lang-go="`approvalRule`" pulumi-lang-python="`approval_rule`" pulumi-lang-yaml="`approvalRule`" pulumi-lang-java="`approvalRule`">`approval_rule`</span> below.
  late final Output<List<PatchBaselineApprovalRule>?> approvalRules;

  /// List of explicitly approved patches for the baseline. Cannot be specified with <span pulumi-lang-nodejs="`approvalRule`" pulumi-lang-dotnet="`ApprovalRule`" pulumi-lang-go="`approvalRule`" pulumi-lang-python="`approval_rule`" pulumi-lang-yaml="`approvalRule`" pulumi-lang-java="`approvalRule`">`approval_rule`</span>.
  late final Output<List<String>?> approvedPatches;

  /// Compliance level for approved patches. This means that if an approved patch is reported as missing, this is the severity of the compliance violation. Valid values are `CRITICAL`, `HIGH`, `MEDIUM`, `LOW`, `INFORMATIONAL`, `UNSPECIFIED`. The default value is `UNSPECIFIED`.
  late final Output<String?> approvedPatchesComplianceLevel;

  /// Whether the list of approved patches includes non-security updates that should be applied to the instances. Applies to Linux instances only.
  late final Output<bool?> approvedPatchesEnableNonSecurity;

  /// ARN of the baseline.
  late final Output<String> arn;

  /// Indicates the compliance status of managed nodes for which security-related patches are available but were not approved. Supported for Windows Server managed nodes only. Valid values are `COMPLIANT`, `NON_COMPLIANT`.
  late final Output<String> availableSecurityUpdatesComplianceStatus;

  /// Description of the patch baseline.
  late final Output<String?> description;

  /// Set of global filters used to exclude patches from the baseline. Up to 4 global filters can be specified using Key/Value pairs. Valid Keys are `PRODUCT`, `CLASSIFICATION`, `MSRC_SEVERITY`, and `PATCH_ID`.
  late final Output<List<PatchBaselineGlobalFilter>?> globalFilters;

  /// JSON definition of the baseline.
  late final Output<String> json;

  /// Name of the patch baseline.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Operating system the patch baseline applies to. Valid values are `ALMA_LINUX`, `AMAZON_LINUX`, `AMAZON_LINUX_2`, `AMAZON_LINUX_2022`, `AMAZON_LINUX_2023`, `CENTOS`, `DEBIAN`, `MACOS`, `ORACLE_LINUX`, `RASPBIAN`, `REDHAT_ENTERPRISE_LINUX`, `ROCKY_LINUX`, `SUSE`, `UBUNTU`, and `WINDOWS`. The default value is `WINDOWS`.
  late final Output<String?> operatingSystem;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of rejected patches.
  late final Output<List<String>?> rejectedPatches;

  /// Action for Patch Manager to take on patches included in the <span pulumi-lang-nodejs="`rejectedPatches`" pulumi-lang-dotnet="`RejectedPatches`" pulumi-lang-go="`rejectedPatches`" pulumi-lang-python="`rejected_patches`" pulumi-lang-yaml="`rejectedPatches`" pulumi-lang-java="`rejectedPatches`">`rejected_patches`</span> list. Valid values are `ALLOW_AS_DEPENDENCY` and `BLOCK`.
  late final Output<String> rejectedPatchesAction;

  /// Configuration block with alternate sources for patches. Applies to Linux instances only. See <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span> below.
  late final Output<List<PatchBaselineSource>?> sources;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  PatchBaseline(
    String name, {
    PatchBaselineArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssm/patchBaseline:PatchBaseline',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.approvalRules =
        registerOutput<List<PatchBaselineApprovalRule>?>('approvalRules');
    this.approvedPatches = registerOutput<List<String>?>('approvedPatches');
    this.approvedPatchesComplianceLevel =
        registerOutput<String?>('approvedPatchesComplianceLevel');
    this.approvedPatchesEnableNonSecurity =
        registerOutput<bool?>('approvedPatchesEnableNonSecurity');
    this.arn = registerOutput<String>('arn');
    this.availableSecurityUpdatesComplianceStatus =
        registerOutput<String>('availableSecurityUpdatesComplianceStatus');
    this.description = registerOutput<String?>('description');
    this.globalFilters =
        registerOutput<List<PatchBaselineGlobalFilter>?>('globalFilters');
    this.json = registerOutput<String>('json');
    this.name = registerOutput<String>('name');
    this.operatingSystem = registerOutput<String?>('operatingSystem');
    this.region = registerOutput<String>('region');
    this.rejectedPatches = registerOutput<List<String>?>('rejectedPatches');
    this.rejectedPatchesAction =
        registerOutput<String>('rejectedPatchesAction');
    this.sources = registerOutput<List<PatchBaselineSource>?>('sources');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
