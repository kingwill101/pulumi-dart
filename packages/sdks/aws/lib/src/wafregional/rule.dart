import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_args.dart';
import 'rule_state.dart';

/// Provides an WAF Regional Rule Resource for use with Application Load Balancer.
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
/// const wafrule = new aws.wafregional.Rule("wafrule", {
///     name: "tfWAFRule",
///     metricName: "tfWAFRule",
///     predicates: [{
///         type: "IPMatch",
///         dataId: ipset.id,
///         negated: false,
///     }],
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
/// wafrule = aws.wafregional.Rule("wafrule",
///     name="tfWAFRule",
///     metric_name="tfWAFRule",
///     predicates=[{
///         "type": "IPMatch",
///         "data_id": ipset.id,
///         "negated": False,
///     }])
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
///     var wafrule = new Aws.WafRegional.Rule("wafrule", new()
///     {
///         Name = "tfWAFRule",
///         MetricName = "tfWAFRule",
///         Predicates = new[]
///         {
///             new Aws.WafRegional.Inputs.RulePredicateArgs
///             {
///                 Type = "IPMatch",
///                 DataId = ipset.Id,
///                 Negated = false,
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
/// 		_, err = wafregional.NewRule(ctx, "wafrule", &wafregional.RuleArgs{
/// 			Name:       pulumi.String("tfWAFRule"),
/// 			MetricName: pulumi.String("tfWAFRule"),
/// 			Predicates: wafregional.RulePredicateArray{
/// 				&wafregional.RulePredicateArgs{
/// 					Type:    pulumi.String("IPMatch"),
/// 					DataId:  ipset.ID(),
/// 					Negated: pulumi.Bool(false),
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
/// import com.pulumi.aws.wafregional.IpSet;
/// import com.pulumi.aws.wafregional.IpSetArgs;
/// import com.pulumi.aws.wafregional.inputs.IpSetIpSetDescriptorArgs;
/// import com.pulumi.aws.wafregional.Rule;
/// import com.pulumi.aws.wafregional.RuleArgs;
/// import com.pulumi.aws.wafregional.inputs.RulePredicateArgs;
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
///                 .type("IPMatch")
///                 .dataId(ipset.id())
///                 .negated(false)
///                 .build())
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
///       name: tfIPSet
///       ipSetDescriptors:
///         - type: IPV4
///           value: 192.0.7.0/24
///   wafrule:
///     type: aws:wafregional:Rule
///     properties:
///       name: tfWAFRule
///       metricName: tfWAFRule
///       predicates:
///         - type: IPMatch
///           dataId: ${ipset.id}
///           negated: false
/// ```
///
///
/// ## Nested Fields
///
/// ### `predicate`
///
/// See the [WAF Documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_Predicate.html) for more information.
///
/// #### Arguments
///
/// * `type` - (Required) The type of predicate in a rule. Valid values: `ByteMatch`, `GeoMatch`, `IPMatch`, `RegexMatch`, `SizeConstraint`, `SqlInjectionMatch`, or `XssMatch`
/// * `data_id` - (Required) The unique identifier of a predicate, such as the ID of a `ByteMatchSet` or `IPSet`.
/// * `negated` - (Required) Whether to use the settings or the negated settings that you specified in the objects.
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regional Rule using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/rule:Rule wafrule a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class Rule extends pulumi.CustomResource {
  /// The ARN of the WAF Regional Rule.
  late final pulumi.Output<String> arn;

  /// The name or description for the Amazon CloudWatch metric of this rule.
  late final pulumi.Output<String> metricName;

  /// The name or description of the rule.
  late final pulumi.Output<String> name;

  /// The objects to include in a rule (documented below).
  late final pulumi.Output<List<Map<String, dynamic>>?> predicates;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Rule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rule]. {@macro pulumi_wafregional_rule_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rule(String name, {RuleArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:wafregional/rule:Rule',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    arn = registerOutput<String>('arn');
    metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    predicates = registerOutput<List<Map<String, dynamic>>?>('predicates');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Rule] resource's state with the given [name] and [id].
  static Rule get(String name, pulumi.Input<String> id, {RuleState? state}) {
    return Rule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Rule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:wafregional/rule:Rule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    predicates = registerOutput<List<Map<String, dynamic>>?>('predicates');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
