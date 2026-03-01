import 'package:pulumi/pulumi.dart' as pulumi;
import 'rate_based_rule_args.dart';
import 'rate_based_rule_predicate.dart';

/// Provides a WAF Rate Based Rule Resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ipset = new aws.wafregional.IpSet("ipset", {
///     name: "tfIPSet",
///     ipSetDescriptors: [{
///         type: "IPV4",
///         value: "192.0.7.0/24",
///     }],
/// });
/// const wafrule = new aws.wafregional.RateBasedRule("wafrule", {
///     name: "tfWAFRule",
///     metricName: "tfWAFRule",
///     rateKey: "IP",
///     rateLimit: 100,
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
/// ipset = aws.wafregional.IpSet("ipset",
///     name="tfIPSet",
///     ip_set_descriptors=[{
///         "type": "IPV4",
///         "value": "192.0.7.0/24",
///     }])
/// wafrule = aws.wafregional.RateBasedRule("wafrule",
///     name="tfWAFRule",
///     metric_name="tfWAFRule",
///     rate_key="IP",
///     rate_limit=100,
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
///     var ipset = new Aws.WafRegional.IpSet("ipset", new()
///     {
///         Name = "tfIPSet",
///         IpSetDescriptors = new[]
///         {
///             new Aws.WafRegional.Inputs.IpSetIpSetDescriptorArgs
///             {
///                 Type = "IPV4",
///                 Value = "192.0.7.0/24",
///             },
///         },
///     });
///
///     var wafrule = new Aws.WafRegional.RateBasedRule("wafrule", new()
///     {
///         Name = "tfWAFRule",
///         MetricName = "tfWAFRule",
///         RateKey = "IP",
///         RateLimit = 100,
///         Predicates = new[]
///         {
///             new Aws.WafRegional.Inputs.RateBasedRulePredicateArgs
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ipset, err := wafregional.NewIpSet(ctx, "ipset", &wafregional.IpSetArgs{
/// 			Name: pulumi.String("tfIPSet"),
/// 			IpSetDescriptors: wafregional.IpSetIpSetDescriptorArray{
/// 				&wafregional.IpSetIpSetDescriptorArgs{
/// 					Type:  pulumi.String("IPV4"),
/// 					Value: pulumi.String("192.0.7.0/24"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = wafregional.NewRateBasedRule(ctx, "wafrule", &wafregional.RateBasedRuleArgs{
/// 			Name:       pulumi.String("tfWAFRule"),
/// 			MetricName: pulumi.String("tfWAFRule"),
/// 			RateKey:    pulumi.String("IP"),
/// 			RateLimit:  pulumi.Int(100),
/// 			Predicates: wafregional.RateBasedRulePredicateArray{
/// 				&wafregional.RateBasedRulePredicateArgs{
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
/// import com.pulumi.aws.wafregional.IpSet;
/// import com.pulumi.aws.wafregional.IpSetArgs;
/// import com.pulumi.aws.wafregional.inputs.IpSetIpSetDescriptorArgs;
/// import com.pulumi.aws.wafregional.RateBasedRule;
/// import com.pulumi.aws.wafregional.RateBasedRuleArgs;
/// import com.pulumi.aws.wafregional.inputs.RateBasedRulePredicateArgs;
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
///         var wafrule = new RateBasedRule("wafrule", RateBasedRuleArgs.builder()
///             .name("tfWAFRule")
///             .metricName("tfWAFRule")
///             .rateKey("IP")
///             .rateLimit(100)
///             .predicates(RateBasedRulePredicateArgs.builder()
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
///     type: aws:wafregional:IpSet
///     properties:
///       name: tfIPSet
///       ipSetDescriptors:
///         - type: IPV4
///           value: 192.0.7.0/24
///   wafrule:
///     type: aws:wafregional:RateBasedRule
///     properties:
///       name: tfWAFRule
///       metricName: tfWAFRule
///       rateKey: IP
///       rateLimit: 100
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
/// Using `pulumi import`, import WAF Regional Rate Based Rule using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/rateBasedRule:RateBasedRule wafrule a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class RateBasedRule extends pulumi.CustomResource {
  /// The ARN of the WAF Regional Rate Based Rule.
  late final pulumi.Output<String> arn;

  /// The name or description for the Amazon CloudWatch metric of this rule.
  late final pulumi.Output<String> metricName;

  /// The name or description of the rule.
  late final pulumi.Output<String> name;

  /// The objects to include in a rule (documented below).
  late final pulumi.Output<List<RateBasedRulePredicate>?> predicates;

  /// Valid value is IP.
  late final pulumi.Output<String> rateKey;

  /// The maximum number of requests, which have an identical value in the field specified by the RateKey, allowed in a five-minute period. Minimum value is 100.
  late final pulumi.Output<int> rateLimit;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [RateBasedRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RateBasedRule]. {@macro pulumi_wafregional_rate_based_rule_rate_based_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RateBasedRule(
    String name, {
    RateBasedRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:wafregional/rateBasedRule:RateBasedRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    this.predicates = registerOutput<List<RateBasedRulePredicate>?>(
      'predicates',
    );
    this.rateKey = registerOutput<String>('rateKey');
    this.rateLimit = registerOutput<int>('rateLimit');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
