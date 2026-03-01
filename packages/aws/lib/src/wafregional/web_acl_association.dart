import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_association_args.dart';

/// Manages an association with WAF Regional Web ACL.
///
/// > **Note:** An Application Load Balancer can only be associated with one WAF Regional WebACL.
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
///     name: "tfIPSet",
///     ipSetDescriptors: [{
///         type: "IPV4",
///         value: "192.0.7.0/24",
///     }],
/// });
/// const foo = new aws.wafregional.Rule("foo", {
///     name: "tfWAFRule",
///     metricName: "tfWAFRule",
///     predicates: [{
///         dataId: ipset.id,
///         negated: false,
///         type: "IPMatch",
///     }],
/// });
/// const fooWebAcl = new aws.wafregional.WebAcl("foo", {
///     name: "foo",
///     metricName: "foo",
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
///     name="tfIPSet",
///     ip_set_descriptors=[{
///         "type": "IPV4",
///         "value": "192.0.7.0/24",
///     }])
/// foo = aws.wafregional.Rule("foo",
///     name="tfWAFRule",
///     metric_name="tfWAFRule",
///     predicates=[{
///         "data_id": ipset.id,
///         "negated": False,
///         "type": "IPMatch",
///     }])
/// foo_web_acl = aws.wafregional.WebAcl("foo",
///     name="foo",
///     metric_name="foo",
///     default_action={
///         "type": "ALLOW",
///     },
///     rules=[{
///         "action": {
///             "type": "BLOCK",
///         },
///         "priority": 1,
///         "rule_id": foo.id,
///     }])
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
///     var foo = new Aws.WafRegional.Rule("foo", new()
///     {
///         Name = "tfWAFRule",
///         MetricName = "tfWAFRule",
///         Predicates = new[]
///         {
///             new Aws.WafRegional.Inputs.RulePredicateArgs
///             {
///                 DataId = ipset.Id,
///                 Negated = false,
///                 Type = "IPMatch",
///             },
///         },
///     });
///
///     var fooWebAcl = new Aws.WafRegional.WebAcl("foo", new()
///     {
///         Name = "foo",
///         MetricName = "foo",
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
/// 		foo, err := wafregional.NewRule(ctx, "foo", &wafregional.RuleArgs{
/// 			Name:       pulumi.String("tfWAFRule"),
/// 			MetricName: pulumi.String("tfWAFRule"),
/// 			Predicates: wafregional.RulePredicateArray{
/// 				&wafregional.RulePredicateArgs{
/// 					DataId:  ipset.ID(),
/// 					Negated: pulumi.Bool(false),
/// 					Type:    pulumi.String("IPMatch"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooWebAcl, err := wafregional.NewWebAcl(ctx, "foo", &wafregional.WebAclArgs{
/// 			Name:       pulumi.String("foo"),
/// 			MetricName: pulumi.String("foo"),
/// 			DefaultAction: &wafregional.WebAclDefaultActionArgs{
/// 				Type: pulumi.String("ALLOW"),
/// 			},
/// 			Rules: wafregional.WebAclRuleArray{
/// 				&wafregional.WebAclRuleArgs{
/// 					Action: &wafregional.WebAclRuleActionArgs{
/// 						Type: pulumi.String("BLOCK"),
/// 					},
/// 					Priority: pulumi.Int(1),
/// 					RuleId:   foo.ID(),
/// 				},
/// 			},
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
/// 			VpcId:            fooVpc.ID(),
/// 			CidrBlock:        pulumi.String("10.1.1.0/24"),
/// 			AvailabilityZone: pulumi.String(available.Names[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bar, err := ec2.NewSubnet(ctx, "bar", &ec2.SubnetArgs{
/// 			VpcId:            fooVpc.ID(),
/// 			CidrBlock:        pulumi.String("10.1.2.0/24"),
/// 			AvailabilityZone: pulumi.String(available.Names[1]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooLoadBalancer, err := alb.NewLoadBalancer(ctx, "foo", &alb.LoadBalancerArgs{
/// 			Internal: pulumi.Bool(true),
/// 			Subnets: pulumi.StringArray{
/// 				fooSubnet.ID(),
/// 				bar.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = wafregional.NewWebAclAssociation(ctx, "foo", &wafregional.WebAclAssociationArgs{
/// 			ResourceArn: fooLoadBalancer.Arn,
/// 			WebAclId:    fooWebAcl.ID(),
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
///         var foo = new Rule("foo", RuleArgs.builder()
///             .name("tfWAFRule")
///             .metricName("tfWAFRule")
///             .predicates(RulePredicateArgs.builder()
///                 .dataId(ipset.id())
///                 .negated(false)
///                 .type("IPMatch")
///                 .build())
///             .build());
///
///         var fooWebAcl = new WebAcl("fooWebAcl", WebAclArgs.builder()
///             .name("foo")
///             .metricName("foo")
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
///       name: tfIPSet
///       ipSetDescriptors:
///         - type: IPV4
///           value: 192.0.7.0/24
///   foo:
///     type: aws:wafregional:Rule
///     properties:
///       name: tfWAFRule
///       metricName: tfWAFRule
///       predicates:
///         - dataId: ${ipset.id}
///           negated: false
///           type: IPMatch
///   fooWebAcl:
///     type: aws:wafregional:WebAcl
///     name: foo
///     properties:
///       name: foo
///       metricName: foo
///       defaultAction:
///         type: ALLOW
///       rules:
///         - action:
///             type: BLOCK
///           priority: 1
///           ruleId: ${foo.id}
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
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.webAclId = registerOutput<String>('webAclId');
  }
}
