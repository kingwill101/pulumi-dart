import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_group_ingress_rule_args.dart';
import 'security_group_ingress_rule_state.dart';

/// Manages an inbound (ingress) rule for a security group.
///
/// When specifying an inbound rule for your security group in a VPC, the configuration must include a source for the traffic.
///
/// &gt; **NOTE:** Using `aws.vpc.SecurityGroupEgressRule` and `aws.vpc.SecurityGroupIngressRule` resources is the current best practice. Avoid using the `aws.ec2.SecurityGroupRule` resource and the `ingress` and `egress` arguments of the `aws.ec2.SecurityGroup` resource for configuring in-line rules, as they struggle with managing multiple CIDR blocks, and tags and descriptions due to the historical lack of unique IDs.
///
/// &gt; **WARNING:** You should not use the `aws.vpc.SecurityGroupEgressRule` and `aws.vpc.SecurityGroupIngressRule` resources in conjunction with the `aws.ec2.SecurityGroup` resource with _in-line rules_ (using the `ingress` and `egress` arguments of `aws.ec2.SecurityGroup`) or the `aws.ec2.SecurityGroupRule` resource. Doing so may cause rule conflicts, perpetual differences, and result in rules being overwritten.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.SecurityGroup("example", {
///     name: "example",
///     description: "example",
///     vpcId: main.id,
///     tags: {
///         Name: "example",
///     },
/// });
/// const exampleSecurityGroupIngressRule = new aws.vpc.SecurityGroupIngressRule("example", {
///     securityGroupId: example.id,
///     cidrIpv4: "10.0.0.0/8",
///     fromPort: 80,
///     ipProtocol: "tcp",
///     toPort: 80,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.SecurityGroup("example",
///     name="example",
///     description="example",
///     vpc_id=main["id"],
///     tags={
///         "Name": "example",
///     })
/// example_security_group_ingress_rule = aws.vpc.SecurityGroupIngressRule("example",
///     security_group_id=example.id,
///     cidr_ipv4="10.0.0.0/8",
///     from_port=80,
///     ip_protocol="tcp",
///     to_port=80)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.SecurityGroup("example", new()
///     {
///         Name = "example",
///         Description = "example",
///         VpcId = main.Id,
///         Tags =
///         {
///             { "Name", "example" },
///         },
///     });
///
///     var exampleSecurityGroupIngressRule = new Aws.Vpc.SecurityGroupIngressRule("example", new()
///     {
///         SecurityGroupId = example.Id,
///         CidrIpv4 = "10.0.0.0/8",
///         FromPort = 80,
///         IpProtocol = "tcp",
///         ToPort = 80,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.NewSecurityGroup(ctx, "example", &ec2.SecurityGroupArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("example"),
/// 			VpcId:       pulumi.Any(main.Id),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewSecurityGroupIngressRule(ctx, "example", &vpc.SecurityGroupIngressRuleArgs{
/// 			SecurityGroupId: example.ID().ToIDOutput().ToStringOutput(),
/// 			CidrIpv4:        pulumi.String("10.0.0.0/8"),
/// 			FromPort:        pulumi.Int(80),
/// 			IpProtocol:      pulumi.String("tcp"),
/// 			ToPort:          pulumi.Int(80),
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
/// resource "aws_ec2_securitygroup" "example" {
///   name        = "example"
///   description = "example"
///   vpc_id      = main.id
///   tags = {
///     "Name" = "example"
///   }
/// }
/// resource "aws_vpc_securitygroupingressrule" "example" {
///   security_group_id = aws_ec2_securitygroup.example.id
///   cidr_ipv4         = "10.0.0.0/8"
///   from_port         = 80
///   ip_protocol       = "tcp"
///   to_port           = 80
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.SecurityGroup;
/// import com.pulumi.aws.ec2.SecurityGroupArgs;
/// import com.pulumi.aws.vpc.SecurityGroupIngressRule;
/// import com.pulumi.aws.vpc.SecurityGroupIngressRuleArgs;
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
///         var example = new SecurityGroup("example", SecurityGroupArgs.builder()
///             .name("example")
///             .description("example")
///             .vpcId(main.id())
///             .tags(Map.of("Name", "example"))
///             .build());
///
///         var exampleSecurityGroupIngressRule = new SecurityGroupIngressRule("exampleSecurityGroupIngressRule", SecurityGroupIngressRuleArgs.builder()
///             .securityGroupId(example.id())
///             .cidrIpv4("10.0.0.0/8")
///             .fromPort(80)
///             .ipProtocol("tcp")
///             .toPort(80)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:SecurityGroup
///     properties:
///       name: example
///       description: example
///       vpcId: ${main.id}
///       tags:
///         Name: example
///   exampleSecurityGroupIngressRule:
///     type: aws:vpc:SecurityGroupIngressRule
///     name: example
///     properties:
///       securityGroupId: ${example.id}
///       cidrIpv4: 10.0.0.0/8
///       fromPort: 80
///       ipProtocol: tcp
///       toPort: 80
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the security group rule.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import security group ingress rules using the `securityGroupRuleId`. For example:
///
/// ```sh
/// $ pulumi import aws:vpc/securityGroupIngressRule:SecurityGroupIngressRule example sgr-02108b27edd666983
/// ```
class SecurityGroupIngressRule extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the security group rule.
  late final pulumi.Output<String> arn;
  /// The source IPv4 CIDR range.
  late final pulumi.Output<String?> cidrIpv4;
  /// The source IPv6 CIDR range.
  late final pulumi.Output<String?> cidrIpv6;
  /// The security group rule description.
  late final pulumi.Output<String?> description;
  /// The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type.
  late final pulumi.Output<int?> fromPort;
  /// The IP protocol name or number. Use `-1` to specify all protocols. Note that if `ipProtocol` is set to `-1`, it translates to all protocols, all port ranges, and `fromPort` and `toPort` values should not be defined.
  late final pulumi.Output<String> ipProtocol;
  /// The ID of the source prefix list.
  late final pulumi.Output<String?> prefixListId;
  /// The source security group that is referenced in the rule.
  late final pulumi.Output<String?> referencedSecurityGroupId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the security group.
  late final pulumi.Output<String> securityGroupId;
  /// The ID of the security group rule.
  late final pulumi.Output<String> securityGroupRuleId;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.
  ///
  /// &gt; **Note** Although `cidrIpv4`, `cidrIpv6`, `prefixListId`, and `referencedSecurityGroupId` are all marked as optional, you *must* provide one of them in order to configure the destination of the traffic. The `fromPort` and `toPort` arguments are required unless `ipProtocol` is set to `-1` or `icmpv6`.
  late final pulumi.Output<int?> toPort;

  /// Creates a new [SecurityGroupIngressRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityGroupIngressRule]. {@macro pulumi_vpc_security_group_ingress_rule_security_group_ingress_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityGroupIngressRule(
    String name, {
    SecurityGroupIngressRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpc/securityGroupIngressRule:SecurityGroupIngressRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    cidrIpv4 = registerOutput<String?>('cidrIpv4');
    cidrIpv6 = registerOutput<String?>('cidrIpv6');
    description = registerOutput<String?>('description');
    fromPort = registerOutput<int?>('fromPort');
    ipProtocol = registerOutput<String>('ipProtocol');
    prefixListId = registerOutput<String?>('prefixListId');
    referencedSecurityGroupId = registerOutput<String?>('referencedSecurityGroupId');
    region = registerOutput<String>('region');
    securityGroupId = registerOutput<String>('securityGroupId');
    securityGroupRuleId = registerOutput<String>('securityGroupRuleId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    toPort = registerOutput<int?>('toPort');
  }

  /// Gets an existing [SecurityGroupIngressRule] resource's state with the given [name] and [id].
  static SecurityGroupIngressRule get(
    String name,
    pulumi.Input<String> id, {
    SecurityGroupIngressRuleState? state,
  }) {
    return SecurityGroupIngressRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecurityGroupIngressRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpc/securityGroupIngressRule:SecurityGroupIngressRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    cidrIpv4 = registerOutput<String?>('cidrIpv4');
    cidrIpv6 = registerOutput<String?>('cidrIpv6');
    description = registerOutput<String?>('description');
    fromPort = registerOutput<int?>('fromPort');
    ipProtocol = registerOutput<String>('ipProtocol');
    prefixListId = registerOutput<String?>('prefixListId');
    referencedSecurityGroupId = registerOutput<String?>('referencedSecurityGroupId');
    region = registerOutput<String>('region');
    securityGroupId = registerOutput<String>('securityGroupId');
    securityGroupRuleId = registerOutput<String>('securityGroupRuleId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    toPort = registerOutput<int?>('toPort');
  }
}
