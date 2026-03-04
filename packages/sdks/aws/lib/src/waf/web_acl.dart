import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_args.dart';
import 'web_acl_default_action.dart';
import 'web_acl_logging_configuration.dart';
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
///     name: "tfIPSet",
///     ipSetDescriptors: [{
///         type: "IPV4",
///         value: "192.0.7.0/24",
///     }],
/// });
/// const wafrule = new aws.waf.Rule("wafrule", {
///     name: "tfWAFRule",
///     metricName: "tfWAFRule",
///     predicates: [{
///         dataId: ipset.id,
///         negated: false,
///         type: "IPMatch",
///     }],
/// }, {
///     dependsOn: [ipset],
/// });
/// const wafAcl = new aws.waf.WebAcl("waf_acl", {
///     name: "tfWebACL",
///     metricName: "tfWebACL",
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
///     name="tfIPSet",
///     ip_set_descriptors=[{
///         "type": "IPV4",
///         "value": "192.0.7.0/24",
///     }])
/// wafrule = aws.waf.Rule("wafrule",
///     name="tfWAFRule",
///     metric_name="tfWAFRule",
///     predicates=[{
///         "data_id": ipset.id,
///         "negated": False,
///         "type": "IPMatch",
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[ipset]))
/// waf_acl = aws.waf.WebAcl("waf_acl",
///     name="tfWebACL",
///     metric_name="tfWebACL",
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
///         Name = "tfIPSet",
///         IpSetDescriptors = new[]
///         {
///             new Aws.Waf.Inputs.IpSetIpSetDescriptorArgs
///             {
///                 Type = "IPV4",
///                 Value = "192.0.7.0/24",
///             },
///         },
///     });
///
///     var wafrule = new Aws.Waf.Rule("wafrule", new()
///     {
///         Name = "tfWAFRule",
///         MetricName = "tfWAFRule",
///         Predicates = new[]
///         {
///             new Aws.Waf.Inputs.RulePredicateArgs
///             {
///                 DataId = ipset.Id,
///                 Negated = false,
///                 Type = "IPMatch",
///             },
///         },
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
///         Name = "tfWebACL",
///         MetricName = "tfWebACL",
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
/// 			Name: pulumi.String("tfIPSet"),
/// 			IpSetDescriptors: waf.IpSetIpSetDescriptorArray{
/// 				&waf.IpSetIpSetDescriptorArgs{
/// 					Type:  pulumi.String("IPV4"),
/// 					Value: pulumi.String("192.0.7.0/24"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wafrule, err := waf.NewRule(ctx, "wafrule", &waf.RuleArgs{
/// 			Name:       pulumi.String("tfWAFRule"),
/// 			MetricName: pulumi.String("tfWAFRule"),
/// 			Predicates: waf.RulePredicateArray{
/// 				&waf.RulePredicateArgs{
/// 					DataId:  ipset.ID(),
/// 					Negated: pulumi.Bool(false),
/// 					Type:    pulumi.String("IPMatch"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			ipset,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = waf.NewWebAcl(ctx, "waf_acl", &waf.WebAclArgs{
/// 			Name:       pulumi.String("tfWebACL"),
/// 			MetricName: pulumi.String("tfWebACL"),
/// 			DefaultAction: &waf.WebAclDefaultActionArgs{
/// 				Type: pulumi.String("ALLOW"),
/// 			},
/// 			Rules: waf.WebAclRuleArray{
/// 				&waf.WebAclRuleArgs{
/// 					Action: &waf.WebAclRuleActionArgs{
/// 						Type: pulumi.String("BLOCK"),
/// 					},
/// 					Priority: pulumi.Int(1),
/// 					RuleId:   wafrule.ID(),
/// 					Type:     pulumi.String("REGULAR"),
/// 				},
/// 			},
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
///         var ipset = new IpSet("ipset", IpSetArgs.builder()
///             .name("tfIPSet")
///             .ipSetDescriptors(IpSetIpSetDescriptorArgs.builder()
///                 .type("IPV4")
///                 .value("192.0.7.0/24")
///                 .build())
///             .build());
///
///         var wafrule = new Rule("wafrule", RuleArgs.builder()
///             .name("tfWAFRule")
///             .metricName("tfWAFRule")
///             .predicates(RulePredicateArgs.builder()
///                 .dataId(ipset.id())
///                 .negated(false)
///                 .type("IPMatch")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(ipset)
///                 .build());
///
///         var wafAcl = new WebAcl("wafAcl", WebAclArgs.builder()
///             .name("tfWebACL")
///             .metricName("tfWebACL")
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
///       name: tfIPSet
///       ipSetDescriptors:
///         - type: IPV4
///           value: 192.0.7.0/24
///   wafrule:
///     type: aws:waf:Rule
///     properties:
///       name: tfWAFRule
///       metricName: tfWAFRule
///       predicates:
///         - dataId: ${ipset.id}
///           negated: false
///           type: IPMatch
///     options:
///       dependsOn:
///         - ${ipset}
///   wafAcl:
///     type: aws:waf:WebAcl
///     name: waf_acl
///     properties:
///       name: tfWebACL
///       metricName: tfWebACL
///       defaultAction:
///         type: ALLOW
///       rules:
///         - action:
///             type: BLOCK
///           priority: 1
///           ruleId: ${wafrule.id}
///           type: REGULAR
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
///     logDestination: exampleAwsKinesisFirehoseDeliveryStream.arn,
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
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.waf.WebAcl("example", logging_configuration={
///     "log_destination": example_aws_kinesis_firehose_delivery_stream["arn"],
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
///             LogDestination = exampleAwsKinesisFirehoseDeliveryStream.Arn,
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
/// 				LogDestination: pulumi.Any(exampleAwsKinesisFirehoseDeliveryStream.Arn),
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
/// import com.pulumi.aws.waf.WebAcl;
/// import com.pulumi.aws.waf.WebAclArgs;
/// import com.pulumi.aws.waf.inputs.WebAclLoggingConfigurationArgs;
/// import com.pulumi.aws.waf.inputs.WebAclLoggingConfigurationRedactedFieldsArgs;
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
///         var example = new WebAcl("example", WebAclArgs.builder()
///             .loggingConfiguration(WebAclLoggingConfigurationArgs.builder()
///                 .logDestination(exampleAwsKinesisFirehoseDeliveryStream.arn())
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
///         logDestination: ${exampleAwsKinesisFirehoseDeliveryStream.arn}
///         redactedFields:
///           fieldToMatches:
///             - type: URI
///             - data: referer
///               type: HEADER
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
  late final pulumi.Output<List<Map<String, dynamic>>?> rules;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [WebAcl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAcl]. {@macro pulumi_waf_web_acl_web_acl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAcl(String name, {WebAclArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:waf/webAcl:WebAcl',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    arn = registerOutput<String>('arn');
    defaultAction = registerOutput<WebAclDefaultAction>('defaultAction');
    loggingConfiguration = registerOutput<WebAclLoggingConfiguration?>(
      'loggingConfiguration',
    );
    metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [WebAcl] resource's state with the given [name] and [id].
  static WebAcl get(
    String name,
    pulumi.Input<String> id, {
    WebAclState? state,
  }) {
    return WebAcl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    defaultAction = registerOutput<WebAclDefaultAction>('defaultAction');
    loggingConfiguration = registerOutput<WebAclLoggingConfiguration?>(
      'loggingConfiguration',
    );
    metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
