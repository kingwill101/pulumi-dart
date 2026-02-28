import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_security_policy_rule_args.dart';
import 'organization_security_policy_rule_match.dart';

/// A rule for the OrganizationSecurityPolicy.
///
/// To get more information about OrganizationSecurityPolicyRule, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/organizationSecurityPolicies/addRule)
/// * How-to Guides
/// * [Creating firewall rules](https://cloud.google.com/vpc/docs/using-firewall-policies#create-rules)
///
/// ## Example Usage
///
/// ### Organization Security Policy Rule Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.OrganizationSecurityPolicy("policy", {
///     displayName: "tf-test",
///     parent: "organizations/123456789",
///     type: "FIREWALL",
/// });
/// const policyOrganizationSecurityPolicyRule = new gcp.compute.OrganizationSecurityPolicyRule("policy", {
///     policyId: policy.id,
///     action: "allow",
///     direction: "INGRESS",
///     enableLogging: true,
///     match: {
///         config: {
///             srcIpRanges: [
///                 "192.168.0.0/16",
///                 "10.0.0.0/8",
///             ],
///             layer4Configs: [
///                 {
///                     ipProtocol: "tcp",
///                     ports: ["22"],
///                 },
///                 {
///                     ipProtocol: "icmp",
///                 },
///             ],
///         },
///     },
///     priority: 100,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.OrganizationSecurityPolicy("policy",
///     display_name="tf-test",
///     parent="organizations/123456789",
///     type="FIREWALL")
/// policy_organization_security_policy_rule = gcp.compute.OrganizationSecurityPolicyRule("policy",
///     policy_id=policy.id,
///     action="allow",
///     direction="INGRESS",
///     enable_logging=True,
///     match={
///         "config": {
///             "src_ip_ranges": [
///                 "192.168.0.0/16",
///                 "10.0.0.0/8",
///             ],
///             "layer4_configs": [
///                 {
///                     "ip_protocol": "tcp",
///                     "ports": ["22"],
///                 },
///                 {
///                     "ip_protocol": "icmp",
///                 },
///             ],
///         },
///     },
///     priority=100)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new Gcp.Compute.OrganizationSecurityPolicy("policy", new()
///     {
///         DisplayName = "tf-test",
///         Parent = "organizations/123456789",
///         Type = "FIREWALL",
///     });
///
///     var policyOrganizationSecurityPolicyRule = new Gcp.Compute.OrganizationSecurityPolicyRule("policy", new()
///     {
///         PolicyId = policy.Id,
///         Action = "allow",
///         Direction = "INGRESS",
///         EnableLogging = true,
///         Match = new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleMatchArgs
///         {
///             Config = new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleMatchConfigArgs
///             {
///                 SrcIpRanges = new[]
///                 {
///                     "192.168.0.0/16",
///                     "10.0.0.0/8",
///                 },
///                 Layer4Configs = new[]
///                 {
///                     new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleMatchConfigLayer4ConfigArgs
///                     {
///                         IpProtocol = "tcp",
///                         Ports = new[]
///                         {
///                             "22",
///                         },
///                     },
///                     new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleMatchConfigLayer4ConfigArgs
///                     {
///                         IpProtocol = "icmp",
///                     },
///                 },
///             },
///         },
///         Priority = 100,
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
/// 		policy, err := compute.NewOrganizationSecurityPolicy(ctx, "policy", &compute.OrganizationSecurityPolicyArgs{
/// 			DisplayName: pulumi.String("tf-test"),
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			Type:        pulumi.String("FIREWALL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewOrganizationSecurityPolicyRule(ctx, "policy", &compute.OrganizationSecurityPolicyRuleArgs{
/// 			PolicyId:      policy.ID(),
/// 			Action:        pulumi.String("allow"),
/// 			Direction:     pulumi.String("INGRESS"),
/// 			EnableLogging: pulumi.Bool(true),
/// 			Match: &compute.OrganizationSecurityPolicyRuleMatchArgs{
/// 				Config: &compute.OrganizationSecurityPolicyRuleMatchConfigArgs{
/// 					SrcIpRanges: pulumi.StringArray{
/// 						pulumi.String("192.168.0.0/16"),
/// 						pulumi.String("10.0.0.0/8"),
/// 					},
/// 					Layer4Configs: compute.OrganizationSecurityPolicyRuleMatchConfigLayer4ConfigArray{
/// 						&compute.OrganizationSecurityPolicyRuleMatchConfigLayer4ConfigArgs{
/// 							IpProtocol: pulumi.String("tcp"),
/// 							Ports: pulumi.StringArray{
/// 								pulumi.String("22"),
/// 							},
/// 						},
/// 						&compute.OrganizationSecurityPolicyRuleMatchConfigLayer4ConfigArgs{
/// 							IpProtocol: pulumi.String("icmp"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Priority: pulumi.Int(100),
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
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicy;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyArgs;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyRule;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRuleMatchConfigArgs;
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
///         var policy = new OrganizationSecurityPolicy("policy", OrganizationSecurityPolicyArgs.builder()
///             .displayName("tf-test")
///             .parent("organizations/123456789")
///             .type("FIREWALL")
///             .build());
///
///         var policyOrganizationSecurityPolicyRule = new OrganizationSecurityPolicyRule("policyOrganizationSecurityPolicyRule", OrganizationSecurityPolicyRuleArgs.builder()
///             .policyId(policy.id())
///             .action("allow")
///             .direction("INGRESS")
///             .enableLogging(true)
///             .match(OrganizationSecurityPolicyRuleMatchArgs.builder()
///                 .config(OrganizationSecurityPolicyRuleMatchConfigArgs.builder()
///                     .srcIpRanges(
///                         "192.168.0.0/16",
///                         "10.0.0.0/8")
///                     .layer4Configs(
///                         OrganizationSecurityPolicyRuleMatchConfigLayer4ConfigArgs.builder()
///                             .ipProtocol("tcp")
///                             .ports("22")
///                             .build(),
///                         OrganizationSecurityPolicyRuleMatchConfigLayer4ConfigArgs.builder()
///                             .ipProtocol("icmp")
///                             .build())
///                     .build())
///                 .build())
///             .priority(100)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:OrganizationSecurityPolicy
///     properties:
///       displayName: tf-test
///       parent: organizations/123456789
///       type: FIREWALL
///   policyOrganizationSecurityPolicyRule:
///     type: gcp:compute:OrganizationSecurityPolicyRule
///     name: policy
///     properties:
///       policyId: ${policy.id}
///       action: allow
///       direction: INGRESS
///       enableLogging: true
///       match:
///         config:
///           srcIpRanges:
///             - 192.168.0.0/16
///             - 10.0.0.0/8
///           layer4Configs:
///             - ipProtocol: tcp
///               ports:
///                 - '22'
///             - ipProtocol: icmp
///       priority: 100
/// ```
///
///
/// ## Import
///
/// OrganizationSecurityPolicyRule can be imported using any of these accepted formats:
///
/// * `{{policy_id}}/priority/{{priority}}`
///
/// When using the `pulumi import` command, OrganizationSecurityPolicyRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/organizationSecurityPolicyRule:OrganizationSecurityPolicyRule default {{policy_id}}/priority/{{priority}}
/// ```
class OrganizationSecurityPolicyRule extends pulumi.CustomResource {
  /// The Action to perform when the client connection triggers the rule. Can currently be either
  /// "allow", "deny" or "goto_next".
  late final pulumi.Output<String> action;

  /// A description of the rule.
  late final pulumi.Output<String?> description;

  /// The direction in which this rule applies. If unspecified an INGRESS rule is created.
  /// Possible values are: `INGRESS`, `EGRESS`.
  late final pulumi.Output<String?> direction;

  /// Denotes whether to enable logging for a particular rule.
  /// If logging is enabled, logs will be exported to the
  /// configured export destination in Stackdriver.
  late final pulumi.Output<bool?> enableLogging;

  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  late final pulumi.Output<OrganizationSecurityPolicyRuleMatch> match;

  /// The ID of the OrganizationSecurityPolicy this rule applies to.
  late final pulumi.Output<String> policyId;

  /// If set to true, the specified action is not enforced.
  late final pulumi.Output<bool?> preview;

  /// An integer indicating the priority of a rule in the list. The priority must be a value
  /// between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the
  /// highest priority and 2147483647 is the lowest prority.
  late final pulumi.Output<int> priority;

  /// A list of network resource URLs to which this rule applies.
  /// This field allows you to control which network's VMs get
  /// this rule. If this field is left blank, all VMs
  /// within the organization will receive the rule.
  late final pulumi.Output<List<String>?> targetResources;

  /// A list of service accounts indicating the sets of
  /// instances that are applied with this rule.
  late final pulumi.Output<List<String>?> targetServiceAccounts;

  /// Creates a new [OrganizationSecurityPolicyRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationSecurityPolicyRule]. {@macro pulumi_compute_organization_security_policy_rule_organization_security_policy_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationSecurityPolicyRule(
    String name, {
    OrganizationSecurityPolicyRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/organizationSecurityPolicyRule:OrganizationSecurityPolicyRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.description = registerOutput<String?>('description');
    this.direction = registerOutput<String?>('direction');
    this.enableLogging = registerOutput<bool?>('enableLogging');
    this.match = registerOutput<OrganizationSecurityPolicyRuleMatch>('match');
    this.policyId = registerOutput<String>('policyId');
    this.preview = registerOutput<bool?>('preview');
    this.priority = registerOutput<int>('priority');
    this.targetResources = registerOutput<List<String>?>('targetResources');
    this.targetServiceAccounts =
        registerOutput<List<String>?>('targetServiceAccounts');
  }
}
