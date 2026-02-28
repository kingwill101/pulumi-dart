import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_args.dart';
import 'firewall_policy_encryption_configuration.dart';
import 'firewall_policy_firewall_policy.dart';

/// Provides an AWS Network Firewall Firewall Policy Resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const currentGetPartition = aws.getPartition({});
/// const currentGetCallerIdentity = aws.getCallerIdentity({});
/// const example = new aws.networkfirewall.FirewallPolicy("example", {
///     name: "example",
///     firewallPolicy: {
///         statelessDefaultActions: ["aws:pass"],
///         statelessFragmentDefaultActions: ["aws:drop"],
///         statelessRuleGroupReferences: [{
///             priority: 1,
///             resourceArn: exampleAwsNetworkfirewallRuleGroup.arn,
///         }],
///         tlsInspectionConfigurationArn: Promise.all([currentGetPartition, current, currentGetCallerIdentity]).then(([currentGetPartition, current, currentGetCallerIdentity]) => `arn:${currentGetPartition.partition}:network-firewall:${current.region}:${currentGetCallerIdentity.accountId}:tls-configuration/example`),
///     },
///     tags: {
///         Tag1: "Value1",
///         Tag2: "Value2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// current_get_partition = aws.get_partition()
/// current_get_caller_identity = aws.get_caller_identity()
/// example = aws.networkfirewall.FirewallPolicy("example",
///     name="example",
///     firewall_policy={
///         "stateless_default_actions": ["aws:pass"],
///         "stateless_fragment_default_actions": ["aws:drop"],
///         "stateless_rule_group_references": [{
///             "priority": 1,
///             "resource_arn": example_aws_networkfirewall_rule_group["arn"],
///         }],
///         "tls_inspection_configuration_arn": f"arn:{current_get_partition.partition}:network-firewall:{current.region}:{current_get_caller_identity.account_id}:tls-configuration/example",
///     },
///     tags={
///         "Tag1": "Value1",
///         "Tag2": "Value2",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetRegion.Invoke();
///
///     var currentGetPartition = Aws.GetPartition.Invoke();
///
///     var currentGetCallerIdentity = Aws.GetCallerIdentity.Invoke();
///
///     var example = new Aws.NetworkFirewall.FirewallPolicy("example", new()
///     {
///         Name = "example",
///         FirewallPolicyConfiguration = new Aws.NetworkFirewall.Inputs.FirewallPolicyFirewallPolicyArgs
///         {
///             StatelessDefaultActions = new[]
///             {
///                 "aws:pass",
///             },
///             StatelessFragmentDefaultActions = new[]
///             {
///                 "aws:drop",
///             },
///             StatelessRuleGroupReferences = new[]
///             {
///                 new Aws.NetworkFirewall.Inputs.FirewallPolicyFirewallPolicyStatelessRuleGroupReferenceArgs
///                 {
///                     Priority = 1,
///                     ResourceArn = exampleAwsNetworkfirewallRuleGroup.Arn,
///                 },
///             },
///             TlsInspectionConfigurationArn = Output.Tuple(currentGetPartition, current, currentGetCallerIdentity).Apply(values =>
///             {
///                 var currentGetPartition = values.Item1;
///                 var current = values.Item2;
///                 var currentGetCallerIdentity = values.Item3;
///                 return $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:network-firewall:{current.Apply(getRegionResult => getRegionResult.Region)}:{currentGetCallerIdentity.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:tls-configuration/example";
///             }),
///         },
///         Tags =
///         {
///             { "Tag1", "Value1" },
///             { "Tag2", "Value2" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetCallerIdentity, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkfirewall.NewFirewallPolicy(ctx, "example", &networkfirewall.FirewallPolicyArgs{
/// 			Name: pulumi.String("example"),
/// 			FirewallPolicy: &networkfirewall.FirewallPolicyFirewallPolicyArgs{
/// 				StatelessDefaultActions: pulumi.StringArray{
/// 					pulumi.String("aws:pass"),
/// 				},
/// 				StatelessFragmentDefaultActions: pulumi.StringArray{
/// 					pulumi.String("aws:drop"),
/// 				},
/// 				StatelessRuleGroupReferences: networkfirewall.FirewallPolicyFirewallPolicyStatelessRuleGroupReferenceArray{
/// 					&networkfirewall.FirewallPolicyFirewallPolicyStatelessRuleGroupReferenceArgs{
/// 						Priority:    pulumi.Int(1),
/// 						ResourceArn: pulumi.Any(exampleAwsNetworkfirewallRuleGroup.Arn),
/// 					},
/// 				},
/// 				TlsInspectionConfigurationArn: pulumi.Sprintf("arn:%v:network-firewall:%v:%v:tls-configuration/example", currentGetPartition.Partition, current.Region, currentGetCallerIdentity.AccountId),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Tag1": pulumi.String("Value1"),
/// 				"Tag2": pulumi.String("Value2"),
/// 			},
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.networkfirewall.FirewallPolicy;
/// import com.pulumi.aws.networkfirewall.FirewallPolicyArgs;
/// import com.pulumi.aws.networkfirewall.inputs.FirewallPolicyFirewallPolicyArgs;
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
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         final var currentGetCallerIdentity = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var example = new FirewallPolicy("example", FirewallPolicyArgs.builder()
///             .name("example")
///             .firewallPolicy(FirewallPolicyFirewallPolicyArgs.builder()
///                 .statelessDefaultActions("aws:pass")
///                 .statelessFragmentDefaultActions("aws:drop")
///                 .statelessRuleGroupReferences(FirewallPolicyFirewallPolicyStatelessRuleGroupReferenceArgs.builder()
///                     .priority(1)
///                     .resourceArn(exampleAwsNetworkfirewallRuleGroup.arn())
///                     .build())
///                 .tlsInspectionConfigurationArn(String.format("arn:%s:network-firewall:%s:%s:tls-configuration/example", currentGetPartition.partition(),current.region(),currentGetCallerIdentity.accountId()))
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Tag1", "Value1"),
///                 Map.entry("Tag2", "Value2")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkfirewall:FirewallPolicy
///     properties:
///       name: example
///       firewallPolicy:
///         statelessDefaultActions:
///           - aws:pass
///         statelessFragmentDefaultActions:
///           - aws:drop
///         statelessRuleGroupReferences:
///           - priority: 1
///             resourceArn: ${exampleAwsNetworkfirewallRuleGroup.arn}
///         tlsInspectionConfigurationArn: arn:${currentGetPartition.partition}:network-firewall:${current.region}:${currentGetCallerIdentity.accountId}:tls-configuration/example
///       tags:
///         Tag1: Value1
///         Tag2: Value2
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   currentGetPartition:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
///   currentGetCallerIdentity:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
///
///
/// ## Policy with a HOME_NET Override
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.FirewallPolicy("example", {
///     name: "example",
///     firewallPolicy: {
///         policyVariables: {
///             ruleVariables: [{
///                 key: "HOME_NET",
///                 ipSet: {
///                     definitions: [
///                         "10.0.0.0/16",
///                         "10.1.0.0/24",
///                     ],
///                 },
///             }],
///         },
///         statelessDefaultActions: ["aws:pass"],
///         statelessFragmentDefaultActions: ["aws:drop"],
///         statelessRuleGroupReferences: [{
///             priority: 1,
///             resourceArn: exampleAwsNetworkfirewallRuleGroup.arn,
///         }],
///     },
///     tags: {
///         Tag1: "Value1",
///         Tag2: "Value2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.FirewallPolicy("example",
///     name="example",
///     firewall_policy={
///         "policy_variables": {
///             "rule_variables": [{
///                 "key": "HOME_NET",
///                 "ip_set": {
///                     "definitions": [
///                         "10.0.0.0/16",
///                         "10.1.0.0/24",
///                     ],
///                 },
///             }],
///         },
///         "stateless_default_actions": ["aws:pass"],
///         "stateless_fragment_default_actions": ["aws:drop"],
///         "stateless_rule_group_references": [{
///             "priority": 1,
///             "resource_arn": example_aws_networkfirewall_rule_group["arn"],
///         }],
///     },
///     tags={
///         "Tag1": "Value1",
///         "Tag2": "Value2",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkFirewall.FirewallPolicy("example", new()
///     {
///         Name = "example",
///         FirewallPolicyConfiguration = new Aws.NetworkFirewall.Inputs.FirewallPolicyFirewallPolicyArgs
///         {
///             PolicyVariables = new Aws.NetworkFirewall.Inputs.FirewallPolicyFirewallPolicyPolicyVariablesArgs
///             {
///                 RuleVariables = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableArgs
///                     {
///                         Key = "HOME_NET",
///                         IpSet = new Aws.NetworkFirewall.Inputs.FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableIpSetArgs
///                         {
///                             Definitions = new[]
///                             {
///                                 "10.0.0.0/16",
///                                 "10.1.0.0/24",
///                             },
///                         },
///                     },
///                 },
///             },
///             StatelessDefaultActions = new[]
///             {
///                 "aws:pass",
///             },
///             StatelessFragmentDefaultActions = new[]
///             {
///                 "aws:drop",
///             },
///             StatelessRuleGroupReferences = new[]
///             {
///                 new Aws.NetworkFirewall.Inputs.FirewallPolicyFirewallPolicyStatelessRuleGroupReferenceArgs
///                 {
///                     Priority = 1,
///                     ResourceArn = exampleAwsNetworkfirewallRuleGroup.Arn,
///                 },
///             },
///         },
///         Tags =
///         {
///             { "Tag1", "Value1" },
///             { "Tag2", "Value2" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfirewall.NewFirewallPolicy(ctx, "example", &networkfirewall.FirewallPolicyArgs{
/// 			Name: pulumi.String("example"),
/// 			FirewallPolicy: &networkfirewall.FirewallPolicyFirewallPolicyArgs{
/// 				PolicyVariables: &networkfirewall.FirewallPolicyFirewallPolicyPolicyVariablesArgs{
/// 					RuleVariables: networkfirewall.FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableArray{
/// 						&networkfirewall.FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableArgs{
/// 							Key: pulumi.String("HOME_NET"),
/// 							IpSet: &networkfirewall.FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableIpSetArgs{
/// 								Definitions: pulumi.StringArray{
/// 									pulumi.String("10.0.0.0/16"),
/// 									pulumi.String("10.1.0.0/24"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				StatelessDefaultActions: pulumi.StringArray{
/// 					pulumi.String("aws:pass"),
/// 				},
/// 				StatelessFragmentDefaultActions: pulumi.StringArray{
/// 					pulumi.String("aws:drop"),
/// 				},
/// 				StatelessRuleGroupReferences: networkfirewall.FirewallPolicyFirewallPolicyStatelessRuleGroupReferenceArray{
/// 					&networkfirewall.FirewallPolicyFirewallPolicyStatelessRuleGroupReferenceArgs{
/// 						Priority:    pulumi.Int(1),
/// 						ResourceArn: pulumi.Any(exampleAwsNetworkfirewallRuleGroup.Arn),
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Tag1": pulumi.String("Value1"),
/// 				"Tag2": pulumi.String("Value2"),
/// 			},
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
/// import com.pulumi.aws.networkfirewall.FirewallPolicy;
/// import com.pulumi.aws.networkfirewall.FirewallPolicyArgs;
/// import com.pulumi.aws.networkfirewall.inputs.FirewallPolicyFirewallPolicyArgs;
/// import com.pulumi.aws.networkfirewall.inputs.FirewallPolicyFirewallPolicyPolicyVariablesArgs;
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
///         var example = new FirewallPolicy("example", FirewallPolicyArgs.builder()
///             .name("example")
///             .firewallPolicy(FirewallPolicyFirewallPolicyArgs.builder()
///                 .policyVariables(FirewallPolicyFirewallPolicyPolicyVariablesArgs.builder()
///                     .ruleVariables(FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableArgs.builder()
///                         .key("HOME_NET")
///                         .ipSet(FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableIpSetArgs.builder()
///                             .definitions(
///                                 "10.0.0.0/16",
///                                 "10.1.0.0/24")
///                             .build())
///                         .build())
///                     .build())
///                 .statelessDefaultActions("aws:pass")
///                 .statelessFragmentDefaultActions("aws:drop")
///                 .statelessRuleGroupReferences(FirewallPolicyFirewallPolicyStatelessRuleGroupReferenceArgs.builder()
///                     .priority(1)
///                     .resourceArn(exampleAwsNetworkfirewallRuleGroup.arn())
///                     .build())
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Tag1", "Value1"),
///                 Map.entry("Tag2", "Value2")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkfirewall:FirewallPolicy
///     properties:
///       name: example
///       firewallPolicy:
///         policyVariables:
///           ruleVariables:
///             - key: HOME_NET
///               ipSet:
///                 definitions:
///                   - 10.0.0.0/16
///                   - 10.1.0.0/24
///         statelessDefaultActions:
///           - aws:pass
///         statelessFragmentDefaultActions:
///           - aws:drop
///         statelessRuleGroupReferences:
///           - priority: 1
///             resourceArn: ${exampleAwsNetworkfirewallRuleGroup.arn}
///       tags:
///         Tag1: Value1
///         Tag2: Value2
/// ```
///
///
/// ## Policy with a Custom Action for Stateless Inspection
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.FirewallPolicy("example", {
///     name: "example",
///     firewallPolicy: {
///         statelessDefaultActions: [
///             "aws:pass",
///             "ExampleCustomAction",
///         ],
///         statelessFragmentDefaultActions: ["aws:drop"],
///         statelessCustomActions: [{
///             actionDefinition: {
///                 publishMetricAction: {
///                     dimensions: [{
///                         value: "1",
///                     }],
///                 },
///             },
///             actionName: "ExampleCustomAction",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.FirewallPolicy("example",
///     name="example",
///     firewall_policy={
///         "stateless_default_actions": [
///             "aws:pass",
///             "ExampleCustomAction",
///         ],
///         "stateless_fragment_default_actions": ["aws:drop"],
///         "stateless_custom_actions": [{
///             "action_definition": {
///                 "publish_metric_action": {
///                     "dimensions": [{
///                         "value": "1",
///                     }],
///                 },
///             },
///             "action_name": "ExampleCustomAction",
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkFirewall.FirewallPolicy("example", new()
///     {
///         Name = "example",
///         FirewallPolicyConfiguration = new Aws.NetworkFirewall.Inputs.FirewallPolicyFirewallPolicyArgs
///         {
///             StatelessDefaultActions = new[]
///             {
///                 "aws:pass",
///                 "ExampleCustomAction",
///             },
///             StatelessFragmentDefaultActions = new[]
///             {
///                 "aws:drop",
///             },
///             StatelessCustomActions = new[]
///             {
///                 new Aws.NetworkFirewall.Inputs.FirewallPolicyFirewallPolicyStatelessCustomActionArgs
///                 {
///                     ActionDefinition = new Aws.NetworkFirewall.Inputs.FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionArgs
///                     {
///                         PublishMetricAction = new Aws.NetworkFirewall.Inputs.FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionArgs
///                         {
///                             Dimensions = new[]
///                             {
///                                 new Aws.NetworkFirewall.Inputs.FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimensionArgs
///                                 {
///                                     Value = "1",
///                                 },
///                             },
///                         },
///                     },
///                     ActionName = "ExampleCustomAction",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfirewall.NewFirewallPolicy(ctx, "example", &networkfirewall.FirewallPolicyArgs{
/// 			Name: pulumi.String("example"),
/// 			FirewallPolicy: &networkfirewall.FirewallPolicyFirewallPolicyArgs{
/// 				StatelessDefaultActions: pulumi.StringArray{
/// 					pulumi.String("aws:pass"),
/// 					pulumi.String("ExampleCustomAction"),
/// 				},
/// 				StatelessFragmentDefaultActions: pulumi.StringArray{
/// 					pulumi.String("aws:drop"),
/// 				},
/// 				StatelessCustomActions: networkfirewall.FirewallPolicyFirewallPolicyStatelessCustomActionArray{
/// 					&networkfirewall.FirewallPolicyFirewallPolicyStatelessCustomActionArgs{
/// 						ActionDefinition: &networkfirewall.FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionArgs{
/// 							PublishMetricAction: &networkfirewall.FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionArgs{
/// 								Dimensions: networkfirewall.FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimensionArray{
/// 									&networkfirewall.FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimensionArgs{
/// 										Value: pulumi.String("1"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						ActionName: pulumi.String("ExampleCustomAction"),
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.aws.networkfirewall.FirewallPolicy;
/// import com.pulumi.aws.networkfirewall.FirewallPolicyArgs;
/// import com.pulumi.aws.networkfirewall.inputs.FirewallPolicyFirewallPolicyArgs;
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
///         var example = new FirewallPolicy("example", FirewallPolicyArgs.builder()
///             .name("example")
///             .firewallPolicy(FirewallPolicyFirewallPolicyArgs.builder()
///                 .statelessDefaultActions(
///                     "aws:pass",
///                     "ExampleCustomAction")
///                 .statelessFragmentDefaultActions("aws:drop")
///                 .statelessCustomActions(FirewallPolicyFirewallPolicyStatelessCustomActionArgs.builder()
///                     .actionDefinition(FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionArgs.builder()
///                         .publishMetricAction(FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionArgs.builder()
///                             .dimensions(FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimensionArgs.builder()
///                                 .value("1")
///                                 .build())
///                             .build())
///                         .build())
///                     .actionName("ExampleCustomAction")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkfirewall:FirewallPolicy
///     properties:
///       name: example
///       firewallPolicy:
///         statelessDefaultActions:
///           - aws:pass
///           - ExampleCustomAction
///         statelessFragmentDefaultActions:
///           - aws:drop
///         statelessCustomActions:
///           - actionDefinition:
///               publishMetricAction:
///                 dimensions:
///                   - value: '1'
///             actionName: ExampleCustomAction
/// ```
///
///
/// ## Policy with Active Threat Defense in Action Order
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const currentGetPartition = aws.getPartition({});
/// const example = new aws.networkfirewall.FirewallPolicy("example", {
///     name: "example",
///     firewallPolicy: {
///         statelessFragmentDefaultActions: ["aws:drop"],
///         statelessDefaultActions: ["aws:pass"],
///         statefulRuleGroupReferences: [{
///             deepThreatInspection: "true",
///             resourceArn: Promise.all([currentGetPartition, current]).then(([currentGetPartition, current]) => `arn:${currentGetPartition.partition}:network-firewall:${current.region}:aws-managed:stateful-rulegroup/AttackInfrastructureActionOrder`),
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// current_get_partition = aws.get_partition()
/// example = aws.networkfirewall.FirewallPolicy("example",
///     name="example",
///     firewall_policy={
///         "stateless_fragment_default_actions": ["aws:drop"],
///         "stateless_default_actions": ["aws:pass"],
///         "stateful_rule_group_references": [{
///             "deep_threat_inspection": "true",
///             "resource_arn": f"arn:{current_get_partition.partition}:network-firewall:{current.region}:aws-managed:stateful-rulegroup/AttackInfrastructureActionOrder",
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetRegion.Invoke();
///
///     var currentGetPartition = Aws.GetPartition.Invoke();
///
///     var example = new Aws.NetworkFirewall.FirewallPolicy("example", new()
///     {
///         Name = "example",
///         FirewallPolicyConfiguration = new Aws.NetworkFirewall.Inputs.FirewallPolicyFirewallPolicyArgs
///         {
///             StatelessFragmentDefaultActions = new[]
///             {
///                 "aws:drop",
///             },
///             StatelessDefaultActions = new[]
///             {
///                 "aws:pass",
///             },
///             StatefulRuleGroupReferences = new[]
///             {
///                 new Aws.NetworkFirewall.Inputs.FirewallPolicyFirewallPolicyStatefulRuleGroupReferenceArgs
///                 {
///                     DeepThreatInspection = "true",
///                     ResourceArn = Output.Tuple(currentGetPartition, current).Apply(values =>
///                     {
///                         var currentGetPartition = values.Item1;
///                         var current = values.Item2;
///                         return $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:network-firewall:{current.Apply(getRegionResult => getRegionResult.Region)}:aws-managed:stateful-rulegroup/AttackInfrastructureActionOrder";
///                     }),
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkfirewall.NewFirewallPolicy(ctx, "example", &networkfirewall.FirewallPolicyArgs{
/// 			Name: pulumi.String("example"),
/// 			FirewallPolicy: &networkfirewall.FirewallPolicyFirewallPolicyArgs{
/// 				StatelessFragmentDefaultActions: pulumi.StringArray{
/// 					pulumi.String("aws:drop"),
/// 				},
/// 				StatelessDefaultActions: pulumi.StringArray{
/// 					pulumi.String("aws:pass"),
/// 				},
/// 				StatefulRuleGroupReferences: networkfirewall.FirewallPolicyFirewallPolicyStatefulRuleGroupReferenceArray{
/// 					&networkfirewall.FirewallPolicyFirewallPolicyStatefulRuleGroupReferenceArgs{
/// 						DeepThreatInspection: pulumi.String("true"),
/// 						ResourceArn:          pulumi.Sprintf("arn:%v:network-firewall:%v:aws-managed:stateful-rulegroup/AttackInfrastructureActionOrder", currentGetPartition.Partition, current.Region),
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.networkfirewall.FirewallPolicy;
/// import com.pulumi.aws.networkfirewall.FirewallPolicyArgs;
/// import com.pulumi.aws.networkfirewall.inputs.FirewallPolicyFirewallPolicyArgs;
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
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         var example = new FirewallPolicy("example", FirewallPolicyArgs.builder()
///             .name("example")
///             .firewallPolicy(FirewallPolicyFirewallPolicyArgs.builder()
///                 .statelessFragmentDefaultActions("aws:drop")
///                 .statelessDefaultActions("aws:pass")
///                 .statefulRuleGroupReferences(FirewallPolicyFirewallPolicyStatefulRuleGroupReferenceArgs.builder()
///                     .deepThreatInspection("true")
///                     .resourceArn(String.format("arn:%s:network-firewall:%s:aws-managed:stateful-rulegroup/AttackInfrastructureActionOrder", currentGetPartition.partition(),current.region()))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkfirewall:FirewallPolicy
///     properties:
///       name: example
///       firewallPolicy:
///         statelessFragmentDefaultActions:
///           - aws:drop
///         statelessDefaultActions:
///           - aws:pass
///         statefulRuleGroupReferences:
///           - deepThreatInspection: true
///             resourceArn: arn:${currentGetPartition.partition}:network-firewall:${current.region}:aws-managed:stateful-rulegroup/AttackInfrastructureActionOrder
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   currentGetPartition:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
/// ```
///
///
/// ## Policy with Active Threat Defense in Strict Order
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const currentGetPartition = aws.getPartition({});
/// const example = new aws.networkfirewall.FirewallPolicy("example", {
///     name: "example",
///     firewallPolicy: {
///         statelessFragmentDefaultActions: ["aws:drop"],
///         statelessDefaultActions: ["aws:pass"],
///         statefulEngineOptions: {
///             ruleOrder: "STRICT_ORDER",
///         },
///         statefulRuleGroupReferences: [{
///             deepThreatInspection: "false",
///             priority: 1,
///             resourceArn: Promise.all([currentGetPartition, current]).then(([currentGetPartition, current]) => `arn:${currentGetPartition.partition}:network-firewall:${current.region}:aws-managed:stateful-rulegroup/AttackInfrastructureStrictOrder`),
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// current_get_partition = aws.get_partition()
/// example = aws.networkfirewall.FirewallPolicy("example",
///     name="example",
///     firewall_policy={
///         "stateless_fragment_default_actions": ["aws:drop"],
///         "stateless_default_actions": ["aws:pass"],
///         "stateful_engine_options": {
///             "rule_order": "STRICT_ORDER",
///         },
///         "stateful_rule_group_references": [{
///             "deep_threat_inspection": "false",
///             "priority": 1,
///             "resource_arn": f"arn:{current_get_partition.partition}:network-firewall:{current.region}:aws-managed:stateful-rulegroup/AttackInfrastructureStrictOrder",
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetRegion.Invoke();
///
///     var currentGetPartition = Aws.GetPartition.Invoke();
///
///     var example = new Aws.NetworkFirewall.FirewallPolicy("example", new()
///     {
///         Name = "example",
///         FirewallPolicyConfiguration = new Aws.NetworkFirewall.Inputs.FirewallPolicyFirewallPolicyArgs
///         {
///             StatelessFragmentDefaultActions = new[]
///             {
///                 "aws:drop",
///             },
///             StatelessDefaultActions = new[]
///             {
///                 "aws:pass",
///             },
///             StatefulEngineOptions = new Aws.NetworkFirewall.Inputs.FirewallPolicyFirewallPolicyStatefulEngineOptionsArgs
///             {
///                 RuleOrder = "STRICT_ORDER",
///             },
///             StatefulRuleGroupReferences = new[]
///             {
///                 new Aws.NetworkFirewall.Inputs.FirewallPolicyFirewallPolicyStatefulRuleGroupReferenceArgs
///                 {
///                     DeepThreatInspection = "false",
///                     Priority = 1,
///                     ResourceArn = Output.Tuple(currentGetPartition, current).Apply(values =>
///                     {
///                         var currentGetPartition = values.Item1;
///                         var current = values.Item2;
///                         return $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:network-firewall:{current.Apply(getRegionResult => getRegionResult.Region)}:aws-managed:stateful-rulegroup/AttackInfrastructureStrictOrder";
///                     }),
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkfirewall.NewFirewallPolicy(ctx, "example", &networkfirewall.FirewallPolicyArgs{
/// 			Name: pulumi.String("example"),
/// 			FirewallPolicy: &networkfirewall.FirewallPolicyFirewallPolicyArgs{
/// 				StatelessFragmentDefaultActions: pulumi.StringArray{
/// 					pulumi.String("aws:drop"),
/// 				},
/// 				StatelessDefaultActions: pulumi.StringArray{
/// 					pulumi.String("aws:pass"),
/// 				},
/// 				StatefulEngineOptions: &networkfirewall.FirewallPolicyFirewallPolicyStatefulEngineOptionsArgs{
/// 					RuleOrder: pulumi.String("STRICT_ORDER"),
/// 				},
/// 				StatefulRuleGroupReferences: networkfirewall.FirewallPolicyFirewallPolicyStatefulRuleGroupReferenceArray{
/// 					&networkfirewall.FirewallPolicyFirewallPolicyStatefulRuleGroupReferenceArgs{
/// 						DeepThreatInspection: pulumi.String("false"),
/// 						Priority:             pulumi.Int(1),
/// 						ResourceArn:          pulumi.Sprintf("arn:%v:network-firewall:%v:aws-managed:stateful-rulegroup/AttackInfrastructureStrictOrder", currentGetPartition.Partition, current.Region),
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.networkfirewall.FirewallPolicy;
/// import com.pulumi.aws.networkfirewall.FirewallPolicyArgs;
/// import com.pulumi.aws.networkfirewall.inputs.FirewallPolicyFirewallPolicyArgs;
/// import com.pulumi.aws.networkfirewall.inputs.FirewallPolicyFirewallPolicyStatefulEngineOptionsArgs;
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
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         var example = new FirewallPolicy("example", FirewallPolicyArgs.builder()
///             .name("example")
///             .firewallPolicy(FirewallPolicyFirewallPolicyArgs.builder()
///                 .statelessFragmentDefaultActions("aws:drop")
///                 .statelessDefaultActions("aws:pass")
///                 .statefulEngineOptions(FirewallPolicyFirewallPolicyStatefulEngineOptionsArgs.builder()
///                     .ruleOrder("STRICT_ORDER")
///                     .build())
///                 .statefulRuleGroupReferences(FirewallPolicyFirewallPolicyStatefulRuleGroupReferenceArgs.builder()
///                     .deepThreatInspection("false")
///                     .priority(1)
///                     .resourceArn(String.format("arn:%s:network-firewall:%s:aws-managed:stateful-rulegroup/AttackInfrastructureStrictOrder", currentGetPartition.partition(),current.region()))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkfirewall:FirewallPolicy
///     properties:
///       name: example
///       firewallPolicy:
///         statelessFragmentDefaultActions:
///           - aws:drop
///         statelessDefaultActions:
///           - aws:pass
///         statefulEngineOptions:
///           ruleOrder: STRICT_ORDER
///         statefulRuleGroupReferences:
///           - deepThreatInspection: false
///             priority: 1
///             resourceArn: arn:${currentGetPartition.partition}:network-firewall:${current.region}:aws-managed:stateful-rulegroup/AttackInfrastructureStrictOrder
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   currentGetPartition:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Firewall Policies using their `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:networkfirewall/firewallPolicy:FirewallPolicy example arn:aws:network-firewall:us-west-1:123456789012:firewall-policy/example
/// ```
class FirewallPolicy extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) that identifies the firewall policy.
  late final pulumi.Output<String> arn;

  /// A friendly description of the firewall policy.
  late final pulumi.Output<String?> description;

  /// KMS encryption configuration settings. See Encryption Configuration below for details.
  late final pulumi.Output<FirewallPolicyEncryptionConfiguration?>
      encryptionConfiguration;

  /// A configuration block describing the rule groups and policy actions to use in the firewall policy. See Firewall Policy below for details.
  late final pulumi.Output<FirewallPolicyFirewallPolicy> firewallPolicy;

  /// A friendly name of the firewall policy.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// A string token used when updating a firewall policy.
  late final pulumi.Output<String> updateToken;

  /// Creates a new [FirewallPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallPolicy]. {@macro pulumi_networkfirewall_firewall_policy_firewall_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallPolicy(
    String name, {
    FirewallPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/firewallPolicy:FirewallPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.encryptionConfiguration =
        registerOutput<FirewallPolicyEncryptionConfiguration?>(
            'encryptionConfiguration');
    this.firewallPolicy =
        registerOutput<FirewallPolicyFirewallPolicy>('firewallPolicy');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.updateToken = registerOutput<String>('updateToken');
  }
}
