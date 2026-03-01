import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_args.dart';
import 'security_policy_rule_header_action.dart';
import 'security_policy_rule_match.dart';
import 'security_policy_rule_preconfigured_waf_config.dart';
import 'security_policy_rule_rate_limit_options.dart';
import 'security_policy_rule_redirect_options.dart';

/// A rule for the SecurityPolicy.
///
///
/// To get more information about SecurityPolicyRule, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/securityPolicies/addRule)
/// * How-to Guides
/// * [Creating global security policy rules](https://cloud.google.com/armor/docs/configure-security-policies)
///
/// ## Example Usage
///
/// ### Security Policy Rule Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.SecurityPolicy("default", {
///     name: "policyruletest",
///     description: "basic global security policy",
///     type: "CLOUD_ARMOR",
/// });
/// const policyRule = new gcp.compute.SecurityPolicyRule("policy_rule", {
///     securityPolicy: _default.name,
///     description: "new rule",
///     priority: 100,
///     match: {
///         versionedExpr: "SRC_IPS_V1",
///         config: {
///             srcIpRanges: ["10.10.0.0/16"],
///         },
///     },
///     action: "allow",
///     preview: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.SecurityPolicy("default",
///     name="policyruletest",
///     description="basic global security policy",
///     type="CLOUD_ARMOR")
/// policy_rule = gcp.compute.SecurityPolicyRule("policy_rule",
///     security_policy=default.name,
///     description="new rule",
///     priority=100,
///     match={
///         "versioned_expr": "SRC_IPS_V1",
///         "config": {
///             "src_ip_ranges": ["10.10.0.0/16"],
///         },
///     },
///     action="allow",
///     preview=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.SecurityPolicy("default", new()
///     {
///         Name = "policyruletest",
///         Description = "basic global security policy",
///         Type = "CLOUD_ARMOR",
///     });
///
///     var policyRule = new Gcp.Compute.SecurityPolicyRule("policy_rule", new()
///     {
///         SecurityPolicy = @default.Name,
///         Description = "new rule",
///         Priority = 100,
///         Match = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchArgs
///         {
///             VersionedExpr = "SRC_IPS_V1",
///             Config = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchConfigArgs
///             {
///                 SrcIpRanges = new[]
///                 {
///                     "10.10.0.0/16",
///                 },
///             },
///         },
///         Action = "allow",
///         Preview = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewSecurityPolicy(ctx, "default", &compute.SecurityPolicyArgs{
/// 			Name:        pulumi.String("policyruletest"),
/// 			Description: pulumi.String("basic global security policy"),
/// 			Type:        pulumi.String("CLOUD_ARMOR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSecurityPolicyRule(ctx, "policy_rule", &compute.SecurityPolicyRuleArgs{
/// 			SecurityPolicy: _default.Name,
/// 			Description:    pulumi.String("new rule"),
/// 			Priority:       pulumi.Int(100),
/// 			Match: &compute.SecurityPolicyRuleMatchArgs{
/// 				VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 				Config: &compute.SecurityPolicyRuleMatchConfigArgs{
/// 					SrcIpRanges: pulumi.StringArray{
/// 						pulumi.String("10.10.0.0/16"),
/// 					},
/// 				},
/// 			},
/// 			Action:  pulumi.String("allow"),
/// 			Preview: pulumi.Bool(true),
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
/// import com.pulumi.gcp.compute.SecurityPolicy;
/// import com.pulumi.gcp.compute.SecurityPolicyArgs;
/// import com.pulumi.gcp.compute.SecurityPolicyRule;
/// import com.pulumi.gcp.compute.SecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleMatchConfigArgs;
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
///         var default_ = new SecurityPolicy("default", SecurityPolicyArgs.builder()
///             .name("policyruletest")
///             .description("basic global security policy")
///             .type("CLOUD_ARMOR")
///             .build());
///
///         var policyRule = new SecurityPolicyRule("policyRule", SecurityPolicyRuleArgs.builder()
///             .securityPolicy(default_.name())
///             .description("new rule")
///             .priority(100)
///             .match(SecurityPolicyRuleMatchArgs.builder()
///                 .versionedExpr("SRC_IPS_V1")
///                 .config(SecurityPolicyRuleMatchConfigArgs.builder()
///                     .srcIpRanges("10.10.0.0/16")
///                     .build())
///                 .build())
///             .action("allow")
///             .preview(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:SecurityPolicy
///     properties:
///       name: policyruletest
///       description: basic global security policy
///       type: CLOUD_ARMOR
///   policyRule:
///     type: gcp:compute:SecurityPolicyRule
///     name: policy_rule
///     properties:
///       securityPolicy: ${default.name}
///       description: new rule
///       priority: 100
///       match:
///         versionedExpr: SRC_IPS_V1
///         config:
///           srcIpRanges:
///             - 10.10.0.0/16
///       action: allow
///       preview: true
/// ```
///
/// ### Security Policy Rule Default Rule
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.SecurityPolicy("default", {
///     name: "policyruletest",
///     description: "basic global security policy",
///     type: "CLOUD_ARMOR",
/// });
/// const defaultRule = new gcp.compute.SecurityPolicyRule("default_rule", {
///     securityPolicy: _default.name,
///     description: "default rule",
///     action: "deny",
///     priority: 2147483647,
///     match: {
///         versionedExpr: "SRC_IPS_V1",
///         config: {
///             srcIpRanges: ["*"],
///         },
///     },
/// });
/// const policyRule = new gcp.compute.SecurityPolicyRule("policy_rule", {
///     securityPolicy: _default.name,
///     description: "new rule",
///     priority: 100,
///     match: {
///         versionedExpr: "SRC_IPS_V1",
///         config: {
///             srcIpRanges: ["10.10.0.0/16"],
///         },
///     },
///     action: "allow",
///     preview: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.SecurityPolicy("default",
///     name="policyruletest",
///     description="basic global security policy",
///     type="CLOUD_ARMOR")
/// default_rule = gcp.compute.SecurityPolicyRule("default_rule",
///     security_policy=default.name,
///     description="default rule",
///     action="deny",
///     priority=2147483647,
///     match={
///         "versioned_expr": "SRC_IPS_V1",
///         "config": {
///             "src_ip_ranges": ["*"],
///         },
///     })
/// policy_rule = gcp.compute.SecurityPolicyRule("policy_rule",
///     security_policy=default.name,
///     description="new rule",
///     priority=100,
///     match={
///         "versioned_expr": "SRC_IPS_V1",
///         "config": {
///             "src_ip_ranges": ["10.10.0.0/16"],
///         },
///     },
///     action="allow",
///     preview=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.SecurityPolicy("default", new()
///     {
///         Name = "policyruletest",
///         Description = "basic global security policy",
///         Type = "CLOUD_ARMOR",
///     });
///
///     var defaultRule = new Gcp.Compute.SecurityPolicyRule("default_rule", new()
///     {
///         SecurityPolicy = @default.Name,
///         Description = "default rule",
///         Action = "deny",
///         Priority = 2147483647,
///         Match = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchArgs
///         {
///             VersionedExpr = "SRC_IPS_V1",
///             Config = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchConfigArgs
///             {
///                 SrcIpRanges = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var policyRule = new Gcp.Compute.SecurityPolicyRule("policy_rule", new()
///     {
///         SecurityPolicy = @default.Name,
///         Description = "new rule",
///         Priority = 100,
///         Match = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchArgs
///         {
///             VersionedExpr = "SRC_IPS_V1",
///             Config = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchConfigArgs
///             {
///                 SrcIpRanges = new[]
///                 {
///                     "10.10.0.0/16",
///                 },
///             },
///         },
///         Action = "allow",
///         Preview = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewSecurityPolicy(ctx, "default", &compute.SecurityPolicyArgs{
/// 			Name:        pulumi.String("policyruletest"),
/// 			Description: pulumi.String("basic global security policy"),
/// 			Type:        pulumi.String("CLOUD_ARMOR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSecurityPolicyRule(ctx, "default_rule", &compute.SecurityPolicyRuleArgs{
/// 			SecurityPolicy: _default.Name,
/// 			Description:    pulumi.String("default rule"),
/// 			Action:         pulumi.String("deny"),
/// 			Priority:       pulumi.Int(2147483647),
/// 			Match: &compute.SecurityPolicyRuleMatchArgs{
/// 				VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 				Config: &compute.SecurityPolicyRuleMatchConfigArgs{
/// 					SrcIpRanges: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSecurityPolicyRule(ctx, "policy_rule", &compute.SecurityPolicyRuleArgs{
/// 			SecurityPolicy: _default.Name,
/// 			Description:    pulumi.String("new rule"),
/// 			Priority:       pulumi.Int(100),
/// 			Match: &compute.SecurityPolicyRuleMatchArgs{
/// 				VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 				Config: &compute.SecurityPolicyRuleMatchConfigArgs{
/// 					SrcIpRanges: pulumi.StringArray{
/// 						pulumi.String("10.10.0.0/16"),
/// 					},
/// 				},
/// 			},
/// 			Action:  pulumi.String("allow"),
/// 			Preview: pulumi.Bool(true),
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
/// import com.pulumi.gcp.compute.SecurityPolicy;
/// import com.pulumi.gcp.compute.SecurityPolicyArgs;
/// import com.pulumi.gcp.compute.SecurityPolicyRule;
/// import com.pulumi.gcp.compute.SecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleMatchConfigArgs;
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
///         var default_ = new SecurityPolicy("default", SecurityPolicyArgs.builder()
///             .name("policyruletest")
///             .description("basic global security policy")
///             .type("CLOUD_ARMOR")
///             .build());
///
///         var defaultRule = new SecurityPolicyRule("defaultRule", SecurityPolicyRuleArgs.builder()
///             .securityPolicy(default_.name())
///             .description("default rule")
///             .action("deny")
///             .priority(2147483647)
///             .match(SecurityPolicyRuleMatchArgs.builder()
///                 .versionedExpr("SRC_IPS_V1")
///                 .config(SecurityPolicyRuleMatchConfigArgs.builder()
///                     .srcIpRanges("*")
///                     .build())
///                 .build())
///             .build());
///
///         var policyRule = new SecurityPolicyRule("policyRule", SecurityPolicyRuleArgs.builder()
///             .securityPolicy(default_.name())
///             .description("new rule")
///             .priority(100)
///             .match(SecurityPolicyRuleMatchArgs.builder()
///                 .versionedExpr("SRC_IPS_V1")
///                 .config(SecurityPolicyRuleMatchConfigArgs.builder()
///                     .srcIpRanges("10.10.0.0/16")
///                     .build())
///                 .build())
///             .action("allow")
///             .preview(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:SecurityPolicy
///     properties:
///       name: policyruletest
///       description: basic global security policy
///       type: CLOUD_ARMOR
///   defaultRule:
///     type: gcp:compute:SecurityPolicyRule
///     name: default_rule
///     properties:
///       securityPolicy: ${default.name}
///       description: default rule
///       action: deny
///       priority: '2147483647'
///       match:
///         versionedExpr: SRC_IPS_V1
///         config:
///           srcIpRanges:
///             - '*'
///   policyRule:
///     type: gcp:compute:SecurityPolicyRule
///     name: policy_rule
///     properties:
///       securityPolicy: ${default.name}
///       description: new rule
///       priority: 100
///       match:
///         versionedExpr: SRC_IPS_V1
///         config:
///           srcIpRanges:
///             - 10.10.0.0/16
///       action: allow
///       preview: true
/// ```
///
/// ### Security Policy Rule Multiple Rules
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.SecurityPolicy("default", {
///     name: "policywithmultiplerules",
///     description: "basic global security policy",
///     type: "CLOUD_ARMOR",
/// });
/// const policyRuleOne = new gcp.compute.SecurityPolicyRule("policy_rule_one", {
///     securityPolicy: _default.name,
///     description: "new rule one",
///     priority: 100,
///     match: {
///         versionedExpr: "SRC_IPS_V1",
///         config: {
///             srcIpRanges: ["10.10.0.0/16"],
///         },
///     },
///     action: "allow",
///     preview: true,
/// });
/// const policyRuleTwo = new gcp.compute.SecurityPolicyRule("policy_rule_two", {
///     securityPolicy: _default.name,
///     description: "new rule two",
///     priority: 101,
///     match: {
///         versionedExpr: "SRC_IPS_V1",
///         config: {
///             srcIpRanges: [
///                 "192.168.0.0/16",
///                 "10.0.0.0/8",
///             ],
///         },
///     },
///     action: "allow",
///     preview: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.SecurityPolicy("default",
///     name="policywithmultiplerules",
///     description="basic global security policy",
///     type="CLOUD_ARMOR")
/// policy_rule_one = gcp.compute.SecurityPolicyRule("policy_rule_one",
///     security_policy=default.name,
///     description="new rule one",
///     priority=100,
///     match={
///         "versioned_expr": "SRC_IPS_V1",
///         "config": {
///             "src_ip_ranges": ["10.10.0.0/16"],
///         },
///     },
///     action="allow",
///     preview=True)
/// policy_rule_two = gcp.compute.SecurityPolicyRule("policy_rule_two",
///     security_policy=default.name,
///     description="new rule two",
///     priority=101,
///     match={
///         "versioned_expr": "SRC_IPS_V1",
///         "config": {
///             "src_ip_ranges": [
///                 "192.168.0.0/16",
///                 "10.0.0.0/8",
///             ],
///         },
///     },
///     action="allow",
///     preview=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.SecurityPolicy("default", new()
///     {
///         Name = "policywithmultiplerules",
///         Description = "basic global security policy",
///         Type = "CLOUD_ARMOR",
///     });
///
///     var policyRuleOne = new Gcp.Compute.SecurityPolicyRule("policy_rule_one", new()
///     {
///         SecurityPolicy = @default.Name,
///         Description = "new rule one",
///         Priority = 100,
///         Match = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchArgs
///         {
///             VersionedExpr = "SRC_IPS_V1",
///             Config = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchConfigArgs
///             {
///                 SrcIpRanges = new[]
///                 {
///                     "10.10.0.0/16",
///                 },
///             },
///         },
///         Action = "allow",
///         Preview = true,
///     });
///
///     var policyRuleTwo = new Gcp.Compute.SecurityPolicyRule("policy_rule_two", new()
///     {
///         SecurityPolicy = @default.Name,
///         Description = "new rule two",
///         Priority = 101,
///         Match = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchArgs
///         {
///             VersionedExpr = "SRC_IPS_V1",
///             Config = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchConfigArgs
///             {
///                 SrcIpRanges = new[]
///                 {
///                     "192.168.0.0/16",
///                     "10.0.0.0/8",
///                 },
///             },
///         },
///         Action = "allow",
///         Preview = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewSecurityPolicy(ctx, "default", &compute.SecurityPolicyArgs{
/// 			Name:        pulumi.String("policywithmultiplerules"),
/// 			Description: pulumi.String("basic global security policy"),
/// 			Type:        pulumi.String("CLOUD_ARMOR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSecurityPolicyRule(ctx, "policy_rule_one", &compute.SecurityPolicyRuleArgs{
/// 			SecurityPolicy: _default.Name,
/// 			Description:    pulumi.String("new rule one"),
/// 			Priority:       pulumi.Int(100),
/// 			Match: &compute.SecurityPolicyRuleMatchArgs{
/// 				VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 				Config: &compute.SecurityPolicyRuleMatchConfigArgs{
/// 					SrcIpRanges: pulumi.StringArray{
/// 						pulumi.String("10.10.0.0/16"),
/// 					},
/// 				},
/// 			},
/// 			Action:  pulumi.String("allow"),
/// 			Preview: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSecurityPolicyRule(ctx, "policy_rule_two", &compute.SecurityPolicyRuleArgs{
/// 			SecurityPolicy: _default.Name,
/// 			Description:    pulumi.String("new rule two"),
/// 			Priority:       pulumi.Int(101),
/// 			Match: &compute.SecurityPolicyRuleMatchArgs{
/// 				VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 				Config: &compute.SecurityPolicyRuleMatchConfigArgs{
/// 					SrcIpRanges: pulumi.StringArray{
/// 						pulumi.String("192.168.0.0/16"),
/// 						pulumi.String("10.0.0.0/8"),
/// 					},
/// 				},
/// 			},
/// 			Action:  pulumi.String("allow"),
/// 			Preview: pulumi.Bool(true),
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
/// import com.pulumi.gcp.compute.SecurityPolicy;
/// import com.pulumi.gcp.compute.SecurityPolicyArgs;
/// import com.pulumi.gcp.compute.SecurityPolicyRule;
/// import com.pulumi.gcp.compute.SecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleMatchConfigArgs;
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
///         var default_ = new SecurityPolicy("default", SecurityPolicyArgs.builder()
///             .name("policywithmultiplerules")
///             .description("basic global security policy")
///             .type("CLOUD_ARMOR")
///             .build());
///
///         var policyRuleOne = new SecurityPolicyRule("policyRuleOne", SecurityPolicyRuleArgs.builder()
///             .securityPolicy(default_.name())
///             .description("new rule one")
///             .priority(100)
///             .match(SecurityPolicyRuleMatchArgs.builder()
///                 .versionedExpr("SRC_IPS_V1")
///                 .config(SecurityPolicyRuleMatchConfigArgs.builder()
///                     .srcIpRanges("10.10.0.0/16")
///                     .build())
///                 .build())
///             .action("allow")
///             .preview(true)
///             .build());
///
///         var policyRuleTwo = new SecurityPolicyRule("policyRuleTwo", SecurityPolicyRuleArgs.builder()
///             .securityPolicy(default_.name())
///             .description("new rule two")
///             .priority(101)
///             .match(SecurityPolicyRuleMatchArgs.builder()
///                 .versionedExpr("SRC_IPS_V1")
///                 .config(SecurityPolicyRuleMatchConfigArgs.builder()
///                     .srcIpRanges(
///                         "192.168.0.0/16",
///                         "10.0.0.0/8")
///                     .build())
///                 .build())
///             .action("allow")
///             .preview(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:SecurityPolicy
///     properties:
///       name: policywithmultiplerules
///       description: basic global security policy
///       type: CLOUD_ARMOR
///   policyRuleOne:
///     type: gcp:compute:SecurityPolicyRule
///     name: policy_rule_one
///     properties:
///       securityPolicy: ${default.name}
///       description: new rule one
///       priority: 100
///       match:
///         versionedExpr: SRC_IPS_V1
///         config:
///           srcIpRanges:
///             - 10.10.0.0/16
///       action: allow
///       preview: true
///   policyRuleTwo:
///     type: gcp:compute:SecurityPolicyRule
///     name: policy_rule_two
///     properties:
///       securityPolicy: ${default.name}
///       description: new rule two
///       priority: 101
///       match:
///         versionedExpr: SRC_IPS_V1
///         config:
///           srcIpRanges:
///             - 192.168.0.0/16
///             - 10.0.0.0/8
///       action: allow
///       preview: true
/// ```
///
///
/// ## Import
///
/// SecurityPolicyRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/securityPolicies/{{security_policy}}/priority/{{priority}}`
///
/// * `{{project}}/{{security_policy}}/{{priority}}`
///
/// * `{{security_policy}}/{{priority}}`
///
/// When using the `pulumi import` command, SecurityPolicyRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/securityPolicyRule:SecurityPolicyRule default projects/{{project}}/global/securityPolicies/{{security_policy}}/priority/{{priority}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/securityPolicyRule:SecurityPolicyRule default {{project}}/{{security_policy}}/{{priority}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/securityPolicyRule:SecurityPolicyRule default {{security_policy}}/{{priority}}
/// ```
class SecurityPolicyRuleCompute extends pulumi.CustomResource {
  /// The Action to perform when the rule is matched. The following are the valid actions:
  /// * allow: allow access to target.
  /// * deny(STATUS): deny access to target, returns the HTTP response code specified. Valid values for STATUS are 403, 404, and 502.
  /// * rate_based_ban: limit client traffic to the configured threshold and ban the client if the traffic exceeds the threshold. Configure parameters for this action in RateLimitOptions. Requires rateLimitOptions to be set.
  /// * redirect: redirect to a different target. This can either be an internal reCAPTCHA redirect, or an external URL-based redirect via a 302 response. Parameters for this action can be configured via redirectOptions. This action is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// * throttle: limit client traffic to the configured threshold. Configure parameters for this action in rateLimitOptions. Requires rateLimitOptions to be set for this.
  late final pulumi.Output<String> action;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String?> description;

  /// Optional, additional actions that are performed on headers. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// Structure is documented below.
  late final pulumi.Output<SecurityPolicyRuleHeaderAction?> headerAction;

  /// A match condition that incoming traffic is evaluated against.
  /// If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  late final pulumi.Output<SecurityPolicyRuleMatch?> match;

  /// Preconfigured WAF configuration to be applied for the rule.
  /// If the rule does not evaluate preconfigured WAF rules, i.e., if evaluatePreconfiguredWaf() is not used, this field will have no effect.
  /// Structure is documented below.
  late final pulumi.Output<SecurityPolicyRulePreconfiguredWafConfig?>
  preconfiguredWafConfig;

  /// If set to true, the specified action is not enforced.
  late final pulumi.Output<bool?> preview;

  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  late final pulumi.Output<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Must be specified if the action is "rate_based_ban" or "throttle". Cannot be specified for any other actions.
  /// Structure is documented below.
  late final pulumi.Output<SecurityPolicyRuleRateLimitOptions?>
  rateLimitOptions;

  /// Parameters defining the redirect action. Cannot be specified for any other actions. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// Structure is documented below.
  late final pulumi.Output<SecurityPolicyRuleRedirectOptions?> redirectOptions;

  /// The name of the security policy this rule belongs to.
  late final pulumi.Output<String> securityPolicy;

  /// Creates a new [SecurityPolicyRuleCompute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityPolicyRuleCompute]. {@macro pulumi_compute_security_policy_rule_security_policy_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityPolicyRuleCompute(
    String name, {
    SecurityPolicyRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/securityPolicyRule:SecurityPolicyRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.action = registerOutput<String>('action');
    this.description = registerOutput<String?>('description');
    this.headerAction = registerOutput<SecurityPolicyRuleHeaderAction?>(
      'headerAction',
    );
    this.match = registerOutput<SecurityPolicyRuleMatch?>('match');
    this.preconfiguredWafConfig =
        registerOutput<SecurityPolicyRulePreconfiguredWafConfig?>(
          'preconfiguredWafConfig',
        );
    this.preview = registerOutput<bool?>('preview');
    this.priority = registerOutput<int>('priority');
    this.project = registerOutput<String>('project');
    this.rateLimitOptions = registerOutput<SecurityPolicyRuleRateLimitOptions?>(
      'rateLimitOptions',
    );
    this.redirectOptions = registerOutput<SecurityPolicyRuleRedirectOptions?>(
      'redirectOptions',
    );
    this.securityPolicy = registerOutput<String>('securityPolicy');
  }
}
