import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_association_args.dart';
import 'web_acl_association_state.dart';

/// Manages an association with WAF Regional Web ACL.
///
/// &gt; **Note:** An Application Load Balancer can only be associated with one WAF Regional WebACL.
///
/// ## Example Usage
///
/// ### Application Load Balancer Association
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
/// const foo = new aws.wafregional.Rule("foo", {
///     predicates: [{
///         dataId: ipset.id,
///         negated: false,
///         type: "IPMatch",
///     }],
///     name: "tfWAFRule",
///     metricName: "tfWAFRule",
/// });
/// const fooWebAcl = new aws.wafregional.WebAcl("foo", {
///     defaultAction: {
///         type: "ALLOW",
///     },
///     rules: [{
///         action: {
///             type: "BLOCK",
///         },
///         priority: 1,
///         ruleId: foo.id,
///     }],
///     name: "foo",
///     metricName: "foo",
/// });
/// const fooVpc = new aws.ec2.Vpc("foo", {cidrBlock: "10.1.0.0/16"});
/// const available = aws.getAvailabilityZones({});
/// const fooSubnet = new aws.ec2.Subnet("foo", {
///     vpcId: fooVpc.id,
///     cidrBlock: "10.1.1.0/24",
///     availabilityZone: available.then(available => available.names?.[0]),
/// });
/// const bar = new aws.ec2.Subnet("bar", {
///     vpcId: fooVpc.id,
///     cidrBlock: "10.1.2.0/24",
///     availabilityZone: available.then(available => available.names?.[1]),
/// });
/// const fooLoadBalancer = new aws.alb.LoadBalancer("foo", {
///     internal: true,
///     subnets: [
///         fooSubnet.id,
///         bar.id,
///     ],
/// });
/// const fooWebAclAssociation = new aws.wafregional.WebAclAssociation("foo", {
///     resourceArn: fooLoadBalancer.arn,
///     webAclId: fooWebAcl.id,
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
/// foo = aws.wafregional.Rule("foo",
///     predicates=[{
///         "data_id": ipset.id,
///         "negated": False,
///         "type": "IPMatch",
///     }],
///     name="tfWAFRule",
///     metric_name="tfWAFRule")
/// foo_web_acl = aws.wafregional.WebAcl("foo",
///     default_action={
///         "type": "ALLOW",
///     },
///     rules=[{
///         "action": {
///             "type": "BLOCK",
///         },
///         "priority": 1,
///         "rule_id": foo.id,
///     }],
///     name="foo",
///     metric_name="foo")
/// foo_vpc = aws.ec2.Vpc("foo", cidr_block="10.1.0.0/16")
/// available = aws.get_availability_zones()
/// foo_subnet = aws.ec2.Subnet("foo",
///     vpc_id=foo_vpc.id,
///     cidr_block="10.1.1.0/24",
///     availability_zone=available.names[0])
/// bar = aws.ec2.Subnet("bar",
///     vpc_id=foo_vpc.id,
///     cidr_block="10.1.2.0/24",
///     availability_zone=available.names[1])
/// foo_load_balancer = aws.alb.LoadBalancer("foo",
///     internal=True,
///     subnets=[
///         foo_subnet.id,
///         bar.id,
///     ])
/// foo_web_acl_association = aws.wafregional.WebAclAssociation("foo",
///     resource_arn=foo_load_balancer.arn,
///     web_acl_id=foo_web_acl.id)
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
///     var foo = new Aws.WafRegional.Rule("foo", new()
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
///     var fooWebAcl = new Aws.WafRegional.WebAcl("foo", new()
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
///                 RuleId = foo.Id,
///             },
///         },
///         Name = "foo",
///         MetricName = "foo",
///     });
///
///     var fooVpc = new Aws.Ec2.Vpc("foo", new()
///     {
///         CidrBlock = "10.1.0.0/16",
///     });
///
///     var available = Aws.GetAvailabilityZones.Invoke();
///
///     var fooSubnet = new Aws.Ec2.Subnet("foo", new()
///     {
///         VpcId = fooVpc.Id,
///         CidrBlock = "10.1.1.0/24",
///         AvailabilityZone = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[0]),
///     });
///
///     var bar = new Aws.Ec2.Subnet("bar", new()
///     {
///         VpcId = fooVpc.Id,
///         CidrBlock = "10.1.2.0/24",
///         AvailabilityZone = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[1]),
///     });
///
///     var fooLoadBalancer = new Aws.Alb.LoadBalancer("foo", new()
///     {
///         Internal = true,
///         Subnets = new[]
///         {
///             fooSubnet.Id,
///             bar.Id,
///         },
///     });
///
///     var fooWebAclAssociation = new Aws.WafRegional.WebAclAssociation("foo", new()
///     {
///         ResourceArn = fooLoadBalancer.Arn,
///         WebAclId = fooWebAcl.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/alb"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
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
/// 		foo, err := wafregional.NewRule(ctx, "foo", &wafregional.RuleArgs{
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
/// 		fooWebAcl, err := wafregional.NewWebAcl(ctx, "foo", &wafregional.WebAclArgs{
/// 			DefaultAction: &wafregional.WebAclDefaultActionArgs{
/// 				Type: pulumi.String("ALLOW"),
/// 			},
/// 			Rules: wafregional.WebAclRuleArray{
/// 				&wafregional.WebAclRuleArgs{
/// 					Action: &wafregional.WebAclRuleActionArgs{
/// 						Type: pulumi.String("BLOCK"),
/// 					},
/// 					Priority: pulumi.Int(1),
/// 					RuleId:   foo.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			Name:       pulumi.String("foo"),
/// 			MetricName: pulumi.String("foo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooVpc, err := ec2.NewVpc(ctx, "foo", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooSubnet, err := ec2.NewSubnet(ctx, "foo", &ec2.SubnetArgs{
/// 			VpcId:            fooVpc.ID().ToIDOutput().ToStringOutput(),
/// 			CidrBlock:        pulumi.String("10.1.1.0/24"),
/// 			AvailabilityZone: pulumi.String(available.Names[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bar, err := ec2.NewSubnet(ctx, "bar", &ec2.SubnetArgs{
/// 			VpcId:            fooVpc.ID().ToIDOutput().ToStringOutput(),
/// 			CidrBlock:        pulumi.String("10.1.2.0/24"),
/// 			AvailabilityZone: pulumi.String(available.Names[1]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooLoadBalancer, err := alb.NewLoadBalancer(ctx, "foo", &alb.LoadBalancerArgs{
/// 			Internal: pulumi.Bool(true),
/// 			Subnets: pulumi.StringArray{
/// 				fooSubnet.ID().ToIDOutput().ToStringOutput(),
/// 				bar.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = wafregional.NewWebAclAssociation(ctx, "foo", &wafregional.WebAclAssociationArgs{
/// 			ResourceArn: fooLoadBalancer.Arn,
/// 			WebAclId:    fooWebAcl.ID().ToIDOutput().ToStringOutput(),
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
/// data "aws_getavailabilityzones" "available" {
/// }
///
/// resource "aws_wafregional_ipset" "ipset" {
///   ip_set_descriptors {
///     type  = "IPV4"
///     value = "192.0.7.0/24"
///   }
///   name = "tfIPSet"
/// }
/// resource "aws_wafregional_rule" "foo" {
///   predicates {
///     data_id = aws_wafregional_ipset.ipset.id
///     negated = false
///     type    = "IPMatch"
///   }
///   name        = "tfWAFRule"
///   metric_name = "tfWAFRule"
/// }
/// resource "aws_wafregional_webacl" "foo" {
///   default_action = {
///     type = "ALLOW"
///   }
///   rules {
///     action = {
///       type = "BLOCK"
///     }
///     priority = 1
///     rule_id  = aws_wafregional_rule.foo.id
///   }
///   name        = "foo"
///   metric_name = "foo"
/// }
/// resource "aws_ec2_vpc" "foo" {
///   cidr_block = "10.1.0.0/16"
/// }
/// resource "aws_ec2_subnet" "foo" {
///   vpc_id            = aws_ec2_vpc.foo.id
///   cidr_block        = "10.1.1.0/24"
///   availability_zone = data.aws_getavailabilityzones.available.names[0]
/// }
/// resource "aws_ec2_subnet" "bar" {
///   vpc_id            = aws_ec2_vpc.foo.id
///   cidr_block        = "10.1.2.0/24"
///   availability_zone = data.aws_getavailabilityzones.available.names[1]
/// }
/// resource "aws_alb_loadbalancer" "foo" {
///   internal = true
///   subnets  = [aws_ec2_subnet.foo.id, aws_ec2_subnet.bar.id]
/// }
/// resource "aws_wafregional_webaclassociation" "foo" {
///   resource_arn = aws_alb_loadbalancer.foo.arn
///   web_acl_id   = aws_wafregional_webacl.foo.id
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.alb.LoadBalancer;
/// import com.pulumi.aws.alb.LoadBalancerArgs;
/// import com.pulumi.aws.wafregional.WebAclAssociation;
/// import com.pulumi.aws.wafregional.WebAclAssociationArgs;
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
///         var foo = new Rule("foo", RuleArgs.builder()
///             .predicates(RulePredicateArgs.builder()
///                 .dataId(ipset.id())
///                 .negated(false)
///                 .type("IPMatch")
///                 .build())
///             .name("tfWAFRule")
///             .metricName("tfWAFRule")
///             .build());
///
///         var fooWebAcl = new WebAcl("fooWebAcl", WebAclArgs.builder()
///             .defaultAction(WebAclDefaultActionArgs.builder()
///                 .type("ALLOW")
///                 .build())
///             .rules(WebAclRuleArgs.builder()
///                 .action(WebAclRuleActionArgs.builder()
///                     .type("BLOCK")
///                     .build())
///                 .priority(1)
///                 .ruleId(foo.id())
///                 .build())
///             .name("foo")
///             .metricName("foo")
///             .build());
///
///         var fooVpc = new Vpc("fooVpc", VpcArgs.builder()
///             .cidrBlock("10.1.0.0/16")
///             .build());
///
///         final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .build());
///
///         var fooSubnet = new Subnet("fooSubnet", SubnetArgs.builder()
///             .vpcId(fooVpc.id())
///             .cidrBlock("10.1.1.0/24")
///             .availabilityZone(available.names()[0])
///             .build());
///
///         var bar = new Subnet("bar", SubnetArgs.builder()
///             .vpcId(fooVpc.id())
///             .cidrBlock("10.1.2.0/24")
///             .availabilityZone(available.names()[1])
///             .build());
///
///         var fooLoadBalancer = new LoadBalancer("fooLoadBalancer", LoadBalancerArgs.builder()
///             .internal(true)
///             .subnets(
///                 fooSubnet.id(),
///                 bar.id())
///             .build());
///
///         var fooWebAclAssociation = new WebAclAssociation("fooWebAclAssociation", WebAclAssociationArgs.builder()
///             .resourceArn(fooLoadBalancer.arn())
///             .webAclId(fooWebAcl.id())
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
///   foo:
///     type: aws:wafregional:Rule
///     properties:
///       predicates:
///         - dataId: ${ipset.id}
///           negated: false
///           type: IPMatch
///       name: tfWAFRule
///       metricName: tfWAFRule
///   fooWebAcl:
///     type: aws:wafregional:WebAcl
///     name: foo
///     properties:
///       defaultAction:
///         type: ALLOW
///       rules:
///         - action:
///             type: BLOCK
///           priority: 1
///           ruleId: ${foo.id}
///       name: foo
///       metricName: foo
///   fooVpc:
///     type: aws:ec2:Vpc
///     name: foo
///     properties:
///       cidrBlock: 10.1.0.0/16
///   fooSubnet:
///     type: aws:ec2:Subnet
///     name: foo
///     properties:
///       vpcId: ${fooVpc.id}
///       cidrBlock: 10.1.1.0/24
///       availabilityZone: ${available.names[0]}
///   bar:
///     type: aws:ec2:Subnet
///     properties:
///       vpcId: ${fooVpc.id}
///       cidrBlock: 10.1.2.0/24
///       availabilityZone: ${available.names[1]}
///   fooLoadBalancer:
///     type: aws:alb:LoadBalancer
///     name: foo
///     properties:
///       internal: true
///       subnets:
///         - ${fooSubnet.id}
///         - ${bar.id}
///   fooWebAclAssociation:
///     type: aws:wafregional:WebAclAssociation
///     name: foo
///     properties:
///       resourceArn: ${fooLoadBalancer.arn}
///       webAclId: ${fooWebAcl.id}
/// variables:
///   available:
///     fn::invoke:
///       function: aws:getAvailabilityZones
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regional Web ACL Association using their `web_acl_id:resource_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/webAclAssociation:WebAclAssociation foo web_acl_id:resource_arn
/// ```
class WebAclAssociation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the resource to associate with. For example, an Application Load Balancer or API Gateway Stage.
  late final pulumi.Output<String> resourceArn;
  /// The ID of the WAF Regional WebACL to create an association.
  late final pulumi.Output<String> webAclId;

  /// Creates a new [WebAclAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAclAssociation]. {@macro pulumi_wafregional_web_acl_association_web_acl_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAclAssociation(
    String name, {
    WebAclAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/webAclAssociation:WebAclAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    webAclId = registerOutput<String>('webAclId');
  }

  /// Gets an existing [WebAclAssociation] resource's state with the given [name] and [id].
  static WebAclAssociation get(
    String name,
    pulumi.Input<String> id, {
    WebAclAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WebAclAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WebAclAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/webAclAssociation:WebAclAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    webAclId = registerOutput<String>('webAclId');
  }

  /// Creates a typed reference to an existing [WebAclAssociation] resource.
  WebAclAssociation.reference(String urn)
    : super(
        'aws:wafregional/webAclAssociation:WebAclAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    webAclId = registerOutput<String>('webAclId');
  }
}
