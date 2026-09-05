import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_security_group_rules_exclusive_args.dart';
import 'vpc_security_group_rules_exclusive_state.dart';

/// Resource for managing an exclusive set of AWS VPC Security Group Rules.
///
/// This resource manages the complete set of ingress and egress rules assigned to a security group. It provides exclusive control by removing any rules not explicitly defined in the configuration.
///
/// &gt; This resource takes exclusive ownership over ingress and egress rules assigned to a security group. This includes removal of rules which are not explicitly configured. To prevent persistent drift, ensure any `aws.vpc.SecurityGroupIngressRule` and `aws.vpc.SecurityGroupEgressRule` resources managed alongside this resource are included in the `ingressRuleIds` and `egressRuleIds` arguments.
///
/// &gt; Destruction of this resource means Terraform will no longer manage reconciliation of the configured security group rules. It **will not** revoke the configured rules from the security group.
///
/// &gt; When this resource detects a configured rule ID which must be created, a warning diagnostic is emitted. This is due to a limitation in the [`AuthorizeSecurityGroupEgress`](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AuthorizeSecurityGroupEgress.html) and [`AuthorizeSecurityGroupIngress`](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AuthorizeSecurityGroupIngress.html) APIs, which require the full rule definition to be provided rather than a reference to an existing rule ID.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.Vpc("example", {cidrBlock: "10.0.0.0/16"});
/// const exampleSecurityGroup = new aws.ec2.SecurityGroup("example", {
///     name: "example",
///     vpcId: example.id,
/// });
/// const exampleSecurityGroupIngressRule = new aws.vpc.SecurityGroupIngressRule("example", {
///     securityGroupId: exampleSecurityGroup.id,
///     cidrIpv4: "10.0.0.0/8",
///     fromPort: 80,
///     toPort: 80,
///     ipProtocol: "tcp",
/// });
/// const exampleSecurityGroupEgressRule = new aws.vpc.SecurityGroupEgressRule("example", {
///     securityGroupId: exampleSecurityGroup.id,
///     cidrIpv4: "0.0.0.0/0",
///     ipProtocol: "-1",
/// });
/// const exampleVpcSecurityGroupRulesExclusive = new aws.ec2.VpcSecurityGroupRulesExclusive("example", {
///     securityGroupId: exampleSecurityGroup.id,
///     ingressRuleIds: [exampleSecurityGroupIngressRule.id],
///     egressRuleIds: [exampleSecurityGroupEgressRule.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example_security_group = aws.ec2.SecurityGroup("example",
///     name="example",
///     vpc_id=example.id)
/// example_security_group_ingress_rule = aws.vpc.SecurityGroupIngressRule("example",
///     security_group_id=example_security_group.id,
///     cidr_ipv4="10.0.0.0/8",
///     from_port=80,
///     to_port=80,
///     ip_protocol="tcp")
/// example_security_group_egress_rule = aws.vpc.SecurityGroupEgressRule("example",
///     security_group_id=example_security_group.id,
///     cidr_ipv4="0.0.0.0/0",
///     ip_protocol="-1")
/// example_vpc_security_group_rules_exclusive = aws.ec2.VpcSecurityGroupRulesExclusive("example",
///     security_group_id=example_security_group.id,
///     ingress_rule_ids=[example_security_group_ingress_rule.id],
///     egress_rule_ids=[example_security_group_egress_rule.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var exampleSecurityGroup = new Aws.Ec2.SecurityGroup("example", new()
///     {
///         Name = "example",
///         VpcId = example.Id,
///     });
///
///     var exampleSecurityGroupIngressRule = new Aws.Vpc.SecurityGroupIngressRule("example", new()
///     {
///         SecurityGroupId = exampleSecurityGroup.Id,
///         CidrIpv4 = "10.0.0.0/8",
///         FromPort = 80,
///         ToPort = 80,
///         IpProtocol = "tcp",
///     });
///
///     var exampleSecurityGroupEgressRule = new Aws.Vpc.SecurityGroupEgressRule("example", new()
///     {
///         SecurityGroupId = exampleSecurityGroup.Id,
///         CidrIpv4 = "0.0.0.0/0",
///         IpProtocol = "-1",
///     });
///
///     var exampleVpcSecurityGroupRulesExclusive = new Aws.Ec2.VpcSecurityGroupRulesExclusive("example", new()
///     {
///         SecurityGroupId = exampleSecurityGroup.Id,
///         IngressRuleIds = new[]
///         {
///             exampleSecurityGroupIngressRule.Id,
///         },
///         EgressRuleIds = new[]
///         {
///             exampleSecurityGroupEgressRule.Id,
///         },
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
/// 		example, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSecurityGroup, err := ec2.NewSecurityGroup(ctx, "example", &ec2.SecurityGroupArgs{
/// 			Name:  pulumi.String("example"),
/// 			VpcId: example.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSecurityGroupIngressRule, err := vpc.NewSecurityGroupIngressRule(ctx, "example", &vpc.SecurityGroupIngressRuleArgs{
/// 			SecurityGroupId: exampleSecurityGroup.ID().ToIDOutput().ToStringOutput(),
/// 			CidrIpv4:        pulumi.String("10.0.0.0/8"),
/// 			FromPort:        pulumi.Int(80),
/// 			ToPort:          pulumi.Int(80),
/// 			IpProtocol:      pulumi.String("tcp"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSecurityGroupEgressRule, err := vpc.NewSecurityGroupEgressRule(ctx, "example", &vpc.SecurityGroupEgressRuleArgs{
/// 			SecurityGroupId: exampleSecurityGroup.ID().ToIDOutput().ToStringOutput(),
/// 			CidrIpv4:        pulumi.String("0.0.0.0/0"),
/// 			IpProtocol:      pulumi.String("-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpcSecurityGroupRulesExclusive(ctx, "example", &ec2.VpcSecurityGroupRulesExclusiveArgs{
/// 			SecurityGroupId: exampleSecurityGroup.ID().ToIDOutput().ToStringOutput(),
/// 			IngressRuleIds: pulumi.StringArray{
/// 				exampleSecurityGroupIngressRule.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			EgressRuleIds: pulumi.StringArray{
/// 				exampleSecurityGroupEgressRule.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_ec2_vpc" "example" {
///   cidr_block = "10.0.0.0/16"
/// }
/// resource "aws_ec2_securitygroup" "example" {
///   name   = "example"
///   vpc_id = aws_ec2_vpc.example.id
/// }
/// resource "aws_vpc_securitygroupingressrule" "example" {
///   security_group_id = aws_ec2_securitygroup.example.id
///   cidr_ipv4         = "10.0.0.0/8"
///   from_port         = 80
///   to_port           = 80
///   ip_protocol       = "tcp"
/// }
/// resource "aws_vpc_securitygroupegressrule" "example" {
///   security_group_id = aws_ec2_securitygroup.example.id
///   cidr_ipv4         = "0.0.0.0/0"
///   ip_protocol       = "-1"
/// }
/// resource "aws_ec2_vpcsecuritygrouprulesexclusive" "example" {
///   security_group_id = aws_ec2_securitygroup.example.id
///   ingress_rule_ids  = [aws_vpc_securitygroupingressrule.example.id]
///   egress_rule_ids   = [aws_vpc_securitygroupegressrule.example.id]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.SecurityGroup;
/// import com.pulumi.aws.ec2.SecurityGroupArgs;
/// import com.pulumi.aws.vpc.SecurityGroupIngressRule;
/// import com.pulumi.aws.vpc.SecurityGroupIngressRuleArgs;
/// import com.pulumi.aws.vpc.SecurityGroupEgressRule;
/// import com.pulumi.aws.vpc.SecurityGroupEgressRuleArgs;
/// import com.pulumi.aws.ec2.VpcSecurityGroupRulesExclusive;
/// import com.pulumi.aws.ec2.VpcSecurityGroupRulesExclusiveArgs;
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
///         var example = new Vpc("example", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var exampleSecurityGroup = new SecurityGroup("exampleSecurityGroup", SecurityGroupArgs.builder()
///             .name("example")
///             .vpcId(example.id())
///             .build());
///
///         var exampleSecurityGroupIngressRule = new SecurityGroupIngressRule("exampleSecurityGroupIngressRule", SecurityGroupIngressRuleArgs.builder()
///             .securityGroupId(exampleSecurityGroup.id())
///             .cidrIpv4("10.0.0.0/8")
///             .fromPort(80)
///             .toPort(80)
///             .ipProtocol("tcp")
///             .build());
///
///         var exampleSecurityGroupEgressRule = new SecurityGroupEgressRule("exampleSecurityGroupEgressRule", SecurityGroupEgressRuleArgs.builder()
///             .securityGroupId(exampleSecurityGroup.id())
///             .cidrIpv4("0.0.0.0/0")
///             .ipProtocol("-1")
///             .build());
///
///         var exampleVpcSecurityGroupRulesExclusive = new VpcSecurityGroupRulesExclusive("exampleVpcSecurityGroupRulesExclusive", VpcSecurityGroupRulesExclusiveArgs.builder()
///             .securityGroupId(exampleSecurityGroup.id())
///             .ingressRuleIds(exampleSecurityGroupIngressRule.id())
///             .egressRuleIds(exampleSecurityGroupEgressRule.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///   exampleSecurityGroup:
///     type: aws:ec2:SecurityGroup
///     name: example
///     properties:
///       name: example
///       vpcId: ${example.id}
///   exampleSecurityGroupIngressRule:
///     type: aws:vpc:SecurityGroupIngressRule
///     name: example
///     properties:
///       securityGroupId: ${exampleSecurityGroup.id}
///       cidrIpv4: 10.0.0.0/8
///       fromPort: 80
///       toPort: 80
///       ipProtocol: tcp
///   exampleSecurityGroupEgressRule:
///     type: aws:vpc:SecurityGroupEgressRule
///     name: example
///     properties:
///       securityGroupId: ${exampleSecurityGroup.id}
///       cidrIpv4: 0.0.0.0/0
///       ipProtocol: '-1'
///   exampleVpcSecurityGroupRulesExclusive:
///     type: aws:ec2:VpcSecurityGroupRulesExclusive
///     name: example
///     properties:
///       securityGroupId: ${exampleSecurityGroup.id}
///       ingressRuleIds:
///         - ${exampleSecurityGroupIngressRule.id}
///       egressRuleIds:
///         - ${exampleSecurityGroupEgressRule.id}
/// ```
///
///
/// ### Disallow All Rules
///
/// To automatically remove any configured security group rules, set both `ingressRuleIds` and `egressRuleIds` to empty lists.
///
/// &gt; This will not __prevent__ rules from being assigned to a security group via Terraform (or any other interface). This resource enables bringing security group rule assignments into a configured state, however, this reconciliation happens only when `apply` is proactively run.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.VpcSecurityGroupRulesExclusive("example", {
///     securityGroupId: exampleAwsSecurityGroup.id,
///     ingressRuleIds: [],
///     egressRuleIds: [],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.VpcSecurityGroupRulesExclusive("example",
///     security_group_id=example_aws_security_group["id"],
///     ingress_rule_ids=[],
///     egress_rule_ids=[])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.VpcSecurityGroupRulesExclusive("example", new()
///     {
///         SecurityGroupId = exampleAwsSecurityGroup.Id,
///         IngressRuleIds = new[] {},
///         EgressRuleIds = new[] {},
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewVpcSecurityGroupRulesExclusive(ctx, "example", &ec2.VpcSecurityGroupRulesExclusiveArgs{
/// 			SecurityGroupId: pulumi.Any(exampleAwsSecurityGroup.Id),
/// 			IngressRuleIds:  pulumi.StringArray{},
/// 			EgressRuleIds:   pulumi.StringArray{},
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
/// resource "aws_ec2_vpcsecuritygrouprulesexclusive" "example" {
///   security_group_id = exampleAwsSecurityGroup.id
///   ingress_rule_ids  = []
///   egress_rule_ids   = []
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.VpcSecurityGroupRulesExclusive;
/// import com.pulumi.aws.ec2.VpcSecurityGroupRulesExclusiveArgs;
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
///         var example = new VpcSecurityGroupRulesExclusive("example", VpcSecurityGroupRulesExclusiveArgs.builder()
///             .securityGroupId(exampleAwsSecurityGroup.id())
///             .ingressRuleIds()
///             .egressRuleIds()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:VpcSecurityGroupRulesExclusive
///     properties:
///       securityGroupId: ${exampleAwsSecurityGroup.id}
///       ingressRuleIds: []
///       egressRuleIds: []
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import exclusive management of security group rules using the `securityGroupId`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcSecurityGroupRulesExclusive:VpcSecurityGroupRulesExclusive example sg-1234567890abcdef0
/// ```
class VpcSecurityGroupRulesExclusive extends pulumi.CustomResource {
  /// Egress rule IDs.
  late final pulumi.Output<List<String>> egressRuleIds;
  /// Ingress rule IDs.
  late final pulumi.Output<List<String>> ingressRuleIds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the security group.
  late final pulumi.Output<String> securityGroupId;

  /// Creates a new [VpcSecurityGroupRulesExclusive].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcSecurityGroupRulesExclusive]. {@macro pulumi_ec2_vpc_security_group_rules_exclusive_vpc_security_group_rules_exclusive_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcSecurityGroupRulesExclusive(
    String name, {
    VpcSecurityGroupRulesExclusiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcSecurityGroupRulesExclusive:VpcSecurityGroupRulesExclusive',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    egressRuleIds = registerOutput<List<String>>('egressRuleIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ingressRuleIds = registerOutput<List<String>>('ingressRuleIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    securityGroupId = registerOutput<String>('securityGroupId');
  }

  /// Gets an existing [VpcSecurityGroupRulesExclusive] resource's state with the given [name] and [id].
  static VpcSecurityGroupRulesExclusive get(
    String name,
    pulumi.Input<String> id, {
    VpcSecurityGroupRulesExclusiveState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VpcSecurityGroupRulesExclusive._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VpcSecurityGroupRulesExclusive._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcSecurityGroupRulesExclusive:VpcSecurityGroupRulesExclusive',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    egressRuleIds = registerOutput<List<String>>('egressRuleIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ingressRuleIds = registerOutput<List<String>>('ingressRuleIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    securityGroupId = registerOutput<String>('securityGroupId');
  }

  /// Creates a typed reference to an existing [VpcSecurityGroupRulesExclusive] resource.
  VpcSecurityGroupRulesExclusive.reference(String urn)
    : super(
        'aws:ec2/vpcSecurityGroupRulesExclusive:VpcSecurityGroupRulesExclusive',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    egressRuleIds = registerOutput<List<String>>('egressRuleIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ingressRuleIds = registerOutput<List<String>>('ingressRuleIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    securityGroupId = registerOutput<String>('securityGroupId');
  }
}
