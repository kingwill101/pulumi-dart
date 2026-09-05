import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_args.dart';
import 'web_acl_default_action.dart';
import 'web_acl_logging_configuration.dart';
import 'web_acl_rule.dart';
import 'web_acl_state.dart';

/// Provides a WAF Regional Web ACL Resource for use with Application Load Balancer.
///
/// ## Example Usage
///
/// ### Regular Rule
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ipset = new aws.wafregional.IpSet("ipset", {
///     ipSetDescriptors: [{
///         type: "IPV4",
///         value: "192.0.7.0/24",
///     }],
///     name: "tfIPSet",
/// });
/// const wafrule = new aws.wafregional.Rule("wafrule", {
///     predicates: [{
///         dataId: ipset.id,
///         negated: false,
///         type: "IPMatch",
///     }],
///     name: "tfWAFRule",
///     metricName: "tfWAFRule",
/// });
/// const wafacl = new aws.wafregional.WebAcl("wafacl", {
///     defaultAction: {
///         type: "ALLOW",
///     },
///     rules: [{
///         action: {
///             type: "BLOCK",
///         },
///         priority: 1,
///         ruleId: wafrule.id,
///         type: "REGULAR",
///     }],
///     name: "tfWebACL",
///     metricName: "tfWebACL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ipset = aws.wafregional.IpSet("ipset",
///     ip_set_descriptors=[{
///         "type": "IPV4",
///         "value": "192.0.7.0/24",
///     }],
///     name="tfIPSet")
/// wafrule = aws.wafregional.Rule("wafrule",
///     predicates=[{
///         "data_id": ipset.id,
///         "negated": False,
///         "type": "IPMatch",
///     }],
///     name="tfWAFRule",
///     metric_name="tfWAFRule")
/// wafacl = aws.wafregional.WebAcl("wafacl",
///     default_action={
///         "type": "ALLOW",
///     },
///     rules=[{
///         "action": {
///             "type": "BLOCK",
///         },
///         "priority": 1,
///         "rule_id": wafrule.id,
///         "type": "REGULAR",
///     }],
///     name="tfWebACL",
///     metric_name="tfWebACL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ipset = new Aws.WafRegional.IpSet("ipset", new()
///     {
///         IpSetDescriptors = new[]
///         {
///             new Aws.WafRegional.Inputs.IpSetIpSetDescriptorArgs
///             {
///                 Type = "IPV4",
///                 Value = "192.0.7.0/24",
///             },
///         },
///         Name = "tfIPSet",
///     });
///
///     var wafrule = new Aws.WafRegional.Rule("wafrule", new()
///     {
///         Predicates = new[]
///         {
///             new Aws.WafRegional.Inputs.RulePredicateArgs
///             {
///                 DataId = ipset.Id,
///                 Negated = false,
///                 Type = "IPMatch",
///             },
///         },
///         Name = "tfWAFRule",
///         MetricName = "tfWAFRule",
///     });
///
///     var wafacl = new Aws.WafRegional.WebAcl("wafacl", new()
///     {
///         DefaultAction = new Aws.WafRegional.Inputs.WebAclDefaultActionArgs
///         {
///             Type = "ALLOW",
///         },
///         Rules = new[]
///         {
///             new Aws.WafRegional.Inputs.WebAclRuleArgs
///             {
///                 Action = new Aws.WafRegional.Inputs.WebAclRuleActionArgs
///                 {
///                     Type = "BLOCK",
///                 },
///                 Priority = 1,
///                 RuleId = wafrule.Id,
///                 Type = "REGULAR",
///             },
///         },
///         Name = "tfWebACL",
///         MetricName = "tfWebACL",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ipset, err := wafregional.NewIpSet(ctx, "ipset", &wafregional.IpSetArgs{
/// 			IpSetDescriptors: wafregional.IpSetIpSetDescriptorArray{
/// 				&wafregional.IpSetIpSetDescriptorArgs{
/// 					Type:  pulumi.String("IPV4"),
/// 					Value: pulumi.String("192.0.7.0/24"),
/// 				},
/// 			},
/// 			Name: pulumi.String("tfIPSet"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wafrule, err := wafregional.NewRule(ctx, "wafrule", &wafregional.RuleArgs{
/// 			Predicates: wafregional.RulePredicateArray{
/// 				&wafregional.RulePredicateArgs{
/// 					DataId:  ipset.ID().ToIDOutput().ToStringOutput(),
/// 					Negated: pulumi.Bool(false),
/// 					Type:    pulumi.String("IPMatch"),
/// 				},
/// 			},
/// 			Name:       pulumi.String("tfWAFRule"),
/// 			MetricName: pulumi.String("tfWAFRule"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = wafregional.NewWebAcl(ctx, "wafacl", &wafregional.WebAclArgs{
/// 			DefaultAction: &wafregional.WebAclDefaultActionArgs{
/// 				Type: pulumi.String("ALLOW"),
/// 			},
/// 			Rules: wafregional.WebAclRuleArray{
/// 				&wafregional.WebAclRuleArgs{
/// 					Action: &wafregional.WebAclRuleActionArgs{
/// 						Type: pulumi.String("BLOCK"),
/// 					},
/// 					Priority: pulumi.Int(1),
/// 					RuleId:   wafrule.ID().ToIDOutput().ToStringOutput(),
/// 					Type:     pulumi.String("REGULAR"),
/// 				},
/// 			},
/// 			Name:       pulumi.String("tfWebACL"),
/// 			MetricName: pulumi.String("tfWebACL"),
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
/// resource "aws_wafregional_ipset" "ipset" {
///   ip_set_descriptors {
///     type  = "IPV4"
///     value = "192.0.7.0/24"
///   }
///   name = "tfIPSet"
/// }
/// resource "aws_wafregional_rule" "wafrule" {
///   predicates {
///     data_id = aws_wafregional_ipset.ipset.id
///     negated = false
///     type    = "IPMatch"
///   }
///   name        = "tfWAFRule"
///   metric_name = "tfWAFRule"
/// }
/// resource "aws_wafregional_webacl" "wafacl" {
///   default_action = {
///     type = "ALLOW"
///   }
///   rules {
///     action = {
///       type = "BLOCK"
///     }
///     priority = 1
///     rule_id  = aws_wafregional_rule.wafrule.id
///     type     = "REGULAR"
///   }
///   name        = "tfWebACL"
///   metric_name = "tfWebACL"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafregional.IpSet;
/// import com.pulumi.aws.wafregional.IpSetArgs;
/// import com.pulumi.aws.wafregional.inputs.IpSetIpSetDescriptorArgs;
/// import com.pulumi.aws.wafregional.Rule;
/// import com.pulumi.aws.wafregional.RuleArgs;
/// import com.pulumi.aws.wafregional.inputs.RulePredicateArgs;
/// import com.pulumi.aws.wafregional.WebAcl;
/// import com.pulumi.aws.wafregional.WebAclArgs;
/// import com.pulumi.aws.wafregional.inputs.WebAclDefaultActionArgs;
/// import com.pulumi.aws.wafregional.inputs.WebAclRuleArgs;
/// import com.pulumi.aws.wafregional.inputs.WebAclRuleActionArgs;
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
///         var ipset = new IpSet("ipset", IpSetArgs.builder()
///             .ipSetDescriptors(IpSetIpSetDescriptorArgs.builder()
///                 .type("IPV4")
///                 .value("192.0.7.0/24")
///                 .build())
///             .name("tfIPSet")
///             .build());
///
///         var wafrule = new Rule("wafrule", RuleArgs.builder()
///             .predicates(RulePredicateArgs.builder()
///                 .dataId(ipset.id())
///                 .negated(false)
///                 .type("IPMatch")
///                 .build())
///             .name("tfWAFRule")
///             .metricName("tfWAFRule")
///             .build());
///
///         var wafacl = new WebAcl("wafacl", WebAclArgs.builder()
///             .defaultAction(WebAclDefaultActionArgs.builder()
///                 .type("ALLOW")
///                 .build())
///             .rules(WebAclRuleArgs.builder()
///                 .action(WebAclRuleActionArgs.builder()
///                     .type("BLOCK")
///                     .build())
///                 .priority(1)
///                 .ruleId(wafrule.id())
///                 .type("REGULAR")
///                 .build())
///             .name("tfWebACL")
///             .metricName("tfWebACL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ipset:
///     type: aws:wafregional:IpSet
///     properties:
///       ipSetDescriptors:
///         - type: IPV4
///           value: 192.0.7.0/24
///       name: tfIPSet
///   wafrule:
///     type: aws:wafregional:Rule
///     properties:
///       predicates:
///         - dataId: ${ipset.id}
///           negated: false
///           type: IPMatch
///       name: tfWAFRule
///       metricName: tfWAFRule
///   wafacl:
///     type: aws:wafregional:WebAcl
///     properties:
///       defaultAction:
///         type: ALLOW
///       rules:
///         - action:
///             type: BLOCK
///           priority: 1
///           ruleId: ${wafrule.id}
///           type: REGULAR
///       name: tfWebACL
///       metricName: tfWebACL
/// ```
///
///
/// ### Group Rule
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafregional.WebAcl("example", {
///     defaultAction: {
///         type: "ALLOW",
///     },
///     rules: [{
///         overrideAction: {
///             type: "NONE",
///         },
///         priority: 1,
///         ruleId: exampleAwsWafregionalRuleGroup.id,
///         type: "GROUP",
///     }],
///     name: "example",
///     metricName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafregional.WebAcl("example",
///     default_action={
///         "type": "ALLOW",
///     },
///     rules=[{
///         "override_action": {
///             "type": "NONE",
///         },
///         "priority": 1,
///         "rule_id": example_aws_wafregional_rule_group["id"],
///         "type": "GROUP",
///     }],
///     name="example",
///     metric_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WafRegional.WebAcl("example", new()
///     {
///         DefaultAction = new Aws.WafRegional.Inputs.WebAclDefaultActionArgs
///         {
///             Type = "ALLOW",
///         },
///         Rules = new[]
///         {
///             new Aws.WafRegional.Inputs.WebAclRuleArgs
///             {
///                 OverrideAction = new Aws.WafRegional.Inputs.WebAclRuleOverrideActionArgs
///                 {
///                     Type = "NONE",
///                 },
///                 Priority = 1,
///                 RuleId = exampleAwsWafregionalRuleGroup.Id,
///                 Type = "GROUP",
///             },
///         },
///         Name = "example",
///         MetricName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafregional.NewWebAcl(ctx, "example", &wafregional.WebAclArgs{
/// 			DefaultAction: &wafregional.WebAclDefaultActionArgs{
/// 				Type: pulumi.String("ALLOW"),
/// 			},
/// 			Rules: wafregional.WebAclRuleArray{
/// 				&wafregional.WebAclRuleArgs{
/// 					OverrideAction: &wafregional.WebAclRuleOverrideActionArgs{
/// 						Type: pulumi.String("NONE"),
/// 					},
/// 					Priority: pulumi.Int(1),
/// 					RuleId:   pulumi.Any(exampleAwsWafregionalRuleGroup.Id),
/// 					Type:     pulumi.String("GROUP"),
/// 				},
/// 			},
/// 			Name:       pulumi.String("example"),
/// 			MetricName: pulumi.String("example"),
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
/// resource "aws_wafregional_webacl" "example" {
///   default_action = {
///     type = "ALLOW"
///   }
///   rules {
///     override_action = {
///       type = "NONE"
///     }
///     priority = 1
///     rule_id  = exampleAwsWafregionalRuleGroup.id
///     type     = "GROUP"
///   }
///   name        = "example"
///   metric_name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafregional.WebAcl;
/// import com.pulumi.aws.wafregional.WebAclArgs;
/// import com.pulumi.aws.wafregional.inputs.WebAclDefaultActionArgs;
/// import com.pulumi.aws.wafregional.inputs.WebAclRuleArgs;
/// import com.pulumi.aws.wafregional.inputs.WebAclRuleOverrideActionArgs;
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
///         var example = new WebAcl("example", WebAclArgs.builder()
///             .defaultAction(WebAclDefaultActionArgs.builder()
///                 .type("ALLOW")
///                 .build())
///             .rules(WebAclRuleArgs.builder()
///                 .overrideAction(WebAclRuleOverrideActionArgs.builder()
///                     .type("NONE")
///                     .build())
///                 .priority(1)
///                 .ruleId(exampleAwsWafregionalRuleGroup.id())
///                 .type("GROUP")
///                 .build())
///             .name("example")
///             .metricName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:wafregional:WebAcl
///     properties:
///       defaultAction:
///         type: ALLOW
///       rules:
///         - overrideAction:
///             type: NONE
///           priority: 1
///           ruleId: ${exampleAwsWafregionalRuleGroup.id}
///           type: GROUP
///       name: example
///       metricName: example
/// ```
///
///
/// ### Logging
///
/// &gt; *NOTE:* The Kinesis Firehose Delivery Stream name must begin with `aws-waf-logs-`. See the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/logging.html) for more information about enabling WAF logging.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafregional.WebAcl("example", {loggingConfiguration: {
///     redactedFields: {
///         fieldToMatches: [
///             {
///                 type: "URI",
///             },
///             {
///                 data: "referer",
///                 type: "HEADER",
///             },
///         ],
///     },
///     logDestination: exampleAwsKinesisFirehoseDeliveryStream.arn,
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafregional.WebAcl("example", logging_configuration={
///     "redacted_fields": {
///         "field_to_matches": [
///             {
///                 "type": "URI",
///             },
///             {
///                 "data": "referer",
///                 "type": "HEADER",
///             },
///         ],
///     },
///     "log_destination": example_aws_kinesis_firehose_delivery_stream["arn"],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WafRegional.WebAcl("example", new()
///     {
///         LoggingConfiguration = new Aws.WafRegional.Inputs.WebAclLoggingConfigurationArgs
///         {
///             RedactedFields = new Aws.WafRegional.Inputs.WebAclLoggingConfigurationRedactedFieldsArgs
///             {
///                 FieldToMatches = new[]
///                 {
///                     new Aws.WafRegional.Inputs.WebAclLoggingConfigurationRedactedFieldsFieldToMatchArgs
///                     {
///                         Type = "URI",
///                     },
///                     new Aws.WafRegional.Inputs.WebAclLoggingConfigurationRedactedFieldsFieldToMatchArgs
///                     {
///                         Data = "referer",
///                         Type = "HEADER",
///                     },
///                 },
///             },
///             LogDestination = exampleAwsKinesisFirehoseDeliveryStream.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafregional.NewWebAcl(ctx, "example", &wafregional.WebAclArgs{
/// 			LoggingConfiguration: &wafregional.WebAclLoggingConfigurationArgs{
/// 				RedactedFields: &wafregional.WebAclLoggingConfigurationRedactedFieldsArgs{
/// 					FieldToMatches: wafregional.WebAclLoggingConfigurationRedactedFieldsFieldToMatchArray{
/// 						&wafregional.WebAclLoggingConfigurationRedactedFieldsFieldToMatchArgs{
/// 							Type: pulumi.String("URI"),
/// 						},
/// 						&wafregional.WebAclLoggingConfigurationRedactedFieldsFieldToMatchArgs{
/// 							Data: pulumi.String("referer"),
/// 							Type: pulumi.String("HEADER"),
/// 						},
/// 					},
/// 				},
/// 				LogDestination: pulumi.Any(exampleAwsKinesisFirehoseDeliveryStream.Arn),
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
/// resource "aws_wafregional_webacl" "example" {
///   logging_configuration = {
///     redacted_fields = {
///       field_to_matches = [{
///         "type" = "URI"
///         }, {
///         "data" = "referer"
///         "type" = "HEADER"
///       }]
///     }
///     log_destination = exampleAwsKinesisFirehoseDeliveryStream.arn
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafregional.WebAcl;
/// import com.pulumi.aws.wafregional.WebAclArgs;
/// import com.pulumi.aws.wafregional.inputs.WebAclLoggingConfigurationArgs;
/// import com.pulumi.aws.wafregional.inputs.WebAclLoggingConfigurationRedactedFieldsArgs;
/// import com.pulumi.aws.wafregional.inputs.WebAclLoggingConfigurationRedactedFieldsFieldToMatchArgs;
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
///         var example = new WebAcl("example", WebAclArgs.builder()
///             .loggingConfiguration(WebAclLoggingConfigurationArgs.builder()
///                 .redactedFields(WebAclLoggingConfigurationRedactedFieldsArgs.builder()
///                     .fieldToMatches(
///                         WebAclLoggingConfigurationRedactedFieldsFieldToMatchArgs.builder()
///                             .type("URI")
///                             .build(),
///                         WebAclLoggingConfigurationRedactedFieldsFieldToMatchArgs.builder()
///                             .data("referer")
///                             .type("HEADER")
///                             .build())
///                     .build())
///                 .logDestination(exampleAwsKinesisFirehoseDeliveryStream.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:wafregional:WebAcl
///     properties:
///       loggingConfiguration:
///         redactedFields:
///           fieldToMatches:
///             - type: URI
///             - data: referer
///               type: HEADER
///         logDestination: ${exampleAwsKinesisFirehoseDeliveryStream.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regional Web ACL using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/webAcl:WebAcl wafacl a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class WebAcl extends pulumi.CustomResource {
  /// ARN of the WAF Regional WebACL.
  late final pulumi.Output<String> arn;
  /// The action that you want AWS WAF Regional to take when a request doesn't match the criteria in any of the rules that are associated with the web ACL.
  late final pulumi.Output<WebAclDefaultAction> defaultAction;
  /// Configuration block to enable WAF logging. Detailed below.
  late final pulumi.Output<WebAclLoggingConfiguration?> loggingConfiguration;
  /// The name or description for the Amazon CloudWatch metric of this web ACL.
  late final pulumi.Output<String> metricName;
  /// The name or description of the web ACL.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Set of configuration blocks containing rules for the web ACL. Detailed below.
  late final pulumi.Output<List<WebAclRule>?> rules;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [WebAcl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAcl]. {@macro pulumi_wafregional_web_acl_web_acl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAcl(
    String name, {
    WebAclArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/webAcl:WebAcl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    defaultAction = registerOutput<WebAclDefaultAction>('defaultAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclDefaultAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loggingConfiguration = registerOutput<WebAclLoggingConfiguration?>('loggingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclLoggingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    rules = registerOutput<List<WebAclRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebAclRule>(guardedValue, (value) => WebAclRule.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [WebAcl] resource's state with the given [name] and [id].
  static WebAcl get(
    String name,
    pulumi.Input<String> id, {
    WebAclState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WebAcl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WebAcl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/webAcl:WebAcl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    defaultAction = registerOutput<WebAclDefaultAction>('defaultAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclDefaultAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loggingConfiguration = registerOutput<WebAclLoggingConfiguration?>('loggingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclLoggingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    rules = registerOutput<List<WebAclRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebAclRule>(guardedValue, (value) => WebAclRule.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [WebAcl] resource.
  WebAcl.reference(String urn)
    : super(
        'aws:wafregional/webAcl:WebAcl',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    defaultAction = registerOutput<WebAclDefaultAction>('defaultAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclDefaultAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loggingConfiguration = registerOutput<WebAclLoggingConfiguration?>('loggingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclLoggingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    rules = registerOutput<List<WebAclRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebAclRule>(guardedValue, (value) => WebAclRule.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
