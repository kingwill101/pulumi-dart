import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_args.dart';
import 'resource_policy_state.dart';

/// Provides an AWS Network Firewall Resource Policy Resource for a rule group or firewall policy.
///
/// ## Example Usage
///
/// ### For a Firewall Policy resource
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.ResourcePolicy("example", {
///     resourceArn: exampleAwsNetworkfirewallFirewallPolicy.arn,
///     policy: JSON.stringify({
///         Statement: [{
///             Action: [
///                 "network-firewall:ListFirewallPolicies",
///                 "network-firewall:CreateFirewall",
///                 "network-firewall:UpdateFirewall",
///                 "network-firewall:AssociateFirewallPolicy",
///             ],
///             Effect: "Allow",
///             Resource: exampleAwsNetworkfirewallFirewallPolicy.arn,
///             Principal: {
///                 AWS: "arn:aws:iam::123456789012:root",
///             },
///         }],
///         Version: "2012-10-17",
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.ResourcePolicy("example",
///     resource_arn=example_aws_networkfirewall_firewall_policy["arn"],
///     policy=json.dumps({
///         "Statement": [{
///             "Action": [
///                 "network-firewall:ListFirewallPolicies",
///                 "network-firewall:CreateFirewall",
///                 "network-firewall:UpdateFirewall",
///                 "network-firewall:AssociateFirewallPolicy",
///             ],
///             "Effect": "Allow",
///             "Resource": example_aws_networkfirewall_firewall_policy["arn"],
///             "Principal": {
///                 "AWS": "arn:aws:iam::123456789012:root",
///             },
///         }],
///         "Version": "2012-10-17",
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkFirewall.ResourcePolicy("example", new()
///     {
///         ResourceArn = exampleAwsNetworkfirewallFirewallPolicy.Arn,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = new[]
///                     {
///                         "network-firewall:ListFirewallPolicies",
///                         "network-firewall:CreateFirewall",
///                         "network-firewall:UpdateFirewall",
///                         "network-firewall:AssociateFirewallPolicy",
///                     },
///                     ["Effect"] = "Allow",
///                     ["Resource"] = exampleAwsNetworkfirewallFirewallPolicy.Arn,
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["AWS"] = "arn:aws:iam::123456789012:root",
///                     },
///                 },
///             },
///             ["Version"] = "2012-10-17",
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": []string{
/// 						"network-firewall:ListFirewallPolicies",
/// 						"network-firewall:CreateFirewall",
/// 						"network-firewall:UpdateFirewall",
/// 						"network-firewall:AssociateFirewallPolicy",
/// 					},
/// 					"Effect":   "Allow",
/// 					"Resource": exampleAwsNetworkfirewallFirewallPolicy.Arn,
/// 					"Principal": map[string]string{
/// 						"AWS": "arn:aws:iam::123456789012:root",
/// 					},
/// 				},
/// 			},
/// 			"Version": "2012-10-17",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = networkfirewall.NewResourcePolicy(ctx, "example", &networkfirewall.ResourcePolicyArgs{
/// 			ResourceArn: pulumi.Any(exampleAwsNetworkfirewallFirewallPolicy.Arn),
/// 			Policy:      pulumi.String(json0),
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
/// resource "aws_networkfirewall_resourcepolicy" "example" {
///   resource_arn = exampleAwsNetworkfirewallFirewallPolicy.arn
///   policy = jsonencode({
///     "Statement" = [{
///       "Action"   = ["network-firewall:ListFirewallPolicies", "network-firewall:CreateFirewall", "network-firewall:UpdateFirewall", "network-firewall:AssociateFirewallPolicy"]
///       "Effect"   = "Allow"
///       "Resource" = exampleAwsNetworkfirewallFirewallPolicy.arn
///       "Principal" = {
///         "AWS" = "arn:aws:iam::123456789012:root"
///       }
///     }]
///     "Version" = "2012-10-17"
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkfirewall.ResourcePolicy;
/// import com.pulumi.aws.networkfirewall.ResourcePolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new ResourcePolicy("example", ResourcePolicyArgs.builder()
///             .resourceArn(exampleAwsNetworkfirewallFirewallPolicy.arn())
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", jsonArray(
///                             "network-firewall:ListFirewallPolicies",
///                             "network-firewall:CreateFirewall",
///                             "network-firewall:UpdateFirewall",
///                             "network-firewall:AssociateFirewallPolicy"
///                         )),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Resource", exampleAwsNetworkfirewallFirewallPolicy.arn()),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("AWS", "arn:aws:iam::123456789012:root")
///                         ))
///                     ))),
///                     jsonProperty("Version", "2012-10-17")
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkfirewall:ResourcePolicy
///     properties:
///       resourceArn: ${exampleAwsNetworkfirewallFirewallPolicy.arn}
///       policy:
///         fn::toJSON:
///           Statement:
///             - Action:
///                 - network-firewall:ListFirewallPolicies
///                 - network-firewall:CreateFirewall
///                 - network-firewall:UpdateFirewall
///                 - network-firewall:AssociateFirewallPolicy
///               Effect: Allow
///               Resource: ${exampleAwsNetworkfirewallFirewallPolicy.arn}
///               Principal:
///                 AWS: arn:aws:iam::123456789012:root
///           Version: 2012-10-17
/// ```
///
///
/// ### For a Rule Group resource
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.ResourcePolicy("example", {
///     resourceArn: exampleAwsNetworkfirewallRuleGroup.arn,
///     policy: JSON.stringify({
///         Statement: [{
///             Action: [
///                 "network-firewall:ListRuleGroups",
///                 "network-firewall:CreateFirewallPolicy",
///                 "network-firewall:UpdateFirewallPolicy",
///             ],
///             Effect: "Allow",
///             Resource: exampleAwsNetworkfirewallRuleGroup.arn,
///             Principal: {
///                 AWS: "arn:aws:iam::123456789012:root",
///             },
///         }],
///         Version: "2012-10-17",
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.ResourcePolicy("example",
///     resource_arn=example_aws_networkfirewall_rule_group["arn"],
///     policy=json.dumps({
///         "Statement": [{
///             "Action": [
///                 "network-firewall:ListRuleGroups",
///                 "network-firewall:CreateFirewallPolicy",
///                 "network-firewall:UpdateFirewallPolicy",
///             ],
///             "Effect": "Allow",
///             "Resource": example_aws_networkfirewall_rule_group["arn"],
///             "Principal": {
///                 "AWS": "arn:aws:iam::123456789012:root",
///             },
///         }],
///         "Version": "2012-10-17",
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkFirewall.ResourcePolicy("example", new()
///     {
///         ResourceArn = exampleAwsNetworkfirewallRuleGroup.Arn,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = new[]
///                     {
///                         "network-firewall:ListRuleGroups",
///                         "network-firewall:CreateFirewallPolicy",
///                         "network-firewall:UpdateFirewallPolicy",
///                     },
///                     ["Effect"] = "Allow",
///                     ["Resource"] = exampleAwsNetworkfirewallRuleGroup.Arn,
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["AWS"] = "arn:aws:iam::123456789012:root",
///                     },
///                 },
///             },
///             ["Version"] = "2012-10-17",
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": []string{
/// 						"network-firewall:ListRuleGroups",
/// 						"network-firewall:CreateFirewallPolicy",
/// 						"network-firewall:UpdateFirewallPolicy",
/// 					},
/// 					"Effect":   "Allow",
/// 					"Resource": exampleAwsNetworkfirewallRuleGroup.Arn,
/// 					"Principal": map[string]string{
/// 						"AWS": "arn:aws:iam::123456789012:root",
/// 					},
/// 				},
/// 			},
/// 			"Version": "2012-10-17",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = networkfirewall.NewResourcePolicy(ctx, "example", &networkfirewall.ResourcePolicyArgs{
/// 			ResourceArn: pulumi.Any(exampleAwsNetworkfirewallRuleGroup.Arn),
/// 			Policy:      pulumi.String(json0),
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
/// resource "aws_networkfirewall_resourcepolicy" "example" {
///   resource_arn = exampleAwsNetworkfirewallRuleGroup.arn
///   policy = jsonencode({
///     "Statement" = [{
///       "Action"   = ["network-firewall:ListRuleGroups", "network-firewall:CreateFirewallPolicy", "network-firewall:UpdateFirewallPolicy"]
///       "Effect"   = "Allow"
///       "Resource" = exampleAwsNetworkfirewallRuleGroup.arn
///       "Principal" = {
///         "AWS" = "arn:aws:iam::123456789012:root"
///       }
///     }]
///     "Version" = "2012-10-17"
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkfirewall.ResourcePolicy;
/// import com.pulumi.aws.networkfirewall.ResourcePolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new ResourcePolicy("example", ResourcePolicyArgs.builder()
///             .resourceArn(exampleAwsNetworkfirewallRuleGroup.arn())
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", jsonArray(
///                             "network-firewall:ListRuleGroups",
///                             "network-firewall:CreateFirewallPolicy",
///                             "network-firewall:UpdateFirewallPolicy"
///                         )),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Resource", exampleAwsNetworkfirewallRuleGroup.arn()),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("AWS", "arn:aws:iam::123456789012:root")
///                         ))
///                     ))),
///                     jsonProperty("Version", "2012-10-17")
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkfirewall:ResourcePolicy
///     properties:
///       resourceArn: ${exampleAwsNetworkfirewallRuleGroup.arn}
///       policy:
///         fn::toJSON:
///           Statement:
///             - Action:
///                 - network-firewall:ListRuleGroups
///                 - network-firewall:CreateFirewallPolicy
///                 - network-firewall:UpdateFirewallPolicy
///               Effect: Allow
///               Resource: ${exampleAwsNetworkfirewallRuleGroup.arn}
///               Principal:
///                 AWS: arn:aws:iam::123456789012:root
///           Version: 2012-10-17
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Firewall Resource Policies using the `resource arn`. For example:
/// ```sh
/// $ pulumi import aws:networkfirewall/resourcePolicy:ResourcePolicy example arn:aws:network-firewall:us-west-1:123456789012:stateful-rulegroup/example
/// ```
class ResourcePolicy extends pulumi.CustomResource {
  /// JSON formatted policy document that controls access to the Network Firewall resource. The policy must be provided **without whitespaces**.  We recommend using jsonencode for formatting as seen in the examples above. For more details, including available policy statement Actions, see the [Policy](https://docs.aws.amazon.com/network-firewall/latest/APIReference/API_PutResourcePolicy.html#API_PutResourcePolicy_RequestSyntax) parameter in the AWS API documentation.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the rule group or firewall policy.
  late final pulumi.Output<String> resourceArn;

  /// Creates a new [ResourcePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourcePolicy]. {@macro pulumi_networkfirewall_resource_policy_resource_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourcePolicy(
    String name, {
    ResourcePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }

  /// Gets an existing [ResourcePolicy] resource's state with the given [name] and [id].
  static ResourcePolicy get(
    String name,
    pulumi.Input<String> id, {
    ResourcePolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResourcePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResourcePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }

  /// Creates a typed reference to an existing [ResourcePolicy] resource.
  ResourcePolicy.reference(String urn)
    : super(
        'aws:networkfirewall/resourcePolicy:ResourcePolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }
}
