import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_args.dart';
import 'rule_predicate.dart';
import 'rule_state.dart';

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
/// 		_, err = waf.NewRule(ctx, "wafrule", &waf.RuleArgs{
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
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    predicates = registerOutput<List<RulePredicate>?>('predicates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RulePredicate>(guardedValue, (value) => RulePredicate.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Rule] resource's state with the given [name] and [id].
  static Rule get(
    String name,
    pulumi.Input<String> id, {
    RuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Rule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Rule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:waf/rule:Rule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    predicates = registerOutput<List<RulePredicate>?>('predicates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RulePredicate>(guardedValue, (value) => RulePredicate.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Rule] resource.
  Rule.reference(String urn)
    : super(
        'aws:waf/rule:Rule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    predicates = registerOutput<List<RulePredicate>?>('predicates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RulePredicate>(guardedValue, (value) => RulePredicate.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
