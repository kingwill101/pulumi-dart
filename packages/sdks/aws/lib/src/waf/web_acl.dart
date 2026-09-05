import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_args.dart';
import 'web_acl_default_action.dart';
import 'web_acl_logging_configuration.dart';
import 'web_acl_rule.dart';
import 'web_acl_state.dart';

/// Provides a WAF Web ACL Resource
///
/// ## Example Usage
///
/// This example blocks requests coming from `192.0.7.0/24` and allows everything else.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ipset = new aws.waf.IpSet("ipset", {
///     ipSetDescriptors: [{
///         type: "IPV4",
///         value: "192.0.7.0/24",
///     }],
///     name: "tfIPSet",
/// });
/// const wafrule = new aws.waf.Rule("wafrule", {
///     predicates: [{
///         dataId: ipset.id,
///         negated: false,
///         type: "IPMatch",
///     }],
///     name: "tfWAFRule",
///     metricName: "tfWAFRule",
/// }, {
///     dependsOn: [ipset],
/// });
/// const wafAcl = new aws.waf.WebAcl("waf_acl", {
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
/// }, {
///     dependsOn: [
///         ipset,
///         wafrule,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ipset = aws.waf.IpSet("ipset",
///     ip_set_descriptors=[{
///         "type": "IPV4",
///         "value": "192.0.7.0/24",
///     }],
///     name="tfIPSet")
/// wafrule = aws.waf.Rule("wafrule",
///     predicates=[{
///         "data_id": ipset.id,
///         "negated": False,
///         "type": "IPMatch",
///     }],
///     name="tfWAFRule",
///     metric_name="tfWAFRule",
///     opts = pulumi.ResourceOptions(depends_on=[ipset]))
/// waf_acl = aws.waf.WebAcl("waf_acl",
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
///     metric_name="tfWebACL",
///     opts = pulumi.ResourceOptions(depends_on=[
///             ipset,
///             wafrule,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ipset = new Aws.Waf.IpSet("ipset", new()
///     {
///         IpSetDescriptors = new[]
///         {
///             new Aws.Waf.Inputs.IpSetIpSetDescriptorArgs
///             {
///                 Type = "IPV4",
///                 Value = "192.0.7.0/24",
///             },
///         },
///         Name = "tfIPSet",
///     });
///
///     var wafrule = new Aws.Waf.Rule("wafrule", new()
///     {
///         Predicates = new[]
///         {
///             new Aws.Waf.Inputs.RulePredicateArgs
///             {
///                 DataId = ipset.Id,
///                 Negated = false,
///                 Type = "IPMatch",
///             },
///         },
///         Name = "tfWAFRule",
///         MetricName = "tfWAFRule",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             ipset,
///         },
///     });
///
///     var wafAcl = new Aws.Waf.WebAcl("waf_acl", new()
///     {
///         DefaultAction = new Aws.Waf.Inputs.WebAclDefaultActionArgs
///         {
///             Type = "ALLOW",
///         },
///         Rules = new[]
///         {
///             new Aws.Waf.Inputs.WebAclRuleArgs
///             {
///                 Action = new Aws.Waf.Inputs.WebAclRuleActionArgs
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
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             ipset,
///             wafrule,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/waf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ipset, err := waf.NewIpSet(ctx, "ipset", &waf.IpSetArgs{
/// 			IpSetDescriptors: waf.IpSetIpSetDescriptorArray{
/// 				&waf.IpSetIpSetDescriptorArgs{
/// 					Type:  pulumi.String("IPV4"),
/// 					Value: pulumi.String("192.0.7.0/24"),
/// 				},
/// 			},
/// 			Name: pulumi.String("tfIPSet"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wafrule, err := waf.NewRule(ctx, "wafrule", &waf.RuleArgs{
/// 			Predicates: waf.RulePredicateArray{
/// 				&waf.RulePredicateArgs{
/// 					DataId:  ipset.ID().ToIDOutput().ToStringOutput(),
/// 					Negated: pulumi.Bool(false),
/// 					Type:    pulumi.String("IPMatch"),
/// 				},
/// 			},
/// 			Name:       pulumi.String("tfWAFRule"),
/// 			MetricName: pulumi.String("tfWAFRule"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			ipset,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = waf.NewWebAcl(ctx, "waf_acl", &waf.WebAclArgs{
/// 			DefaultAction: &waf.WebAclDefaultActionArgs{
/// 				Type: pulumi.String("ALLOW"),
/// 			},
/// 			Rules: waf.WebAclRuleArray{
/// 				&waf.WebAclRuleArgs{
/// 					Action: &waf.WebAclRuleActionArgs{
/// 						Type: pulumi.String("BLOCK"),
/// 					},
/// 					Priority: pulumi.Int(1),
/// 					RuleId:   wafrule.ID().ToIDOutput().ToStringOutput(),
/// 					Type:     pulumi.String("REGULAR"),
/// 				},
/// 			},
/// 			Name:       pulumi.String("tfWebACL"),
/// 			MetricName: pulumi.String("tfWebACL"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			ipset,
/// 			wafrule,
/// 		}))
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
/// resource "aws_waf_ipset" "ipset" {
///   ip_set_descriptors {
///     type  = "IPV4"
///     value = "192.0.7.0/24"
///   }
///   name = "tfIPSet"
/// }
/// resource "aws_waf_rule" "wafrule" {
///   depends_on = [aws_waf_ipset.ipset]
///   predicates {
///     data_id = aws_waf_ipset.ipset.id
///     negated = false
///     type    = "IPMatch"
///   }
///   name        = "tfWAFRule"
///   metric_name = "tfWAFRule"
/// }
/// resource "aws_waf_webacl" "waf_acl" {
///   depends_on = [aws_waf_ipset.ipset, aws_waf_rule.wafrule]
///   default_action = {
///     type = "ALLOW"
///   }
///   rules {
///     action = {
///       type = "BLOCK"
///     }
///     priority = 1
///     rule_id  = aws_waf_rule.wafrule.id
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
/// import com.pulumi.aws.waf.IpSet;
/// import com.pulumi.aws.waf.IpSetArgs;
/// import com.pulumi.aws.waf.inputs.IpSetIpSetDescriptorArgs;
/// import com.pulumi.aws.waf.Rule;
/// import com.pulumi.aws.waf.RuleArgs;
/// import com.pulumi.aws.waf.inputs.RulePredicateArgs;
/// import com.pulumi.aws.waf.WebAcl;
/// import com.pulumi.aws.waf.WebAclArgs;
/// import com.pulumi.aws.waf.inputs.WebAclDefaultActionArgs;
/// import com.pulumi.aws.waf.inputs.WebAclRuleArgs;
/// import com.pulumi.aws.waf.inputs.WebAclRuleActionArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(ipset)
///                 .build());
///
///         var wafAcl = new WebAcl("wafAcl", WebAclArgs.builder()
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
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     ipset,
///                     wafrule)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ipset:
///     type: aws:waf:IpSet
///     properties:
///       ipSetDescriptors:
///         - type: IPV4
///           value: 192.0.7.0/24
///       name: tfIPSet
///   wafrule:
///     type: aws:waf:Rule
///     properties:
///       predicates:
///         - dataId: ${ipset.id}
///           negated: false
///           type: IPMatch
///       name: tfWAFRule
///       metricName: tfWAFRule
///     options:
///       dependsOn:
///         - ${ipset}
///   wafAcl:
///     type: aws:waf:WebAcl
///     name: waf_acl
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
///     options:
///       dependsOn:
///         - ${ipset}
///         - ${wafrule}
/// ```
///
///
/// ### Logging
///
/// &gt; *NOTE:* The Kinesis Firehose Delivery Stream name must begin with `aws-waf-logs-` and be located in `us-east-1` region. See the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/logging.html) for more information about enabling WAF logging.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.waf.WebAcl("example", {loggingConfiguration: {
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
/// example = aws.waf.WebAcl("example", logging_configuration={
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
///     var example = new Aws.Waf.WebAcl("example", new()
///     {
///         LoggingConfiguration = new Aws.Waf.Inputs.WebAclLoggingConfigurationArgs
///         {
///             RedactedFields = new Aws.Waf.Inputs.WebAclLoggingConfigurationRedactedFieldsArgs
///             {
///                 FieldToMatches = new[]
///                 {
///                     new Aws.Waf.Inputs.WebAclLoggingConfigurationRedactedFieldsFieldToMatchArgs
///                     {
///                         Type = "URI",
///                     },
///                     new Aws.Waf.Inputs.WebAclLoggingConfigurationRedactedFieldsFieldToMatchArgs
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/waf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := waf.NewWebAcl(ctx, "example", &waf.WebAclArgs{
/// 			LoggingConfiguration: &waf.WebAclLoggingConfigurationArgs{
/// 				RedactedFields: &waf.WebAclLoggingConfigurationRedactedFieldsArgs{
/// 					FieldToMatches: waf.WebAclLoggingConfigurationRedactedFieldsFieldToMatchArray{
/// 						&waf.WebAclLoggingConfigurationRedactedFieldsFieldToMatchArgs{
/// 							Type: pulumi.String("URI"),
/// 						},
/// 						&waf.WebAclLoggingConfigurationRedactedFieldsFieldToMatchArgs{
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
/// resource "aws_waf_webacl" "example" {
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
/// import com.pulumi.aws.waf.WebAcl;
/// import com.pulumi.aws.waf.WebAclArgs;
/// import com.pulumi.aws.waf.inputs.WebAclLoggingConfigurationArgs;
/// import com.pulumi.aws.waf.inputs.WebAclLoggingConfigurationRedactedFieldsArgs;
/// import com.pulumi.aws.waf.inputs.WebAclLoggingConfigurationRedactedFieldsFieldToMatchArgs;
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
///     type: aws:waf:WebAcl
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
/// Using `pulumi import`, import WAF Web ACL using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:waf/webAcl:WebAcl main 0c8e583e-18f3-4c13-9e2a-67c4805d2f94
/// ```
class WebAcl extends pulumi.CustomResource {
  /// The ARN of the WAF WebACL.
  late final pulumi.Output<String> arn;
  /// Configuration block with action that you want AWS WAF to take when a request doesn't match the criteria in any of the rules that are associated with the web ACL. Detailed below.
  late final pulumi.Output<WebAclDefaultAction> defaultAction;
  /// Configuration block to enable WAF logging. Detailed below.
  late final pulumi.Output<WebAclLoggingConfiguration?> loggingConfiguration;
  /// The name or description for the Amazon CloudWatch metric of this web ACL.
  late final pulumi.Output<String> metricName;
  /// The name or description of the web ACL.
  late final pulumi.Output<String> name;
  /// Configuration blocks containing rules to associate with the web ACL and the settings for each rule. Detailed below.
  late final pulumi.Output<List<WebAclRule>?> rules;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [WebAcl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAcl]. {@macro pulumi_waf_web_acl_web_acl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAcl(
    String name, {
    WebAclArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:waf/webAcl:WebAcl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    defaultAction = registerOutput<WebAclDefaultAction>('defaultAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclDefaultAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loggingConfiguration = registerOutput<WebAclLoggingConfiguration?>('loggingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclLoggingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
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
          'aws:waf/webAcl:WebAcl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    defaultAction = registerOutput<WebAclDefaultAction>('defaultAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclDefaultAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loggingConfiguration = registerOutput<WebAclLoggingConfiguration?>('loggingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclLoggingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    rules = registerOutput<List<WebAclRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebAclRule>(guardedValue, (value) => WebAclRule.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [WebAcl] resource.
  WebAcl.reference(String urn)
    : super(
        'aws:waf/webAcl:WebAcl',
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
    rules = registerOutput<List<WebAclRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebAclRule>(guardedValue, (value) => WebAclRule.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
