import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_args.dart';
import 'rule_group_encryption_configuration.dart';
import 'rule_group_rule_group.dart';
import 'rule_group_state.dart';

/// Provides an AWS Network Firewall Rule Group Resource
///
/// ## Example Usage
///
/// ### Stateful Inspection for denying access to a domain
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.RuleGroup("example", {
///     ruleGroup: {
///         rulesSource: {
///             rulesSourceList: {
///                 generatedRulesType: "DENYLIST",
///                 targetTypes: ["HTTP_HOST"],
///                 targets: ["test.example.com"],
///             },
///         },
///     },
///     capacity: 100,
///     name: "example",
///     type: "STATEFUL",
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
/// example = aws.networkfirewall.RuleGroup("example",
///     rule_group={
///         "rules_source": {
///             "rules_source_list": {
///                 "generated_rules_type": "DENYLIST",
///                 "target_types": ["HTTP_HOST"],
///                 "targets": ["test.example.com"],
///             },
///         },
///     },
///     capacity=100,
///     name="example",
///     type="STATEFUL",
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
///     var example = new Aws.NetworkFirewall.RuleGroup("example", new()
///     {
///         RuleGroupConfiguration = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupArgs
///         {
///             RulesSource = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceArgs
///             {
///                 RulesSourceList = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceRulesSourceListArgs
///                 {
///                     GeneratedRulesType = "DENYLIST",
///                     TargetTypes = new[]
///                     {
///                         "HTTP_HOST",
///                     },
///                     Targets = new[]
///                     {
///                         "test.example.com",
///                     },
///                 },
///             },
///         },
///         Capacity = 100,
///         Name = "example",
///         Type = "STATEFUL",
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
/// 		_, err := networkfirewall.NewRuleGroup(ctx, "example", &networkfirewall.RuleGroupArgs{
/// 			RuleGroup: &networkfirewall.RuleGroupRuleGroupArgs{
/// 				RulesSource: &networkfirewall.RuleGroupRuleGroupRulesSourceArgs{
/// 					RulesSourceList: &networkfirewall.RuleGroupRuleGroupRulesSourceRulesSourceListArgs{
/// 						GeneratedRulesType: pulumi.String("DENYLIST"),
/// 						TargetTypes: pulumi.StringArray{
/// 							pulumi.String("HTTP_HOST"),
/// 						},
/// 						Targets: pulumi.StringArray{
/// 							pulumi.String("test.example.com"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Capacity: pulumi.Int(100),
/// 			Name:     pulumi.String("example"),
/// 			Type:     pulumi.String("STATEFUL"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_networkfirewall_rulegroup" "example" {
///   rule_group = {
///     rules_source = {
///       rules_source_list = {
///         generated_rules_type = "DENYLIST"
///         target_types         = ["HTTP_HOST"]
///         targets              = ["test.example.com"]
///       }
///     }
///   }
///   capacity = 100
///   name     = "example"
///   type     = "STATEFUL"
///   tags = {
///     "Tag1" = "Value1"
///     "Tag2" = "Value2"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkfirewall.RuleGroup;
/// import com.pulumi.aws.networkfirewall.RuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceRulesSourceListArgs;
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
///         var example = new RuleGroup("example", RuleGroupArgs.builder()
///             .ruleGroup(RuleGroupRuleGroupArgs.builder()
///                 .rulesSource(RuleGroupRuleGroupRulesSourceArgs.builder()
///                     .rulesSourceList(RuleGroupRuleGroupRulesSourceRulesSourceListArgs.builder()
///                         .generatedRulesType("DENYLIST")
///                         .targetTypes("HTTP_HOST")
///                         .targets("test.example.com")
///                         .build())
///                     .build())
///                 .build())
///             .capacity(100)
///             .name("example")
///             .type("STATEFUL")
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
///     type: aws:networkfirewall:RuleGroup
///     properties:
///       ruleGroup:
///         rulesSource:
///           rulesSourceList:
///             generatedRulesType: DENYLIST
///             targetTypes:
///               - HTTP_HOST
///             targets:
///               - test.example.com
///       capacity: 100
///       name: example
///       type: STATEFUL
///       tags:
///         Tag1: Value1
///         Tag2: Value2
/// ```
///
///
/// ### Stateful Inspection for permitting packets from a source IP address
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ips = [
///     "1.1.1.1/32",
///     "1.0.0.1/32",
/// ];
/// const example = new aws.networkfirewall.RuleGroup("example", {
///     ruleGroup: {
///         rulesSource: {
///             statefulRules: ips.map(entry => ({
///                 header: {
///                     destination: "ANY",
///                     destinationPort: "ANY",
///                     protocol: "HTTP",
///                     direction: "ANY",
///                     sourcePort: "ANY",
///                     source: entry,
///                 },
///                 ruleOptions: [{
///                     keyword: "sid",
///                     settings: ["1"],
///                 }],
///                 action: "PASS",
///             })),
///         },
///     },
///     capacity: 50,
///     description: "Permits http traffic from source",
///     name: "example",
///     type: "STATEFUL",
///     tags: {
///         Name: "permit HTTP from source",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ips = [
///     "1.1.1.1/32",
///     "1.0.0.1/32",
/// ]
/// example = aws.networkfirewall.RuleGroup("example",
///     rule_group={
///         "rules_source": {
///             "stateful_rules": [{
///                 "header": {
///                     "destination": "ANY",
///                     "destination_port": "ANY",
///                     "protocol": "HTTP",
///                     "direction": "ANY",
///                     "source_port": "ANY",
///                     "source": entry,
///                 },
///                 "rule_options": [{
///                     "keyword": "sid",
///                     "settings": ["1"],
///                 }],
///                 "action": "PASS",
///             } for entry in ips],
///         },
///     },
///     capacity=50,
///     description="Permits http traffic from source",
///     name="example",
///     type="STATEFUL",
///     tags={
///         "Name": "permit HTTP from source",
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
///     var ips = new[]
///     {
///         "1.1.1.1/32",
///         "1.0.0.1/32",
///     };
///
///     var example = new Aws.NetworkFirewall.RuleGroup("example", new()
///     {
///         RuleGroupConfiguration = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupArgs
///         {
///             RulesSource = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceArgs
///             {
///                 StatefulRules = ips.Select(entry =>
///                 {
///                     return new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatefulRuleArgs
///                     {
///                         Header = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatefulRuleHeaderArgs
///                         {
///                             Destination = "ANY",
///                             DestinationPort = "ANY",
///                             Protocol = "HTTP",
///                             Direction = "ANY",
///                             SourcePort = "ANY",
///                             Source = entry,
///                         },
///                         RuleOptions = new[]
///                         {
///                             new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatefulRuleRuleOptionArgs
///                             {
///                                 Keyword = "sid",
///                                 Settings = new[]
///                                 {
///                                     "1",
///                                 },
///                             },
///                         },
///                         Action = "PASS",
///                     };
///                 }).ToList(),
///             },
///         },
///         Capacity = 50,
///         Description = "Permits http traffic from source",
///         Name = "example",
///         Type = "STATEFUL",
///         Tags =
///         {
///             { "Name", "permit HTTP from source" },
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
/// 		ips := []string{
/// 			"1.1.1.1/32",
/// 			"1.0.0.1/32",
/// 		}
/// 		var forResult0 []map[string]interface{}
/// 		for _, entry := range ips {
/// 			forResult0 = append(forResult0, map[string]interface{}{
/// 				"header": map[string]string{
/// 					"destination":     "ANY",
/// 					"destinationPort": "ANY",
/// 					"protocol":        "HTTP",
/// 					"direction":       "ANY",
/// 					"sourcePort":      "ANY",
/// 					"source":          entry,
/// 				},
/// 				"ruleOptions": []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"keyword": "sid",
/// 						"settings": []string{
/// 							"1",
/// 						},
/// 					},
/// 				},
/// 				"action": "PASS",
/// 			})
/// 		}
/// 		_, err := networkfirewall.NewRuleGroup(ctx, "example", &networkfirewall.RuleGroupArgs{
/// 			RuleGroup: &networkfirewall.RuleGroupRuleGroupArgs{
/// 				RulesSource: &networkfirewall.RuleGroupRuleGroupRulesSourceArgs{
/// 					StatefulRules: toPulumiMapArray(forResult0),
/// 				},
/// 			},
/// 			Capacity:    pulumi.Int(50),
/// 			Description: pulumi.String("Permits http traffic from source"),
/// 			Name:        pulumi.String("example"),
/// 			Type:        pulumi.String("STATEFUL"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("permit HTTP from source"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// func toPulumiMapArray(arr []Map) pulumi.MapArray {
/// 	var pulumiArr pulumi.MapArray
/// 	for _, v := range arr {
/// 		pulumiArr = append(pulumiArr, pulumi.Map(v))
/// 	}
/// 	return pulumiArr
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
/// resource "aws_networkfirewall_rulegroup" "example" {
///   rule_group = {
///     rules_source = {
///       stateful_rules = [for entry in local.ips : {
///         "header" = {
///           "destination"     = "ANY"
///           "destinationPort" = "ANY"
///           "protocol"        = "HTTP"
///           "direction"       = "ANY"
///           "sourcePort"      = "ANY"
///           "source"          = entry
///         }
///         "ruleOptions" = [{
///           "keyword"  = "sid"
///           "settings" = ["1"]
///         }]
///         "action" = "PASS"
///       } ]
///     }
///   }
///   capacity    = 50
///   description = "Permits http traffic from source"
///   name        = "example"
///   type        = "STATEFUL"
///   tags = {
///     "Name" = "permit HTTP from source"
///   }
/// }
/// locals {
///   ips = ["1.1.1.1/32", "1.0.0.1/32"]
/// }
/// ```
///
///
/// ### Stateful Inspection for blocking packets from going to an intended destination
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.RuleGroup("example", {
///     ruleGroup: {
///         rulesSource: {
///             statefulRules: [{
///                 header: {
///                     destination: "124.1.1.24/32",
///                     destinationPort: "53",
///                     direction: "ANY",
///                     protocol: "TCP",
///                     source: "1.2.3.4/32",
///                     sourcePort: "53",
///                 },
///                 ruleOptions: [{
///                     keyword: "sid",
///                     settings: ["1"],
///                 }],
///                 action: "DROP",
///             }],
///         },
///     },
///     capacity: 100,
///     name: "example",
///     type: "STATEFUL",
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
/// example = aws.networkfirewall.RuleGroup("example",
///     rule_group={
///         "rules_source": {
///             "stateful_rules": [{
///                 "header": {
///                     "destination": "124.1.1.24/32",
///                     "destination_port": "53",
///                     "direction": "ANY",
///                     "protocol": "TCP",
///                     "source": "1.2.3.4/32",
///                     "source_port": "53",
///                 },
///                 "rule_options": [{
///                     "keyword": "sid",
///                     "settings": ["1"],
///                 }],
///                 "action": "DROP",
///             }],
///         },
///     },
///     capacity=100,
///     name="example",
///     type="STATEFUL",
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
///     var example = new Aws.NetworkFirewall.RuleGroup("example", new()
///     {
///         RuleGroupConfiguration = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupArgs
///         {
///             RulesSource = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceArgs
///             {
///                 StatefulRules = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatefulRuleArgs
///                     {
///                         Header = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatefulRuleHeaderArgs
///                         {
///                             Destination = "124.1.1.24/32",
///                             DestinationPort = "53",
///                             Direction = "ANY",
///                             Protocol = "TCP",
///                             Source = "1.2.3.4/32",
///                             SourcePort = "53",
///                         },
///                         RuleOptions = new[]
///                         {
///                             new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatefulRuleRuleOptionArgs
///                             {
///                                 Keyword = "sid",
///                                 Settings = new[]
///                                 {
///                                     "1",
///                                 },
///                             },
///                         },
///                         Action = "DROP",
///                     },
///                 },
///             },
///         },
///         Capacity = 100,
///         Name = "example",
///         Type = "STATEFUL",
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
/// 		_, err := networkfirewall.NewRuleGroup(ctx, "example", &networkfirewall.RuleGroupArgs{
/// 			RuleGroup: &networkfirewall.RuleGroupRuleGroupArgs{
/// 				RulesSource: &networkfirewall.RuleGroupRuleGroupRulesSourceArgs{
/// 					StatefulRules: networkfirewall.RuleGroupRuleGroupRulesSourceStatefulRuleArray{
/// 						&networkfirewall.RuleGroupRuleGroupRulesSourceStatefulRuleArgs{
/// 							Header: &networkfirewall.RuleGroupRuleGroupRulesSourceStatefulRuleHeaderArgs{
/// 								Destination:     pulumi.String("124.1.1.24/32"),
/// 								DestinationPort: pulumi.String("53"),
/// 								Direction:       pulumi.String("ANY"),
/// 								Protocol:        pulumi.String("TCP"),
/// 								Source:          pulumi.String("1.2.3.4/32"),
/// 								SourcePort:      pulumi.String("53"),
/// 							},
/// 							RuleOptions: networkfirewall.RuleGroupRuleGroupRulesSourceStatefulRuleRuleOptionArray{
/// 								&networkfirewall.RuleGroupRuleGroupRulesSourceStatefulRuleRuleOptionArgs{
/// 									Keyword: pulumi.String("sid"),
/// 									Settings: pulumi.StringArray{
/// 										pulumi.String("1"),
/// 									},
/// 								},
/// 							},
/// 							Action: pulumi.String("DROP"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Capacity: pulumi.Int(100),
/// 			Name:     pulumi.String("example"),
/// 			Type:     pulumi.String("STATEFUL"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_networkfirewall_rulegroup" "example" {
///   rule_group = {
///     rules_source = {
///       stateful_rules = [{
///         "header" = {
///           "destination"     = "124.1.1.24/32"
///           "destinationPort" = 53
///           "direction"       = "ANY"
///           "protocol"        = "TCP"
///           "source"          = "1.2.3.4/32"
///           "sourcePort"      = 53
///         }
///         "ruleOptions" = [{
///           "keyword"  = "sid"
///           "settings" = ["1"]
///         }]
///         "action" = "DROP"
///       }]
///     }
///   }
///   capacity = 100
///   name     = "example"
///   type     = "STATEFUL"
///   tags = {
///     "Tag1" = "Value1"
///     "Tag2" = "Value2"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkfirewall.RuleGroup;
/// import com.pulumi.aws.networkfirewall.RuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceStatefulRuleArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceStatefulRuleHeaderArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceStatefulRuleRuleOptionArgs;
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
///         var example = new RuleGroup("example", RuleGroupArgs.builder()
///             .ruleGroup(RuleGroupRuleGroupArgs.builder()
///                 .rulesSource(RuleGroupRuleGroupRulesSourceArgs.builder()
///                     .statefulRules(RuleGroupRuleGroupRulesSourceStatefulRuleArgs.builder()
///                         .header(RuleGroupRuleGroupRulesSourceStatefulRuleHeaderArgs.builder()
///                             .destination("124.1.1.24/32")
///                             .destinationPort("53")
///                             .direction("ANY")
///                             .protocol("TCP")
///                             .source("1.2.3.4/32")
///                             .sourcePort("53")
///                             .build())
///                         .ruleOptions(RuleGroupRuleGroupRulesSourceStatefulRuleRuleOptionArgs.builder()
///                             .keyword("sid")
///                             .settings("1")
///                             .build())
///                         .action("DROP")
///                         .build())
///                     .build())
///                 .build())
///             .capacity(100)
///             .name("example")
///             .type("STATEFUL")
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
///     type: aws:networkfirewall:RuleGroup
///     properties:
///       ruleGroup:
///         rulesSource:
///           statefulRules:
///             - header:
///                 destination: 124.1.1.24/32
///                 destinationPort: 53
///                 direction: ANY
///                 protocol: TCP
///                 source: 1.2.3.4/32
///                 sourcePort: 53
///               ruleOptions:
///                 - keyword: sid
///                   settings:
///                     - '1'
///               action: DROP
///       capacity: 100
///       name: example
///       type: STATEFUL
///       tags:
///         Tag1: Value1
///         Tag2: Value2
/// ```
///
///
/// ### Stateful Inspection from rules specifications defined in Suricata flat format
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.networkfirewall.RuleGroup("example", {
///     capacity: 100,
///     name: "example",
///     type: "STATEFUL",
///     rules: std.file({
///         input: "example.rules",
///     }).then(invoke => invoke.result),
///     tags: {
///         Tag1: "Value1",
///         Tag2: "Value2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.networkfirewall.RuleGroup("example",
///     capacity=100,
///     name="example",
///     type="STATEFUL",
///     rules=std.file(input="example.rules").result,
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
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkFirewall.RuleGroup("example", new()
///     {
///         Capacity = 100,
///         Name = "example",
///         Type = "STATEFUL",
///         Rules = Std.File.Invoke(new()
///         {
///             Input = "example.rules",
///         }).Apply(invoke => invoke.Result),
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
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "example.rules",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkfirewall.NewRuleGroup(ctx, "example", &networkfirewall.RuleGroupArgs{
/// 			Capacity: pulumi.Int(100),
/// 			Name:     pulumi.String("example"),
/// 			Type:     pulumi.String("STATEFUL"),
/// 			Rules:    pulumi.String(invokeFile.Result),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "aws_networkfirewall_rulegroup" "example" {
///   capacity = 100
///   name     = "example"
///   type     = "STATEFUL"
///   rules    = file("example.rules")
///   tags = {
///     "Tag1" = "Value1"
///     "Tag2" = "Value2"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkfirewall.RuleGroup;
/// import com.pulumi.aws.networkfirewall.RuleGroupArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var example = new RuleGroup("example", RuleGroupArgs.builder()
///             .capacity(100)
///             .name("example")
///             .type("STATEFUL")
///             .rules(StdFunctions.file(FileArgs.builder()
///                 .input("example.rules")
///                 .build()).result())
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
///     type: aws:networkfirewall:RuleGroup
///     properties:
///       capacity: 100
///       name: example
///       type: STATEFUL
///       rules:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: example.rules
///           return: result
///       tags:
///         Tag1: Value1
///         Tag2: Value2
/// ```
///
///
/// ### Stateful Inspection from rule group specifications using rule variables and Suricata format rules
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.networkfirewall.RuleGroup("example", {
///     ruleGroup: {
///         ruleVariables: {
///             ipSets: [
///                 {
///                     ipSet: {
///                         definitions: [
///                             "10.0.0.0/16",
///                             "10.0.1.0/24",
///                             "192.168.0.0/16",
///                         ],
///                     },
///                     key: "WEBSERVERS_HOSTS",
///                 },
///                 {
///                     ipSet: {
///                         definitions: ["1.2.3.4/32"],
///                     },
///                     key: "EXTERNAL_HOST",
///                 },
///             ],
///             portSets: [{
///                 portSet: {
///                     definitions: [
///                         "443",
///                         "80",
///                     ],
///                 },
///                 key: "HTTP_PORTS",
///             }],
///         },
///         rulesSource: {
///             rulesString: std.file({
///                 input: "suricata_rules_file",
///             }).then(invoke => invoke.result),
///         },
///     },
///     capacity: 100,
///     name: "example",
///     type: "STATEFUL",
///     tags: {
///         Tag1: "Value1",
///         Tag2: "Value2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.networkfirewall.RuleGroup("example",
///     rule_group={
///         "rule_variables": {
///             "ip_sets": [
///                 {
///                     "ip_set": {
///                         "definitions": [
///                             "10.0.0.0/16",
///                             "10.0.1.0/24",
///                             "192.168.0.0/16",
///                         ],
///                     },
///                     "key": "WEBSERVERS_HOSTS",
///                 },
///                 {
///                     "ip_set": {
///                         "definitions": ["1.2.3.4/32"],
///                     },
///                     "key": "EXTERNAL_HOST",
///                 },
///             ],
///             "port_sets": [{
///                 "port_set": {
///                     "definitions": [
///                         "443",
///                         "80",
///                     ],
///                 },
///                 "key": "HTTP_PORTS",
///             }],
///         },
///         "rules_source": {
///             "rules_string": std.file(input="suricata_rules_file").result,
///         },
///     },
///     capacity=100,
///     name="example",
///     type="STATEFUL",
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
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkFirewall.RuleGroup("example", new()
///     {
///         RuleGroupConfiguration = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupArgs
///         {
///             RuleVariables = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesArgs
///             {
///                 IpSets = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesIpSetArgs
///                     {
///                         IpSet = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesIpSetIpSetArgs
///                         {
///                             Definitions = new[]
///                             {
///                                 "10.0.0.0/16",
///                                 "10.0.1.0/24",
///                                 "192.168.0.0/16",
///                             },
///                         },
///                         Key = "WEBSERVERS_HOSTS",
///                     },
///                     new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesIpSetArgs
///                     {
///                         IpSet = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesIpSetIpSetArgs
///                         {
///                             Definitions = new[]
///                             {
///                                 "1.2.3.4/32",
///                             },
///                         },
///                         Key = "EXTERNAL_HOST",
///                     },
///                 },
///                 PortSets = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesPortSetArgs
///                     {
///                         PortSet = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesPortSetPortSetArgs
///                         {
///                             Definitions = new[]
///                             {
///                                 "443",
///                                 "80",
///                             },
///                         },
///                         Key = "HTTP_PORTS",
///                     },
///                 },
///             },
///             RulesSource = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceArgs
///             {
///                 RulesString = Std.File.Invoke(new()
///                 {
///                     Input = "suricata_rules_file",
///                 }).Apply(invoke => invoke.Result),
///             },
///         },
///         Capacity = 100,
///         Name = "example",
///         Type = "STATEFUL",
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
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "suricata_rules_file",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkfirewall.NewRuleGroup(ctx, "example", &networkfirewall.RuleGroupArgs{
/// 			RuleGroup: &networkfirewall.RuleGroupRuleGroupArgs{
/// 				RuleVariables: &networkfirewall.RuleGroupRuleGroupRuleVariablesArgs{
/// 					IpSets: networkfirewall.RuleGroupRuleGroupRuleVariablesIpSetArray{
/// 						&networkfirewall.RuleGroupRuleGroupRuleVariablesIpSetArgs{
/// 							IpSet: &networkfirewall.RuleGroupRuleGroupRuleVariablesIpSetIpSetArgs{
/// 								Definitions: pulumi.StringArray{
/// 									pulumi.String("10.0.0.0/16"),
/// 									pulumi.String("10.0.1.0/24"),
/// 									pulumi.String("192.168.0.0/16"),
/// 								},
/// 							},
/// 							Key: pulumi.String("WEBSERVERS_HOSTS"),
/// 						},
/// 						&networkfirewall.RuleGroupRuleGroupRuleVariablesIpSetArgs{
/// 							IpSet: &networkfirewall.RuleGroupRuleGroupRuleVariablesIpSetIpSetArgs{
/// 								Definitions: pulumi.StringArray{
/// 									pulumi.String("1.2.3.4/32"),
/// 								},
/// 							},
/// 							Key: pulumi.String("EXTERNAL_HOST"),
/// 						},
/// 					},
/// 					PortSets: networkfirewall.RuleGroupRuleGroupRuleVariablesPortSetArray{
/// 						&networkfirewall.RuleGroupRuleGroupRuleVariablesPortSetArgs{
/// 							PortSet: &networkfirewall.RuleGroupRuleGroupRuleVariablesPortSetPortSetArgs{
/// 								Definitions: pulumi.StringArray{
/// 									pulumi.String("443"),
/// 									pulumi.String("80"),
/// 								},
/// 							},
/// 							Key: pulumi.String("HTTP_PORTS"),
/// 						},
/// 					},
/// 				},
/// 				RulesSource: &networkfirewall.RuleGroupRuleGroupRulesSourceArgs{
/// 					RulesString: pulumi.String(invokeFile.Result),
/// 				},
/// 			},
/// 			Capacity: pulumi.Int(100),
/// 			Name:     pulumi.String("example"),
/// 			Type:     pulumi.String("STATEFUL"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "aws_networkfirewall_rulegroup" "example" {
///   rule_group = {
///     rule_variables = {
///       ip_sets = [{
///         "ipSet" = {
///           "definitions" = ["10.0.0.0/16", "10.0.1.0/24", "192.168.0.0/16"]
///         }
///         "key" = "WEBSERVERS_HOSTS"
///         }, {
///         "ipSet" = {
///           "definitions" = ["1.2.3.4/32"]
///         }
///         "key" = "EXTERNAL_HOST"
///       }]
///       port_sets = [{
///         "portSet" = {
///           "definitions" = ["443", "80"]
///         }
///         "key" = "HTTP_PORTS"
///       }]
///     }
///     rules_source = {
///       rules_string = file("suricata_rules_file")
///     }
///   }
///   capacity = 100
///   name     = "example"
///   type     = "STATEFUL"
///   tags = {
///     "Tag1" = "Value1"
///     "Tag2" = "Value2"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkfirewall.RuleGroup;
/// import com.pulumi.aws.networkfirewall.RuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRuleVariablesArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRuleVariablesIpSetArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRuleVariablesIpSetIpSetArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRuleVariablesPortSetArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRuleVariablesPortSetPortSetArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var example = new RuleGroup("example", RuleGroupArgs.builder()
///             .ruleGroup(RuleGroupRuleGroupArgs.builder()
///                 .ruleVariables(RuleGroupRuleGroupRuleVariablesArgs.builder()
///                     .ipSets(
///                         RuleGroupRuleGroupRuleVariablesIpSetArgs.builder()
///                             .ipSet(RuleGroupRuleGroupRuleVariablesIpSetIpSetArgs.builder()
///                                 .definitions(
///                                     "10.0.0.0/16",
///                                     "10.0.1.0/24",
///                                     "192.168.0.0/16")
///                                 .build())
///                             .key("WEBSERVERS_HOSTS")
///                             .build(),
///                         RuleGroupRuleGroupRuleVariablesIpSetArgs.builder()
///                             .ipSet(RuleGroupRuleGroupRuleVariablesIpSetIpSetArgs.builder()
///                                 .definitions("1.2.3.4/32")
///                                 .build())
///                             .key("EXTERNAL_HOST")
///                             .build())
///                     .portSets(RuleGroupRuleGroupRuleVariablesPortSetArgs.builder()
///                         .portSet(RuleGroupRuleGroupRuleVariablesPortSetPortSetArgs.builder()
///                             .definitions(
///                                 "443",
///                                 "80")
///                             .build())
///                         .key("HTTP_PORTS")
///                         .build())
///                     .build())
///                 .rulesSource(RuleGroupRuleGroupRulesSourceArgs.builder()
///                     .rulesString(StdFunctions.file(FileArgs.builder()
///                         .input("suricata_rules_file")
///                         .build()).result())
///                     .build())
///                 .build())
///             .capacity(100)
///             .name("example")
///             .type("STATEFUL")
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
///     type: aws:networkfirewall:RuleGroup
///     properties:
///       ruleGroup:
///         ruleVariables:
///           ipSets:
///             - ipSet:
///                 definitions:
///                   - 10.0.0.0/16
///                   - 10.0.1.0/24
///                   - 192.168.0.0/16
///               key: WEBSERVERS_HOSTS
///             - ipSet:
///                 definitions:
///                   - 1.2.3.4/32
///               key: EXTERNAL_HOST
///           portSets:
///             - portSet:
///                 definitions:
///                   - '443'
///                   - '80'
///               key: HTTP_PORTS
///         rulesSource:
///           rulesString:
///             fn::invoke:
///               function: std:file
///               arguments:
///                 input: suricata_rules_file
///               return: result
///       capacity: 100
///       name: example
///       type: STATEFUL
///       tags:
///         Tag1: Value1
///         Tag2: Value2
/// ```
///
///
/// ### Stateless Inspection with a Custom Action
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.RuleGroup("example", {
///     ruleGroup: {
///         rulesSource: {
///             statelessRulesAndCustomActions: {
///                 customActions: [{
///                     actionDefinition: {
///                         publishMetricAction: {
///                             dimensions: [{
///                                 value: "2",
///                             }],
///                         },
///                     },
///                     actionName: "ExampleMetricsAction",
///                 }],
///                 statelessRules: [{
///                     ruleDefinition: {
///                         matchAttributes: {
///                             destinationPorts: [{
///                                 fromPort: 443,
///                                 toPort: 443,
///                             }],
///                             destinations: [{
///                                 addressDefinition: "124.1.1.5/32",
///                             }],
///                             sourcePorts: [{
///                                 fromPort: 443,
///                                 toPort: 443,
///                             }],
///                             sources: [{
///                                 addressDefinition: "1.2.3.4/32",
///                             }],
///                             tcpFlags: [{
///                                 flags: ["SYN"],
///                                 masks: [
///                                     "SYN",
///                                     "ACK",
///                                 ],
///                             }],
///                             protocols: [6],
///                         },
///                         actions: [
///                             "aws:pass",
///                             "ExampleMetricsAction",
///                         ],
///                     },
///                     priority: 1,
///                 }],
///             },
///         },
///     },
///     description: "Stateless Rate Limiting Rule",
///     capacity: 100,
///     name: "example",
///     type: "STATELESS",
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
/// example = aws.networkfirewall.RuleGroup("example",
///     rule_group={
///         "rules_source": {
///             "stateless_rules_and_custom_actions": {
///                 "custom_actions": [{
///                     "action_definition": {
///                         "publish_metric_action": {
///                             "dimensions": [{
///                                 "value": "2",
///                             }],
///                         },
///                     },
///                     "action_name": "ExampleMetricsAction",
///                 }],
///                 "stateless_rules": [{
///                     "rule_definition": {
///                         "match_attributes": {
///                             "destination_ports": [{
///                                 "from_port": 443,
///                                 "to_port": 443,
///                             }],
///                             "destinations": [{
///                                 "address_definition": "124.1.1.5/32",
///                             }],
///                             "source_ports": [{
///                                 "from_port": 443,
///                                 "to_port": 443,
///                             }],
///                             "sources": [{
///                                 "address_definition": "1.2.3.4/32",
///                             }],
///                             "tcp_flags": [{
///                                 "flags": ["SYN"],
///                                 "masks": [
///                                     "SYN",
///                                     "ACK",
///                                 ],
///                             }],
///                             "protocols": [6],
///                         },
///                         "actions": [
///                             "aws:pass",
///                             "ExampleMetricsAction",
///                         ],
///                     },
///                     "priority": 1,
///                 }],
///             },
///         },
///     },
///     description="Stateless Rate Limiting Rule",
///     capacity=100,
///     name="example",
///     type="STATELESS",
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
///     var example = new Aws.NetworkFirewall.RuleGroup("example", new()
///     {
///         RuleGroupConfiguration = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupArgs
///         {
///             RulesSource = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceArgs
///             {
///                 StatelessRulesAndCustomActions = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsArgs
///                 {
///                     CustomActions = new[]
///                     {
///                         new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionArgs
///                         {
///                             ActionDefinition = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionArgs
///                             {
///                                 PublishMetricAction = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionArgs
///                                 {
///                                     Dimensions = new[]
///                                     {
///                                         new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionDimensionArgs
///                                         {
///                                             Value = "2",
///                                         },
///                                     },
///                                 },
///                             },
///                             ActionName = "ExampleMetricsAction",
///                         },
///                     },
///                     StatelessRules = new[]
///                     {
///                         new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleArgs
///                         {
///                             RuleDefinition = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionArgs
///                             {
///                                 MatchAttributes = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesArgs
///                                 {
///                                     DestinationPorts = new[]
///                                     {
///                                         new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationPortArgs
///                                         {
///                                             FromPort = 443,
///                                             ToPort = 443,
///                                         },
///                                     },
///                                     Destinations = new[]
///                                     {
///                                         new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationArgs
///                                         {
///                                             AddressDefinition = "124.1.1.5/32",
///                                         },
///                                     },
///                                     SourcePorts = new[]
///                                     {
///                                         new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourcePortArgs
///                                         {
///                                             FromPort = 443,
///                                             ToPort = 443,
///                                         },
///                                     },
///                                     Sources = new[]
///                                     {
///                                         new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourceArgs
///                                         {
///                                             AddressDefinition = "1.2.3.4/32",
///                                         },
///                                     },
///                                     TcpFlags = new[]
///                                     {
///                                         new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlagArgs
///                                         {
///                                             Flags = new[]
///                                             {
///                                                 "SYN",
///                                             },
///                                             Masks = new[]
///                                             {
///                                                 "SYN",
///                                                 "ACK",
///                                             },
///                                         },
///                                     },
///                                     Protocols = new[]
///                                     {
///                                         6,
///                                     },
///                                 },
///                                 Actions = new[]
///                                 {
///                                     "aws:pass",
///                                     "ExampleMetricsAction",
///                                 },
///                             },
///                             Priority = 1,
///                         },
///                     },
///                 },
///             },
///         },
///         Description = "Stateless Rate Limiting Rule",
///         Capacity = 100,
///         Name = "example",
///         Type = "STATELESS",
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
/// 		_, err := networkfirewall.NewRuleGroup(ctx, "example", &networkfirewall.RuleGroupArgs{
/// 			RuleGroup: &networkfirewall.RuleGroupRuleGroupArgs{
/// 				RulesSource: &networkfirewall.RuleGroupRuleGroupRulesSourceArgs{
/// 					StatelessRulesAndCustomActions: &networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsArgs{
/// 						CustomActions: networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionArray{
/// 							&networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionArgs{
/// 								ActionDefinition: &networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionArgs{
/// 									PublishMetricAction: &networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionArgs{
/// 										Dimensions: networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionDimensionArray{
/// 											&networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionDimensionArgs{
/// 												Value: pulumi.String("2"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 								ActionName: pulumi.String("ExampleMetricsAction"),
/// 							},
/// 						},
/// 						StatelessRules: networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleArray{
/// 							&networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleArgs{
/// 								RuleDefinition: &networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionArgs{
/// 									MatchAttributes: &networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesArgs{
/// 										DestinationPorts: networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationPortArray{
/// 											&networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationPortArgs{
/// 												FromPort: pulumi.Int(443),
/// 												ToPort:   pulumi.Int(443),
/// 											},
/// 										},
/// 										Destinations: networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationArray{
/// 											&networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationArgs{
/// 												AddressDefinition: pulumi.String("124.1.1.5/32"),
/// 											},
/// 										},
/// 										SourcePorts: networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourcePortArray{
/// 											&networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourcePortArgs{
/// 												FromPort: pulumi.Int(443),
/// 												ToPort:   pulumi.Int(443),
/// 											},
/// 										},
/// 										Sources: networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourceArray{
/// 											&networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourceArgs{
/// 												AddressDefinition: pulumi.String("1.2.3.4/32"),
/// 											},
/// 										},
/// 										TcpFlags: networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlagArray{
/// 											&networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlagArgs{
/// 												Flags: pulumi.StringArray{
/// 													pulumi.String("SYN"),
/// 												},
/// 												Masks: pulumi.StringArray{
/// 													pulumi.String("SYN"),
/// 													pulumi.String("ACK"),
/// 												},
/// 											},
/// 										},
/// 										Protocols: pulumi.IntArray{
/// 											pulumi.Int(6),
/// 										},
/// 									},
/// 									Actions: pulumi.StringArray{
/// 										pulumi.String("aws:pass"),
/// 										pulumi.String("ExampleMetricsAction"),
/// 									},
/// 								},
/// 								Priority: pulumi.Int(1),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Description: pulumi.String("Stateless Rate Limiting Rule"),
/// 			Capacity:    pulumi.Int(100),
/// 			Name:        pulumi.String("example"),
/// 			Type:        pulumi.String("STATELESS"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_networkfirewall_rulegroup" "example" {
///   rule_group = {
///     rules_source = {
///       stateless_rules_and_custom_actions = {
///         custom_actions = [{
///           "actionDefinition" = {
///             "publishMetricAction" = {
///               "dimensions" = [{
///                 "value" = "2"
///               }]
///             }
///           }
///           "actionName" = "ExampleMetricsAction"
///         }]
///         stateless_rules = [{
///           "ruleDefinition" = {
///             "matchAttributes" = {
///               "destinationPorts" = [{
///                 "fromPort" = 443
///                 "toPort"   = 443
///               }]
///               "destinations" = [{
///                 "addressDefinition" = "124.1.1.5/32"
///               }]
///               "sourcePorts" = [{
///                 "fromPort" = 443
///                 "toPort"   = 443
///               }]
///               "sources" = [{
///                 "addressDefinition" = "1.2.3.4/32"
///               }]
///               "tcpFlags" = [{
///                 "flags" = ["SYN"]
///                 "masks" = ["SYN", "ACK"]
///               }]
///               "protocols" = [6]
///             }
///             "actions" = ["aws:pass", "ExampleMetricsAction"]
///           }
///           "priority" = 1
///         }]
///       }
///     }
///   }
///   description = "Stateless Rate Limiting Rule"
///   capacity    = 100
///   name        = "example"
///   type        = "STATELESS"
///   tags = {
///     "Tag1" = "Value1"
///     "Tag2" = "Value2"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkfirewall.RuleGroup;
/// import com.pulumi.aws.networkfirewall.RuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionDimensionArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationPortArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourcePortArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourceArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlagArgs;
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
///         var example = new RuleGroup("example", RuleGroupArgs.builder()
///             .ruleGroup(RuleGroupRuleGroupArgs.builder()
///                 .rulesSource(RuleGroupRuleGroupRulesSourceArgs.builder()
///                     .statelessRulesAndCustomActions(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsArgs.builder()
///                         .customActions(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionArgs.builder()
///                             .actionDefinition(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionArgs.builder()
///                                 .publishMetricAction(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionArgs.builder()
///                                     .dimensions(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionDimensionArgs.builder()
///                                         .value("2")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .actionName("ExampleMetricsAction")
///                             .build())
///                         .statelessRules(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleArgs.builder()
///                             .ruleDefinition(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionArgs.builder()
///                                 .matchAttributes(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesArgs.builder()
///                                     .destinationPorts(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationPortArgs.builder()
///                                         .fromPort(443)
///                                         .toPort(443)
///                                         .build())
///                                     .destinations(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationArgs.builder()
///                                         .addressDefinition("124.1.1.5/32")
///                                         .build())
///                                     .sourcePorts(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourcePortArgs.builder()
///                                         .fromPort(443)
///                                         .toPort(443)
///                                         .build())
///                                     .sources(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourceArgs.builder()
///                                         .addressDefinition("1.2.3.4/32")
///                                         .build())
///                                     .tcpFlags(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlagArgs.builder()
///                                         .flags("SYN")
///                                         .masks(
///                                             "SYN",
///                                             "ACK")
///                                         .build())
///                                     .protocols(6)
///                                     .build())
///                                 .actions(
///                                     "aws:pass",
///                                     "ExampleMetricsAction")
///                                 .build())
///                             .priority(1)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .description("Stateless Rate Limiting Rule")
///             .capacity(100)
///             .name("example")
///             .type("STATELESS")
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
///     type: aws:networkfirewall:RuleGroup
///     properties:
///       ruleGroup:
///         rulesSource:
///           statelessRulesAndCustomActions:
///             customActions:
///               - actionDefinition:
///                   publishMetricAction:
///                     dimensions:
///                       - value: '2'
///                 actionName: ExampleMetricsAction
///             statelessRules:
///               - ruleDefinition:
///                   matchAttributes:
///                     destinationPorts:
///                       - fromPort: 443
///                         toPort: 443
///                     destinations:
///                       - addressDefinition: 124.1.1.5/32
///                     sourcePorts:
///                       - fromPort: 443
///                         toPort: 443
///                     sources:
///                       - addressDefinition: 1.2.3.4/32
///                     tcpFlags:
///                       - flags:
///                           - SYN
///                         masks:
///                           - SYN
///                           - ACK
///                     protocols:
///                       - 6
///                   actions:
///                     - aws:pass
///                     - ExampleMetricsAction
///                 priority: 1
///       description: Stateless Rate Limiting Rule
///       capacity: 100
///       name: example
///       type: STATELESS
///       tags:
///         Tag1: Value1
///         Tag2: Value2
/// ```
///
///
/// ### IP Set References to the Rule Group
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.RuleGroup("example", {
///     ruleGroup: {
///         rulesSource: {
///             rulesSourceList: {
///                 generatedRulesType: "DENYLIST",
///                 targetTypes: ["HTTP_HOST"],
///                 targets: ["test.example.com"],
///             },
///         },
///         referenceSets: {
///             ipSetReferences: [{
///                 ipSetReferences: [{
///                     referenceArn: _this.arn,
///                 }],
///                 key: "example",
///             }],
///         },
///     },
///     capacity: 100,
///     name: "example",
///     type: "STATEFUL",
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
/// example = aws.networkfirewall.RuleGroup("example",
///     rule_group={
///         "rules_source": {
///             "rules_source_list": {
///                 "generated_rules_type": "DENYLIST",
///                 "target_types": ["HTTP_HOST"],
///                 "targets": ["test.example.com"],
///             },
///         },
///         "reference_sets": {
///             "ip_set_references": [{
///                 "ip_set_references": [{
///                     "reference_arn": this["arn"],
///                 }],
///                 "key": "example",
///             }],
///         },
///     },
///     capacity=100,
///     name="example",
///     type="STATEFUL",
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
///     var example = new Aws.NetworkFirewall.RuleGroup("example", new()
///     {
///         RuleGroupConfiguration = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupArgs
///         {
///             RulesSource = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceArgs
///             {
///                 RulesSourceList = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceRulesSourceListArgs
///                 {
///                     GeneratedRulesType = "DENYLIST",
///                     TargetTypes = new[]
///                     {
///                         "HTTP_HOST",
///                     },
///                     Targets = new[]
///                     {
///                         "test.example.com",
///                     },
///                 },
///             },
///             ReferenceSets = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupReferenceSetsArgs
///             {
///                 IpSetReferences = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupReferenceSetsIpSetReferenceArgs
///                     {
///                         IpSetReferences = new[]
///                         {
///                             new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReferenceArgs
///                             {
///                                 ReferenceArn = @this.Arn,
///                             },
///                         },
///                         Key = "example",
///                     },
///                 },
///             },
///         },
///         Capacity = 100,
///         Name = "example",
///         Type = "STATEFUL",
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
/// 		_, err := networkfirewall.NewRuleGroup(ctx, "example", &networkfirewall.RuleGroupArgs{
/// 			RuleGroup: &networkfirewall.RuleGroupRuleGroupArgs{
/// 				RulesSource: &networkfirewall.RuleGroupRuleGroupRulesSourceArgs{
/// 					RulesSourceList: &networkfirewall.RuleGroupRuleGroupRulesSourceRulesSourceListArgs{
/// 						GeneratedRulesType: pulumi.String("DENYLIST"),
/// 						TargetTypes: pulumi.StringArray{
/// 							pulumi.String("HTTP_HOST"),
/// 						},
/// 						Targets: pulumi.StringArray{
/// 							pulumi.String("test.example.com"),
/// 						},
/// 					},
/// 				},
/// 				ReferenceSets: &networkfirewall.RuleGroupRuleGroupReferenceSetsArgs{
/// 					IpSetReferences: networkfirewall.RuleGroupRuleGroupReferenceSetsIpSetReferenceArray{
/// 						&networkfirewall.RuleGroupRuleGroupReferenceSetsIpSetReferenceArgs{
/// 							IpSetReferences: networkfirewall.RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReferenceArray{
/// 								&networkfirewall.RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReferenceArgs{
/// 									ReferenceArn: pulumi.Any(this.Arn),
/// 								},
/// 							},
/// 							Key: pulumi.String("example"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Capacity: pulumi.Int(100),
/// 			Name:     pulumi.String("example"),
/// 			Type:     pulumi.String("STATEFUL"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_networkfirewall_rulegroup" "example" {
///   rule_group = {
///     rules_source = {
///       rules_source_list = {
///         generated_rules_type = "DENYLIST"
///         target_types         = ["HTTP_HOST"]
///         targets              = ["test.example.com"]
///       }
///     }
///     reference_sets = {
///       ip_set_references = [{
///         "ipSetReferences" = [{
///           "referenceArn" = this.arn
///         }]
///         "key" = "example"
///       }]
///     }
///   }
///   capacity = 100
///   name     = "example"
///   type     = "STATEFUL"
///   tags = {
///     "Tag1" = "Value1"
///     "Tag2" = "Value2"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkfirewall.RuleGroup;
/// import com.pulumi.aws.networkfirewall.RuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceRulesSourceListArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupReferenceSetsArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupReferenceSetsIpSetReferenceArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReferenceArgs;
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
///         var example = new RuleGroup("example", RuleGroupArgs.builder()
///             .ruleGroup(RuleGroupRuleGroupArgs.builder()
///                 .rulesSource(RuleGroupRuleGroupRulesSourceArgs.builder()
///                     .rulesSourceList(RuleGroupRuleGroupRulesSourceRulesSourceListArgs.builder()
///                         .generatedRulesType("DENYLIST")
///                         .targetTypes("HTTP_HOST")
///                         .targets("test.example.com")
///                         .build())
///                     .build())
///                 .referenceSets(RuleGroupRuleGroupReferenceSetsArgs.builder()
///                     .ipSetReferences(RuleGroupRuleGroupReferenceSetsIpSetReferenceArgs.builder()
///                         .ipSetReferences(RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReferenceArgs.builder()
///                             .referenceArn(this_.arn())
///                             .build())
///                         .key("example")
///                         .build())
///                     .build())
///                 .build())
///             .capacity(100)
///             .name("example")
///             .type("STATEFUL")
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
///     type: aws:networkfirewall:RuleGroup
///     properties:
///       ruleGroup:
///         rulesSource:
///           rulesSourceList:
///             generatedRulesType: DENYLIST
///             targetTypes:
///               - HTTP_HOST
///             targets:
///               - test.example.com
///         referenceSets:
///           ipSetReferences:
///             - ipSetReferences:
///                 - referenceArn: ${this.arn}
///               key: example
///       capacity: 100
///       name: example
///       type: STATEFUL
///       tags:
///         Tag1: Value1
///         Tag2: Value2
/// ```
///
///
/// ### Example with S3 as source for the suricata rules
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const suricataRules = aws.s3.getObject({
///     bucket: suricataRulesAwsS3Bucket.id,
///     key: "rules/custom.rules",
/// });
/// const s3RulesExample = new aws.networkfirewall.RuleGroup("s3_rules_example", {
///     ruleGroup: {
///         ruleVariables: {
///             ipSets: [{
///                 ipSet: {
///                     definitions: [
///                         "10.0.0.0/16",
///                         "192.168.0.0/16",
///                         "172.16.0.0/12",
///                     ],
///                 },
///                 key: "HOME_NET",
///             }],
///             portSets: [{
///                 portSet: {
///                     definitions: [
///                         "443",
///                         "80",
///                     ],
///                 },
///                 key: "HTTP_PORTS",
///             }],
///         },
///         rulesSource: {
///             rulesString: suricataRules.then(suricataRules => suricataRules.body),
///         },
///     },
///     capacity: 1000,
///     name: "my-terraform-s3-rules",
///     type: "STATEFUL",
///     tags: {
///         ManagedBy: "terraform",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// suricata_rules = aws.s3.get_object(bucket=suricata_rules_aws_s3_bucket["id"],
///     key="rules/custom.rules")
/// s3_rules_example = aws.networkfirewall.RuleGroup("s3_rules_example",
///     rule_group={
///         "rule_variables": {
///             "ip_sets": [{
///                 "ip_set": {
///                     "definitions": [
///                         "10.0.0.0/16",
///                         "192.168.0.0/16",
///                         "172.16.0.0/12",
///                     ],
///                 },
///                 "key": "HOME_NET",
///             }],
///             "port_sets": [{
///                 "port_set": {
///                     "definitions": [
///                         "443",
///                         "80",
///                     ],
///                 },
///                 "key": "HTTP_PORTS",
///             }],
///         },
///         "rules_source": {
///             "rules_string": suricata_rules.body,
///         },
///     },
///     capacity=1000,
///     name="my-terraform-s3-rules",
///     type="STATEFUL",
///     tags={
///         "ManagedBy": "terraform",
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
///     var suricataRules = Aws.S3.GetObject.Invoke(new()
///     {
///         Bucket = suricataRulesAwsS3Bucket.Id,
///         Key = "rules/custom.rules",
///     });
///
///     var s3RulesExample = new Aws.NetworkFirewall.RuleGroup("s3_rules_example", new()
///     {
///         RuleGroupConfiguration = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupArgs
///         {
///             RuleVariables = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesArgs
///             {
///                 IpSets = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesIpSetArgs
///                     {
///                         IpSet = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesIpSetIpSetArgs
///                         {
///                             Definitions = new[]
///                             {
///                                 "10.0.0.0/16",
///                                 "192.168.0.0/16",
///                                 "172.16.0.0/12",
///                             },
///                         },
///                         Key = "HOME_NET",
///                     },
///                 },
///                 PortSets = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesPortSetArgs
///                     {
///                         PortSet = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesPortSetPortSetArgs
///                         {
///                             Definitions = new[]
///                             {
///                                 "443",
///                                 "80",
///                             },
///                         },
///                         Key = "HTTP_PORTS",
///                     },
///                 },
///             },
///             RulesSource = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceArgs
///             {
///                 RulesString = suricataRules.Apply(getObjectResult => getObjectResult.Body),
///             },
///         },
///         Capacity = 1000,
///         Name = "my-terraform-s3-rules",
///         Type = "STATEFUL",
///         Tags =
///         {
///             { "ManagedBy", "terraform" },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		suricataRules, err := s3.GetObject(ctx, &s3.GetObjectArgs{
/// 			Bucket: suricataRulesAwsS3Bucket.Id,
/// 			Key:    "rules/custom.rules",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkfirewall.NewRuleGroup(ctx, "s3_rules_example", &networkfirewall.RuleGroupArgs{
/// 			RuleGroup: &networkfirewall.RuleGroupRuleGroupArgs{
/// 				RuleVariables: &networkfirewall.RuleGroupRuleGroupRuleVariablesArgs{
/// 					IpSets: networkfirewall.RuleGroupRuleGroupRuleVariablesIpSetArray{
/// 						&networkfirewall.RuleGroupRuleGroupRuleVariablesIpSetArgs{
/// 							IpSet: &networkfirewall.RuleGroupRuleGroupRuleVariablesIpSetIpSetArgs{
/// 								Definitions: pulumi.StringArray{
/// 									pulumi.String("10.0.0.0/16"),
/// 									pulumi.String("192.168.0.0/16"),
/// 									pulumi.String("172.16.0.0/12"),
/// 								},
/// 							},
/// 							Key: pulumi.String("HOME_NET"),
/// 						},
/// 					},
/// 					PortSets: networkfirewall.RuleGroupRuleGroupRuleVariablesPortSetArray{
/// 						&networkfirewall.RuleGroupRuleGroupRuleVariablesPortSetArgs{
/// 							PortSet: &networkfirewall.RuleGroupRuleGroupRuleVariablesPortSetPortSetArgs{
/// 								Definitions: pulumi.StringArray{
/// 									pulumi.String("443"),
/// 									pulumi.String("80"),
/// 								},
/// 							},
/// 							Key: pulumi.String("HTTP_PORTS"),
/// 						},
/// 					},
/// 				},
/// 				RulesSource: &networkfirewall.RuleGroupRuleGroupRulesSourceArgs{
/// 					RulesString: pulumi.String(suricataRules.Body),
/// 				},
/// 			},
/// 			Capacity: pulumi.Int(1000),
/// 			Name:     pulumi.String("my-terraform-s3-rules"),
/// 			Type:     pulumi.String("STATEFUL"),
/// 			Tags: pulumi.StringMap{
/// 				"ManagedBy": pulumi.String("terraform"),
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
/// data "aws_s3_getobject" "suricataRules" {
///   bucket = suricataRulesAwsS3Bucket.id
///   key    = "rules/custom.rules"
/// }
///
/// resource "aws_networkfirewall_rulegroup" "s3_rules_example" {
///   rule_group = {
///     rule_variables = {
///       ip_sets = [{
///         "ipSet" = {
///           "definitions" = ["10.0.0.0/16", "192.168.0.0/16", "172.16.0.0/12"]
///         }
///         "key" = "HOME_NET"
///       }]
///       port_sets = [{
///         "portSet" = {
///           "definitions" = ["443", "80"]
///         }
///         "key" = "HTTP_PORTS"
///       }]
///     }
///     rules_source = {
///       rules_string = data.aws_s3_getobject.suricataRules.body
///     }
///   }
///   capacity = 1000
///   name     = "my-terraform-s3-rules"
///   type     = "STATEFUL"
///   tags = {
///     "ManagedBy" = "terraform"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetObjectArgs;
/// import com.pulumi.aws.networkfirewall.RuleGroup;
/// import com.pulumi.aws.networkfirewall.RuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRuleVariablesArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRuleVariablesIpSetArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRuleVariablesIpSetIpSetArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRuleVariablesPortSetArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRuleVariablesPortSetPortSetArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceArgs;
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
///         final var suricataRules = S3Functions.getObject(GetObjectArgs.builder()
///             .bucket(suricataRulesAwsS3Bucket.id())
///             .key("rules/custom.rules")
///             .build());
///
///         var s3RulesExample = new RuleGroup("s3RulesExample", RuleGroupArgs.builder()
///             .ruleGroup(RuleGroupRuleGroupArgs.builder()
///                 .ruleVariables(RuleGroupRuleGroupRuleVariablesArgs.builder()
///                     .ipSets(RuleGroupRuleGroupRuleVariablesIpSetArgs.builder()
///                         .ipSet(RuleGroupRuleGroupRuleVariablesIpSetIpSetArgs.builder()
///                             .definitions(
///                                 "10.0.0.0/16",
///                                 "192.168.0.0/16",
///                                 "172.16.0.0/12")
///                             .build())
///                         .key("HOME_NET")
///                         .build())
///                     .portSets(RuleGroupRuleGroupRuleVariablesPortSetArgs.builder()
///                         .portSet(RuleGroupRuleGroupRuleVariablesPortSetPortSetArgs.builder()
///                             .definitions(
///                                 "443",
///                                 "80")
///                             .build())
///                         .key("HTTP_PORTS")
///                         .build())
///                     .build())
///                 .rulesSource(RuleGroupRuleGroupRulesSourceArgs.builder()
///                     .rulesString(suricataRules.body())
///                     .build())
///                 .build())
///             .capacity(1000)
///             .name("my-terraform-s3-rules")
///             .type("STATEFUL")
///             .tags(Map.of("ManagedBy", "terraform"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   s3RulesExample:
///     type: aws:networkfirewall:RuleGroup
///     name: s3_rules_example
///     properties:
///       ruleGroup:
///         ruleVariables:
///           ipSets:
///             - ipSet:
///                 definitions:
///                   - 10.0.0.0/16
///                   - 192.168.0.0/16
///                   - 172.16.0.0/12
///               key: HOME_NET
///           portSets:
///             - portSet:
///                 definitions:
///                   - '443'
///                   - '80'
///               key: HTTP_PORTS
///         rulesSource:
///           rulesString: ${suricataRules.body}
///       capacity: 1000
///       name: my-terraform-s3-rules
///       type: STATEFUL
///       tags:
///         ManagedBy: terraform
/// variables:
///   suricataRules:
///     fn::invoke:
///       function: aws:s3:getObject
///       arguments:
///         bucket: ${suricataRulesAwsS3Bucket.id}
///         key: rules/custom.rules
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Firewall Rule Groups using their `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:networkfirewall/ruleGroup:RuleGroup example arn:aws:network-firewall:us-west-1:123456789012:stateful-rulegroup/example
/// ```
class RuleGroup extends pulumi.CustomResource {
  /// ARN that identifies the rule group.
  late final pulumi.Output<String> arn;
  /// The maximum number of operating resources that this rule group can use. For a stateless rule group, the capacity required is the sum of the capacity requirements of the individual rules. For a stateful rule group, the minimum capacity required is the number of individual rules.
  late final pulumi.Output<int> capacity;
  /// A friendly description of the rule group.
  late final pulumi.Output<String?> description;
  /// KMS encryption configuration settings. See Encryption Configuration below for details.
  late final pulumi.Output<RuleGroupEncryptionConfiguration?> encryptionConfiguration;
  /// A friendly name of the rule group.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A configuration block that defines the rule group rules. Required unless `rules` is specified. See Rule Group below for details.
  late final pulumi.Output<RuleGroupRuleGroup> ruleGroup;
  /// The stateful rule group rules specifications in Suricata file format, with one rule per line. Use this to import your existing Suricata compatible rule groups. Required unless `ruleGroup` is specified.
  late final pulumi.Output<String?> rules;
  /// A map of key:value pairs to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Whether the rule group is stateless (containing stateless rules) or stateful (containing stateful rules). Valid values include: `STATEFUL` or `STATELESS`.
  late final pulumi.Output<String> type;
  /// A string token used when updating the rule group.
  late final pulumi.Output<String> updateToken;

  /// Creates a new [RuleGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RuleGroup]. {@macro pulumi_networkfirewall_rule_group_rule_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RuleGroup(
    String name, {
    RuleGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/ruleGroup:RuleGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    capacity = registerOutput<int>('capacity');
    description = registerOutput<String?>('description');
    encryptionConfiguration = registerOutput<RuleGroupEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleGroupEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    ruleGroup = registerOutput<RuleGroupRuleGroup>('ruleGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleGroupRuleGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rules = registerOutput<String?>('rules');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    updateToken = registerOutput<String>('updateToken');
  }

  /// Gets an existing [RuleGroup] resource's state with the given [name] and [id].
  static RuleGroup get(
    String name,
    pulumi.Input<String> id, {
    RuleGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RuleGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RuleGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/ruleGroup:RuleGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    capacity = registerOutput<int>('capacity');
    description = registerOutput<String?>('description');
    encryptionConfiguration = registerOutput<RuleGroupEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleGroupEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    ruleGroup = registerOutput<RuleGroupRuleGroup>('ruleGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleGroupRuleGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rules = registerOutput<String?>('rules');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    updateToken = registerOutput<String>('updateToken');
  }

  /// Creates a typed reference to an existing [RuleGroup] resource.
  RuleGroup.reference(String urn)
    : super(
        'aws:networkfirewall/ruleGroup:RuleGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    capacity = registerOutput<int>('capacity');
    description = registerOutput<String?>('description');
    encryptionConfiguration = registerOutput<RuleGroupEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleGroupEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    ruleGroup = registerOutput<RuleGroupRuleGroup>('ruleGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleGroupRuleGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rules = registerOutput<String?>('rules');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    updateToken = registerOutput<String>('updateToken');
  }
}
