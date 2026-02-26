import 'package:pulumi/pulumi.dart';
import 'vpc_security_group_rules_exclusive_args.dart';

/// Resource for managing an exclusive set of AWS VPC (Virtual Private Cloud) Security Group Rules.
///
/// This resource manages the complete set of ingress and egress rules assigned to a security group. It provides exclusive control by removing any rules not explicitly defined in the configuration.
///
/// !> This resource takes exclusive ownership over ingress and egress rules assigned to a security group. This includes removal of rules which are not explicitly configured. To prevent persistent drift, ensure any <span pulumi-lang-nodejs="`aws.vpc.SecurityGroupIngressRule`" pulumi-lang-dotnet="`aws.vpc.SecurityGroupIngressRule`" pulumi-lang-go="`vpc.SecurityGroupIngressRule`" pulumi-lang-python="`vpc.SecurityGroupIngressRule`" pulumi-lang-yaml="`aws.vpc.SecurityGroupIngressRule`" pulumi-lang-java="`aws.vpc.SecurityGroupIngressRule`">`aws.vpc.SecurityGroupIngressRule`</span> and <span pulumi-lang-nodejs="`aws.vpc.SecurityGroupEgressRule`" pulumi-lang-dotnet="`aws.vpc.SecurityGroupEgressRule`" pulumi-lang-go="`vpc.SecurityGroupEgressRule`" pulumi-lang-python="`vpc.SecurityGroupEgressRule`" pulumi-lang-yaml="`aws.vpc.SecurityGroupEgressRule`" pulumi-lang-java="`aws.vpc.SecurityGroupEgressRule`">`aws.vpc.SecurityGroupEgressRule`</span> resources managed alongside this resource are included in the <span pulumi-lang-nodejs="`ingressRuleIds`" pulumi-lang-dotnet="`IngressRuleIds`" pulumi-lang-go="`ingressRuleIds`" pulumi-lang-python="`ingress_rule_ids`" pulumi-lang-yaml="`ingressRuleIds`" pulumi-lang-java="`ingressRuleIds`">`ingress_rule_ids`</span> and <span pulumi-lang-nodejs="`egressRuleIds`" pulumi-lang-dotnet="`EgressRuleIds`" pulumi-lang-go="`egressRuleIds`" pulumi-lang-python="`egress_rule_ids`" pulumi-lang-yaml="`egressRuleIds`" pulumi-lang-java="`egressRuleIds`">`egress_rule_ids`</span> arguments.
///
/// > Destruction of this resource means Terraform will no longer manage reconciliation of the configured security group rules. It **will not** revoke the configured rules from the security group.
///
/// > When this resource detects a configured rule ID which must be created, a warning diagnostic is emitted. This is due to a limitation in the [`AuthorizeSecurityGroupEgress`](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AuthorizeSecurityGroupEgress.html) and [`AuthorizeSecurityGroupIngress`](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AuthorizeSecurityGroupIngress.html) APIs, which require the full rule definition to be provided rather than a reference to an existing rule ID.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.Vpc("example", {cidrBlock: "10.0.0.0/16"});
/// const exampleSecurityGroup = new aws.ec2.SecurityGroup("example", {
/// name: "example",
/// vpcId: example.id,
/// });
/// const exampleSecurityGroupIngressRule = new aws.vpc.SecurityGroupIngressRule("example", {
/// securityGroupId: exampleSecurityGroup.id,
/// cidrIpv4: "10.0.0.0/8",
/// fromPort: 80,
/// toPort: 80,
/// ipProtocol: "tcp",
/// });
/// const exampleSecurityGroupEgressRule = new aws.vpc.SecurityGroupEgressRule("example", {
/// securityGroupId: exampleSecurityGroup.id,
/// cidrIpv4: "0.0.0.0/0",
/// ipProtocol: "-1",
/// });
/// const exampleVpcSecurityGroupRulesExclusive = new aws.ec2.VpcSecurityGroupRulesExclusive("example", {
/// securityGroupId: exampleSecurityGroup.id,
/// ingressRuleIds: [exampleSecurityGroupIngressRule.id],
/// egressRuleIds: [exampleSecurityGroupEgressRule.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example_security_group = aws.ec2.SecurityGroup("example",
/// name="example",
/// vpc_id=example.id)
/// example_security_group_ingress_rule = aws.vpc.SecurityGroupIngressRule("example",
/// security_group_id=example_security_group.id,
/// cidr_ipv4="10.0.0.0/8",
/// from_port=80,
/// to_port=80,
/// ip_protocol="tcp")
/// example_security_group_egress_rule = aws.vpc.SecurityGroupEgressRule("example",
/// security_group_id=example_security_group.id,
/// cidr_ipv4="0.0.0.0/0",
/// ip_protocol="-1")
/// example_vpc_security_group_rules_exclusive = aws.ec2.VpcSecurityGroupRulesExclusive("example",
/// security_group_id=example_security_group.id,
/// ingress_rule_ids=[example_security_group_ingress_rule.id],
/// egress_rule_ids=[example_security_group_egress_rule.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.Vpc("example", new()
/// {
/// CidrBlock = "10.0.0.0/16",
/// });
///
/// var exampleSecurityGroup = new Aws.Ec2.SecurityGroup("example", new()
/// {
/// Name = "example",
/// VpcId = example.Id,
/// });
///
/// var exampleSecurityGroupIngressRule = new Aws.Vpc.SecurityGroupIngressRule("example", new()
/// {
/// SecurityGroupId = exampleSecurityGroup.Id,
/// CidrIpv4 = "10.0.0.0/8",
/// FromPort = 80,
/// ToPort = 80,
/// IpProtocol = "tcp",
/// });
///
/// var exampleSecurityGroupEgressRule = new Aws.Vpc.SecurityGroupEgressRule("example", new()
/// {
/// SecurityGroupId = exampleSecurityGroup.Id,
/// CidrIpv4 = "0.0.0.0/0",
/// IpProtocol = "-1",
/// });
///
/// var exampleVpcSecurityGroupRulesExclusive = new Aws.Ec2.VpcSecurityGroupRulesExclusive("example", new()
/// {
/// SecurityGroupId = exampleSecurityGroup.Id,
/// IngressRuleIds = new[]
/// {
/// exampleSecurityGroupIngressRule.Id,
/// },
/// EgressRuleIds = new[]
/// {
/// exampleSecurityGroupEgressRule.Id,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.0.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleSecurityGroup, err := ec2.NewSecurityGroup(ctx, "example", &ec2.SecurityGroupArgs{
/// Name:  pulumi.String("example"),
/// VpcId: example.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// exampleSecurityGroupIngressRule, err := vpc.NewSecurityGroupIngressRule(ctx, "example", &vpc.SecurityGroupIngressRuleArgs{
/// SecurityGroupId: exampleSecurityGroup.ID(),
/// CidrIpv4:        pulumi.String("10.0.0.0/8"),
/// FromPort:        pulumi.Int(80),
/// ToPort:          pulumi.Int(80),
/// IpProtocol:      pulumi.String("tcp"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleSecurityGroupEgressRule, err := vpc.NewSecurityGroupEgressRule(ctx, "example", &vpc.SecurityGroupEgressRuleArgs{
/// SecurityGroupId: exampleSecurityGroup.ID(),
/// CidrIpv4:        pulumi.String("0.0.0.0/0"),
/// IpProtocol:      pulumi.String("-1"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewVpcSecurityGroupRulesExclusive(ctx, "example", &ec2.VpcSecurityGroupRulesExclusiveArgs{
/// SecurityGroupId: exampleSecurityGroup.ID(),
/// IngressRuleIds: pulumi.StringArray{
/// exampleSecurityGroupIngressRule.ID(),
/// },
/// EgressRuleIds: pulumi.StringArray{
/// exampleSecurityGroupEgressRule.ID(),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Vpc("example", VpcArgs.builder()
/// .cidrBlock("10.0.0.0/16")
/// .build());
///
/// var exampleSecurityGroup = new SecurityGroup("exampleSecurityGroup", SecurityGroupArgs.builder()
/// .name("example")
/// .vpcId(example.id())
/// .build());
///
/// var exampleSecurityGroupIngressRule = new SecurityGroupIngressRule("exampleSecurityGroupIngressRule", SecurityGroupIngressRuleArgs.builder()
/// .securityGroupId(exampleSecurityGroup.id())
/// .cidrIpv4("10.0.0.0/8")
/// .fromPort(80)
/// .toPort(80)
/// .ipProtocol("tcp")
/// .build());
///
/// var exampleSecurityGroupEgressRule = new SecurityGroupEgressRule("exampleSecurityGroupEgressRule", SecurityGroupEgressRuleArgs.builder()
/// .securityGroupId(exampleSecurityGroup.id())
/// .cidrIpv4("0.0.0.0/0")
/// .ipProtocol("-1")
/// .build());
///
/// var exampleVpcSecurityGroupRulesExclusive = new VpcSecurityGroupRulesExclusive("exampleVpcSecurityGroupRulesExclusive", VpcSecurityGroupRulesExclusiveArgs.builder()
/// .securityGroupId(exampleSecurityGroup.id())
/// .ingressRuleIds(exampleSecurityGroupIngressRule.id())
/// .egressRuleIds(exampleSecurityGroupEgressRule.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.0.0.0/16
/// exampleSecurityGroup:
/// type: aws:ec2:SecurityGroup
/// name: example
/// properties:
/// name: example
/// vpcId: ${example.id}
/// exampleSecurityGroupIngressRule:
/// type: aws:vpc:SecurityGroupIngressRule
/// name: example
/// properties:
/// securityGroupId: ${exampleSecurityGroup.id}
/// cidrIpv4: 10.0.0.0/8
/// fromPort: 80
/// toPort: 80
/// ipProtocol: tcp
/// exampleSecurityGroupEgressRule:
/// type: aws:vpc:SecurityGroupEgressRule
/// name: example
/// properties:
/// securityGroupId: ${exampleSecurityGroup.id}
/// cidrIpv4: 0.0.0.0/0
/// ipProtocol: '-1'
/// exampleVpcSecurityGroupRulesExclusive:
/// type: aws:ec2:VpcSecurityGroupRulesExclusive
/// name: example
/// properties:
/// securityGroupId: ${exampleSecurityGroup.id}
/// ingressRuleIds:
/// - ${exampleSecurityGroupIngressRule.id}
/// egressRuleIds:
/// - ${exampleSecurityGroupEgressRule.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Disallow All Rules
///
/// To automatically remove any configured security group rules, set both <span pulumi-lang-nodejs="`ingressRuleIds`" pulumi-lang-dotnet="`IngressRuleIds`" pulumi-lang-go="`ingressRuleIds`" pulumi-lang-python="`ingress_rule_ids`" pulumi-lang-yaml="`ingressRuleIds`" pulumi-lang-java="`ingressRuleIds`">`ingress_rule_ids`</span> and <span pulumi-lang-nodejs="`egressRuleIds`" pulumi-lang-dotnet="`EgressRuleIds`" pulumi-lang-go="`egressRuleIds`" pulumi-lang-python="`egress_rule_ids`" pulumi-lang-yaml="`egressRuleIds`" pulumi-lang-java="`egressRuleIds`">`egress_rule_ids`</span> to empty lists.
///
/// > This will not __prevent__ rules from being assigned to a security group via Terraform (or any other interface). This resource enables bringing security group rule assignments into a configured state, however, this reconciliation happens only when <span pulumi-lang-nodejs="`apply`" pulumi-lang-dotnet="`Apply`" pulumi-lang-go="`apply`" pulumi-lang-python="`apply`" pulumi-lang-yaml="`apply`" pulumi-lang-java="`apply`">`apply`</span> is proactively run.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.VpcSecurityGroupRulesExclusive("example", {
/// securityGroupId: exampleAwsSecurityGroup.id,
/// ingressRuleIds: [],
/// egressRuleIds: [],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.VpcSecurityGroupRulesExclusive("example",
/// security_group_id=example_aws_security_group["id"],
/// ingress_rule_ids=[],
/// egress_rule_ids=[])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.VpcSecurityGroupRulesExclusive("example", new()
/// {
/// SecurityGroupId = exampleAwsSecurityGroup.Id,
/// IngressRuleIds = new[] {},
/// EgressRuleIds = new[] {},
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewVpcSecurityGroupRulesExclusive(ctx, "example", &ec2.VpcSecurityGroupRulesExclusiveArgs{
/// SecurityGroupId: pulumi.Any(exampleAwsSecurityGroup.Id),
/// IngressRuleIds:  pulumi.StringArray{},
/// EgressRuleIds:   pulumi.StringArray{},
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new VpcSecurityGroupRulesExclusive("example", VpcSecurityGroupRulesExclusiveArgs.builder()
/// .securityGroupId(exampleAwsSecurityGroup.id())
/// .ingressRuleIds()
/// .egressRuleIds()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:VpcSecurityGroupRulesExclusive
/// properties:
/// securityGroupId: ${exampleAwsSecurityGroup.id}
/// ingressRuleIds: []
/// egressRuleIds: []
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import exclusive management of security group rules using the <span pulumi-lang-nodejs="`securityGroupId`" pulumi-lang-dotnet="`SecurityGroupId`" pulumi-lang-go="`securityGroupId`" pulumi-lang-python="`security_group_id`" pulumi-lang-yaml="`securityGroupId`" pulumi-lang-java="`securityGroupId`">`security_group_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcSecurityGroupRulesExclusive:VpcSecurityGroupRulesExclusive example sg-1234567890abcdef0
/// ```
class VpcSecurityGroupRulesExclusive extends CustomResource {
  /// Egress rule IDs.
  late final Output<List<String>> egressRuleIds;

  /// Ingress rule IDs.
  late final Output<List<String>> ingressRuleIds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the security group.
  late final Output<String> securityGroupId;

  VpcSecurityGroupRulesExclusive(
    String name, {
    VpcSecurityGroupRulesExclusiveArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcSecurityGroupRulesExclusive:VpcSecurityGroupRulesExclusive',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.egressRuleIds = Output.createUnknown<List<String>>();
    this.ingressRuleIds = Output.createUnknown<List<String>>();
    this.region = Output.createUnknown<String>();
    this.securityGroupId = Output.createUnknown<String>();
  }
}
