import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_args.dart';
import 'rule_predicate.dart';

/// Provides a WAF Rule Resource
///
/// ## Example Usage
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
/// 		_, err = waf.NewRule(ctx, "wafrule", &waf.RuleArgs{
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
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF rules using the id. For example:
///
/// ```sh
/// $ pulumi import aws:waf/rule:Rule example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class Rule extends pulumi.CustomResource {
  /// The ARN of the WAF rule.
  late final pulumi.Output<String> arn;

  /// The name or description for the Amazon CloudWatch metric of this rule. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace.
  late final pulumi.Output<String> metricName;

  /// The name or description of the rule.
  late final pulumi.Output<String> name;

  /// The objects to include in a rule (documented below).
  late final pulumi.Output<List<RulePredicate>?> predicates;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Rule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rule]. {@macro pulumi_waf_rule_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rule(
    String name, {
    RuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:waf/rule:Rule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    this.predicates = registerOutput<List<RulePredicate>?>('predicates');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
