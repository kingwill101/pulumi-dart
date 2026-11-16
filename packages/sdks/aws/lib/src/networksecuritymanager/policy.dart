import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';
import 'policy_configuration.dart';
import 'policy_state.dart';
import 'policy_template_or_rule.dart';

/// Manages an AWS Network Security Manager Policy. A policy combines templates and rules with enforcement settings for a firewall type, such as AWS WAF or AWS Shield Advanced.
///
/// Changes to a policy are published unless `isPublished` is `false`.
///
/// ## Example Usage
///
/// ### AWS WAF Policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networksecuritymanager.Policy("example", {
///     configuration: {
///         wafConfig: {
///             conflictResolution: "MERGE_WHERE_APPLICABLE",
///             existingCustomerWebAclResolution: "RETROFIT",
///         },
///         remediationEnabled: true,
///         resourcesCleanUp: true,
///     },
///     templateOrRules: [{
///         ruleIdentifier: exampleAwsNetworksecuritymanagerRule.arn,
///     }],
///     name: "baseline-waf",
///     firewallType: "WAF",
///     priority: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networksecuritymanager.Policy("example",
///     configuration={
///         "waf_config": {
///             "conflict_resolution": "MERGE_WHERE_APPLICABLE",
///             "existing_customer_web_acl_resolution": "RETROFIT",
///         },
///         "remediation_enabled": True,
///         "resources_clean_up": True,
///     },
///     template_or_rules=[{
///         "rule_identifier": example_aws_networksecuritymanager_rule["arn"],
///     }],
///     name="baseline-waf",
///     firewall_type="WAF",
///     priority=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkSecurityManager.Policy("example", new()
///     {
///         Configuration = new Aws.NetworkSecurityManager.Inputs.PolicyConfigurationArgs
///         {
///             WafConfig = new Aws.NetworkSecurityManager.Inputs.PolicyConfigurationWafConfigArgs
///             {
///                 ConflictResolution = "MERGE_WHERE_APPLICABLE",
///                 ExistingCustomerWebAclResolution = "RETROFIT",
///             },
///             RemediationEnabled = true,
///             ResourcesCleanUp = true,
///         },
///         TemplateOrRules = new[]
///         {
///             new Aws.NetworkSecurityManager.Inputs.PolicyTemplateOrRuleArgs
///             {
///                 RuleIdentifier = exampleAwsNetworksecuritymanagerRule.Arn,
///             },
///         },
///         Name = "baseline-waf",
///         FirewallType = "WAF",
///         Priority = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networksecuritymanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecuritymanager.NewPolicy(ctx, "example", &networksecuritymanager.PolicyArgs{
/// 			Configuration: &networksecuritymanager.PolicyConfigurationArgs{
/// 				WafConfig: &networksecuritymanager.PolicyConfigurationWafConfigArgs{
/// 					ConflictResolution:               pulumi.String("MERGE_WHERE_APPLICABLE"),
/// 					ExistingCustomerWebAclResolution: pulumi.String("RETROFIT"),
/// 				},
/// 				RemediationEnabled: pulumi.Bool(true),
/// 				ResourcesCleanUp:   pulumi.Bool(true),
/// 			},
/// 			TemplateOrRules: networksecuritymanager.PolicyTemplateOrRuleArray{
/// 				&networksecuritymanager.PolicyTemplateOrRuleArgs{
/// 					RuleIdentifier: pulumi.Any(exampleAwsNetworksecuritymanagerRule.Arn),
/// 				},
/// 			},
/// 			Name:         pulumi.String("baseline-waf"),
/// 			FirewallType: pulumi.String("WAF"),
/// 			Priority:     pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_networksecuritymanager_policy" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   configuration {
///     waf_config {
///       conflict_resolution                  = "MERGE_WHERE_APPLICABLE"
///       existing_customer_web_acl_resolution = "RETROFIT"
///     }
///     remediation_enabled = true
///     resources_clean_up  = true
///   }
///   template_or_rule {
///     rule_identifier = exampleAwsNetworksecuritymanagerRule.arn
///   }
///   name          = "baseline-waf"
///   firewall_type = "WAF"
///   priority      = 1
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networksecuritymanager.Policy;
/// import com.pulumi.aws.networksecuritymanager.PolicyArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.PolicyConfigurationArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.PolicyConfigurationWafConfigArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.PolicyTemplateOrRuleArgs;
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
///         var example = new Policy("example", PolicyArgs.builder()
///             .configuration(PolicyConfigurationArgs.builder()
///                 .wafConfig(PolicyConfigurationWafConfigArgs.builder()
///                     .conflictResolution("MERGE_WHERE_APPLICABLE")
///                     .existingCustomerWebAclResolution("RETROFIT")
///                     .build())
///                 .remediationEnabled(true)
///                 .resourcesCleanUp(true)
///                 .build())
///             .templateOrRules(PolicyTemplateOrRuleArgs.builder()
///                 .ruleIdentifier(exampleAwsNetworksecuritymanagerRule.get("arn"))
///                 .build())
///             .name("baseline-waf")
///             .firewallType("WAF")
///             .priority(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networksecuritymanager:Policy
///     properties:
///       configuration:
///         wafConfig:
///           conflictResolution: MERGE_WHERE_APPLICABLE
///           existingCustomerWebAclResolution: RETROFIT
///         remediationEnabled: true
///         resourcesCleanUp: true
///       templateOrRules:
///         - ruleIdentifier: ${exampleAwsNetworksecuritymanagerRule.arn}
///       name: baseline-waf
///       firewallType: WAF
///       priority: 1
/// ```
///
///
/// ### AWS Shield Advanced Policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networksecuritymanager.Policy("example", {
///     configuration: {
///         remediationEnabled: true,
///         resourcesCleanUp: true,
///     },
///     name: "baseline-shield",
///     firewallType: "SHIELD_ADVANCED",
///     priority: 2,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networksecuritymanager.Policy("example",
///     configuration={
///         "remediation_enabled": True,
///         "resources_clean_up": True,
///     },
///     name="baseline-shield",
///     firewall_type="SHIELD_ADVANCED",
///     priority=2)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkSecurityManager.Policy("example", new()
///     {
///         Configuration = new Aws.NetworkSecurityManager.Inputs.PolicyConfigurationArgs
///         {
///             RemediationEnabled = true,
///             ResourcesCleanUp = true,
///         },
///         Name = "baseline-shield",
///         FirewallType = "SHIELD_ADVANCED",
///         Priority = 2,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networksecuritymanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecuritymanager.NewPolicy(ctx, "example", &networksecuritymanager.PolicyArgs{
/// 			Configuration: &networksecuritymanager.PolicyConfigurationArgs{
/// 				RemediationEnabled: pulumi.Bool(true),
/// 				ResourcesCleanUp:   pulumi.Bool(true),
/// 			},
/// 			Name:         pulumi.String("baseline-shield"),
/// 			FirewallType: pulumi.String("SHIELD_ADVANCED"),
/// 			Priority:     pulumi.Int(2),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_networksecuritymanager_policy" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   configuration {
///     remediation_enabled = true
///     resources_clean_up  = true
///   }
///   name          = "baseline-shield"
///   firewall_type = "SHIELD_ADVANCED"
///   priority      = 2
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networksecuritymanager.Policy;
/// import com.pulumi.aws.networksecuritymanager.PolicyArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.PolicyConfigurationArgs;
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
///         var example = new Policy("example", PolicyArgs.builder()
///             .configuration(PolicyConfigurationArgs.builder()
///                 .remediationEnabled(true)
///                 .resourcesCleanUp(true)
///                 .build())
///             .name("baseline-shield")
///             .firewallType("SHIELD_ADVANCED")
///             .priority(2)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networksecuritymanager:Policy
///     properties:
///       configuration:
///         remediationEnabled: true
///         resourcesCleanUp: true
///       name: baseline-shield
///       firewallType: SHIELD_ADVANCED
///       priority: 2
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) ARN of the policy.
///
///
/// Using `pulumi import`, import Network Security Manager Policy using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:networksecuritymanager/policy:Policy example arn:aws:network-security-manager:us-east-1:123456789012:policy:abcd1234efgh
/// ```
class Policy extends pulumi.CustomResource {
  /// ARN of the policy.
  late final pulumi.Output<String> arn;
  /// Settings that control the policy's behavior. See `configuration` below.
  late final pulumi.Output<PolicyConfiguration> configuration;
  /// Description of the policy.
  late final pulumi.Output<String?> description;
  /// Firewall type of the policy. Valid values: `WAF`, `SHIELD_ADVANCED`. Changing this value forces a new resource.
  late final pulumi.Output<String> firewallType;
  /// Whether to publish the policy. When `true`, the policy is saved in the published (`ACTIVE`) state. When `false`, it is saved as a draft (`DRAFT`); for a published policy, the draft is saved on top of the published version. Defaults to `true`.
  late final pulumi.Output<bool> isPublished;
  /// Name of the policy. Changing this value forces a new resource.
  late final pulumi.Output<String> name;
  /// Priority of the policy. A lower number indicates a higher priority. Minimum value of `1`. Must be unique across policies in the AWS account.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Ordered list of templates and rules to associate with the policy. For `WAF` policies, specify 1 to 100 entries, of which at most 2 can be templates. Must be omitted for `SHIELD_ADVANCED` policies. See `templateOrRule` below.
  ///
  /// &gt; **Note:** A rule or template referenced by a published policy cannot be deleted. Configure `createBeforeDestroy` on referenced rule and template resources so that a replacement is associated with the policy before the old resource is deleted.
  late final pulumi.Output<List<PolicyTemplateOrRule>?> templateOrRules;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_networksecuritymanager_policy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networksecuritymanager/policy:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.55.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<PolicyConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    firewallType = registerOutput<String>('firewallType');
    isPublished = registerOutput<bool>('isPublished');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    templateOrRules = registerOutput<List<PolicyTemplateOrRule>?>('templateOrRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PolicyTemplateOrRule>(guardedValue, (value) => PolicyTemplateOrRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [Policy] resource's state with the given [name] and [id].
  static Policy get(
    String name,
    pulumi.Input<String> id, {
    PolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Policy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Policy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networksecuritymanager/policy:Policy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<PolicyConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    firewallType = registerOutput<String>('firewallType');
    isPublished = registerOutput<bool>('isPublished');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    templateOrRules = registerOutput<List<PolicyTemplateOrRule>?>('templateOrRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PolicyTemplateOrRule>(guardedValue, (value) => PolicyTemplateOrRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [Policy] resource.
  Policy.reference(String urn)
    : super(
        'aws:networksecuritymanager/policy:Policy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<PolicyConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    firewallType = registerOutput<String>('firewallType');
    isPublished = registerOutput<bool>('isPublished');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    templateOrRules = registerOutput<List<PolicyTemplateOrRule>?>('templateOrRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PolicyTemplateOrRule>(guardedValue, (value) => PolicyTemplateOrRule.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
