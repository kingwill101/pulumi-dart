import 'package:pulumi/pulumi.dart';
import 'security_group_egress_rule_args.dart';

/// Manages an outbound (egress) rule for a security group.
///
/// When specifying an outbound rule for your security group in a VPC, the configuration must include a destination for the traffic.
///
/// > **NOTE:** Using <span pulumi-lang-nodejs="`aws.vpc.SecurityGroupEgressRule`" pulumi-lang-dotnet="`aws.vpc.SecurityGroupEgressRule`" pulumi-lang-go="`vpc.SecurityGroupEgressRule`" pulumi-lang-python="`vpc.SecurityGroupEgressRule`" pulumi-lang-yaml="`aws.vpc.SecurityGroupEgressRule`" pulumi-lang-java="`aws.vpc.SecurityGroupEgressRule`">`aws.vpc.SecurityGroupEgressRule`</span> and <span pulumi-lang-nodejs="`aws.vpc.SecurityGroupIngressRule`" pulumi-lang-dotnet="`aws.vpc.SecurityGroupIngressRule`" pulumi-lang-go="`vpc.SecurityGroupIngressRule`" pulumi-lang-python="`vpc.SecurityGroupIngressRule`" pulumi-lang-yaml="`aws.vpc.SecurityGroupIngressRule`" pulumi-lang-java="`aws.vpc.SecurityGroupIngressRule`">`aws.vpc.SecurityGroupIngressRule`</span> resources is the current best practice. Avoid using the <span pulumi-lang-nodejs="`aws.ec2.SecurityGroupRule`" pulumi-lang-dotnet="`aws.ec2.SecurityGroupRule`" pulumi-lang-go="`ec2.SecurityGroupRule`" pulumi-lang-python="`ec2.SecurityGroupRule`" pulumi-lang-yaml="`aws.ec2.SecurityGroupRule`" pulumi-lang-java="`aws.ec2.SecurityGroupRule`">`aws.ec2.SecurityGroupRule`</span> resource and the <span pulumi-lang-nodejs="`ingress`" pulumi-lang-dotnet="`Ingress`" pulumi-lang-go="`ingress`" pulumi-lang-python="`ingress`" pulumi-lang-yaml="`ingress`" pulumi-lang-java="`ingress`">`ingress`</span> and <span pulumi-lang-nodejs="`egress`" pulumi-lang-dotnet="`Egress`" pulumi-lang-go="`egress`" pulumi-lang-python="`egress`" pulumi-lang-yaml="`egress`" pulumi-lang-java="`egress`">`egress`</span> arguments of the <span pulumi-lang-nodejs="`aws.ec2.SecurityGroup`" pulumi-lang-dotnet="`aws.ec2.SecurityGroup`" pulumi-lang-go="`ec2.SecurityGroup`" pulumi-lang-python="`ec2.SecurityGroup`" pulumi-lang-yaml="`aws.ec2.SecurityGroup`" pulumi-lang-java="`aws.ec2.SecurityGroup`">`aws.ec2.SecurityGroup`</span> resource for configuring in-line rules, as they struggle with managing multiple CIDR blocks, and tags and descriptions due to the historical lack of unique IDs.
///
/// !> **WARNING:** You should not use the <span pulumi-lang-nodejs="`aws.vpc.SecurityGroupEgressRule`" pulumi-lang-dotnet="`aws.vpc.SecurityGroupEgressRule`" pulumi-lang-go="`vpc.SecurityGroupEgressRule`" pulumi-lang-python="`vpc.SecurityGroupEgressRule`" pulumi-lang-yaml="`aws.vpc.SecurityGroupEgressRule`" pulumi-lang-java="`aws.vpc.SecurityGroupEgressRule`">`aws.vpc.SecurityGroupEgressRule`</span> and <span pulumi-lang-nodejs="`aws.vpc.SecurityGroupIngressRule`" pulumi-lang-dotnet="`aws.vpc.SecurityGroupIngressRule`" pulumi-lang-go="`vpc.SecurityGroupIngressRule`" pulumi-lang-python="`vpc.SecurityGroupIngressRule`" pulumi-lang-yaml="`aws.vpc.SecurityGroupIngressRule`" pulumi-lang-java="`aws.vpc.SecurityGroupIngressRule`">`aws.vpc.SecurityGroupIngressRule`</span> resources in conjunction with the <span pulumi-lang-nodejs="`aws.ec2.SecurityGroup`" pulumi-lang-dotnet="`aws.ec2.SecurityGroup`" pulumi-lang-go="`ec2.SecurityGroup`" pulumi-lang-python="`ec2.SecurityGroup`" pulumi-lang-yaml="`aws.ec2.SecurityGroup`" pulumi-lang-java="`aws.ec2.SecurityGroup`">`aws.ec2.SecurityGroup`</span> resource with _in-line rules_ (using the <span pulumi-lang-nodejs="`ingress`" pulumi-lang-dotnet="`Ingress`" pulumi-lang-go="`ingress`" pulumi-lang-python="`ingress`" pulumi-lang-yaml="`ingress`" pulumi-lang-java="`ingress`">`ingress`</span> and <span pulumi-lang-nodejs="`egress`" pulumi-lang-dotnet="`Egress`" pulumi-lang-go="`egress`" pulumi-lang-python="`egress`" pulumi-lang-yaml="`egress`" pulumi-lang-java="`egress`">`egress`</span> arguments of <span pulumi-lang-nodejs="`aws.ec2.SecurityGroup`" pulumi-lang-dotnet="`aws.ec2.SecurityGroup`" pulumi-lang-go="`ec2.SecurityGroup`" pulumi-lang-python="`ec2.SecurityGroup`" pulumi-lang-yaml="`aws.ec2.SecurityGroup`" pulumi-lang-java="`aws.ec2.SecurityGroup`">`aws.ec2.SecurityGroup`</span>) or the <span pulumi-lang-nodejs="`aws.ec2.SecurityGroupRule`" pulumi-lang-dotnet="`aws.ec2.SecurityGroupRule`" pulumi-lang-go="`ec2.SecurityGroupRule`" pulumi-lang-python="`ec2.SecurityGroupRule`" pulumi-lang-yaml="`aws.ec2.SecurityGroupRule`" pulumi-lang-java="`aws.ec2.SecurityGroupRule`">`aws.ec2.SecurityGroupRule`</span> resource. Doing so may cause rule conflicts, perpetual differences, and result in rules being overwritten.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpc.SecurityGroupEgressRule("example", {
/// securityGroupId: exampleAwsSecurityGroup.id,
/// cidrIpv4: "10.0.0.0/8",
/// fromPort: 80,
/// ipProtocol: "tcp",
/// toPort: 80,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpc.SecurityGroupEgressRule("example",
/// security_group_id=example_aws_security_group["id"],
/// cidr_ipv4="10.0.0.0/8",
/// from_port=80,
/// ip_protocol="tcp",
/// to_port=80)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Vpc.SecurityGroupEgressRule("example", new()
/// {
/// SecurityGroupId = exampleAwsSecurityGroup.Id,
/// CidrIpv4 = "10.0.0.0/8",
/// FromPort = 80,
/// IpProtocol = "tcp",
/// ToPort = 80,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vpc.NewSecurityGroupEgressRule(ctx, "example", &vpc.SecurityGroupEgressRuleArgs{
/// SecurityGroupId: pulumi.Any(exampleAwsSecurityGroup.Id),
/// CidrIpv4:        pulumi.String("10.0.0.0/8"),
/// FromPort:        pulumi.Int(80),
/// IpProtocol:      pulumi.String("tcp"),
/// ToPort:          pulumi.Int(80),
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
/// import com.pulumi.aws.vpc.SecurityGroupEgressRule;
/// import com.pulumi.aws.vpc.SecurityGroupEgressRuleArgs;
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
/// var example = new SecurityGroupEgressRule("example", SecurityGroupEgressRuleArgs.builder()
/// .securityGroupId(exampleAwsSecurityGroup.id())
/// .cidrIpv4("10.0.0.0/8")
/// .fromPort(80)
/// .ipProtocol("tcp")
/// .toPort(80)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:vpc:SecurityGroupEgressRule
/// properties:
/// securityGroupId: ${exampleAwsSecurityGroup.id}
/// cidrIpv4: 10.0.0.0/8
/// fromPort: 80
/// ipProtocol: tcp
/// toPort: 80
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> - (String) ID of the security group rule.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import security group egress rules using the <span pulumi-lang-nodejs="`securityGroupRuleId`" pulumi-lang-dotnet="`SecurityGroupRuleId`" pulumi-lang-go="`securityGroupRuleId`" pulumi-lang-python="`security_group_rule_id`" pulumi-lang-yaml="`securityGroupRuleId`" pulumi-lang-java="`securityGroupRuleId`">`security_group_rule_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:vpc/securityGroupEgressRule:SecurityGroupEgressRule example sgr-02108b27edd666983
/// ```
class SecurityGroupEgressRule extends CustomResource {
  /// The Amazon Resource Name (ARN) of the security group rule.
  late final Output<String> arn;

  /// The destination IPv4 CIDR range.
  late final Output<String?> cidrIpv4;

  /// The destination IPv6 CIDR range.
  late final Output<String?> cidrIpv6;

  /// The security group rule description.
  late final Output<String?> description;

  /// The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type.
  late final Output<int?> fromPort;

  /// The IP protocol name or number. Use `-1` to specify all protocols. Note that if <span pulumi-lang-nodejs="`ipProtocol`" pulumi-lang-dotnet="`IpProtocol`" pulumi-lang-go="`ipProtocol`" pulumi-lang-python="`ip_protocol`" pulumi-lang-yaml="`ipProtocol`" pulumi-lang-java="`ipProtocol`">`ip_protocol`</span> is set to `-1`, it translates to all protocols, all port ranges, and <span pulumi-lang-nodejs="`fromPort`" pulumi-lang-dotnet="`FromPort`" pulumi-lang-go="`fromPort`" pulumi-lang-python="`from_port`" pulumi-lang-yaml="`fromPort`" pulumi-lang-java="`fromPort`">`from_port`</span> and <span pulumi-lang-nodejs="`toPort`" pulumi-lang-dotnet="`ToPort`" pulumi-lang-go="`toPort`" pulumi-lang-python="`to_port`" pulumi-lang-yaml="`toPort`" pulumi-lang-java="`toPort`">`to_port`</span> values should not be defined.
  late final Output<String> ipProtocol;

  /// The ID of the destination prefix list.
  late final Output<String?> prefixListId;

  /// The destination security group that is referenced in the rule.
  late final Output<String?> referencedSecurityGroupId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the security group.
  late final Output<String> securityGroupId;

  /// The ID of the security group rule.
  late final Output<String> securityGroupRuleId;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.
  ///
  /// > **Note** Although <span pulumi-lang-nodejs="`cidrIpv4`" pulumi-lang-dotnet="`CidrIpv4`" pulumi-lang-go="`cidrIpv4`" pulumi-lang-python="`cidr_ipv4`" pulumi-lang-yaml="`cidrIpv4`" pulumi-lang-java="`cidrIpv4`">`cidr_ipv4`</span>, <span pulumi-lang-nodejs="`cidrIpv6`" pulumi-lang-dotnet="`CidrIpv6`" pulumi-lang-go="`cidrIpv6`" pulumi-lang-python="`cidr_ipv6`" pulumi-lang-yaml="`cidrIpv6`" pulumi-lang-java="`cidrIpv6`">`cidr_ipv6`</span>, <span pulumi-lang-nodejs="`prefixListId`" pulumi-lang-dotnet="`PrefixListId`" pulumi-lang-go="`prefixListId`" pulumi-lang-python="`prefix_list_id`" pulumi-lang-yaml="`prefixListId`" pulumi-lang-java="`prefixListId`">`prefix_list_id`</span>, and <span pulumi-lang-nodejs="`referencedSecurityGroupId`" pulumi-lang-dotnet="`ReferencedSecurityGroupId`" pulumi-lang-go="`referencedSecurityGroupId`" pulumi-lang-python="`referenced_security_group_id`" pulumi-lang-yaml="`referencedSecurityGroupId`" pulumi-lang-java="`referencedSecurityGroupId`">`referenced_security_group_id`</span> are all marked as optional, you *must* provide one of them in order to configure the destination of the traffic. The <span pulumi-lang-nodejs="`fromPort`" pulumi-lang-dotnet="`FromPort`" pulumi-lang-go="`fromPort`" pulumi-lang-python="`from_port`" pulumi-lang-yaml="`fromPort`" pulumi-lang-java="`fromPort`">`from_port`</span> and <span pulumi-lang-nodejs="`toPort`" pulumi-lang-dotnet="`ToPort`" pulumi-lang-go="`toPort`" pulumi-lang-python="`to_port`" pulumi-lang-yaml="`toPort`" pulumi-lang-java="`toPort`">`to_port`</span> arguments are required unless <span pulumi-lang-nodejs="`ipProtocol`" pulumi-lang-dotnet="`IpProtocol`" pulumi-lang-go="`ipProtocol`" pulumi-lang-python="`ip_protocol`" pulumi-lang-yaml="`ipProtocol`" pulumi-lang-java="`ipProtocol`">`ip_protocol`</span> is set to `-1` or <span pulumi-lang-nodejs="`icmpv6`" pulumi-lang-dotnet="`Icmpv6`" pulumi-lang-go="`icmpv6`" pulumi-lang-python="`icmpv6`" pulumi-lang-yaml="`icmpv6`" pulumi-lang-java="`icmpv6`">`icmpv6`</span>.
  late final Output<int?> toPort;

  SecurityGroupEgressRule(
    String name, {
    SecurityGroupEgressRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpc/securityGroupEgressRule:SecurityGroupEgressRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cidrIpv4 = registerOutput<String?>('cidrIpv4');
    this.cidrIpv6 = registerOutput<String?>('cidrIpv6');
    this.description = registerOutput<String?>('description');
    this.fromPort = registerOutput<int?>('fromPort');
    this.ipProtocol = registerOutput<String>('ipProtocol');
    this.prefixListId = registerOutput<String?>('prefixListId');
    this.referencedSecurityGroupId =
        registerOutput<String?>('referencedSecurityGroupId');
    this.region = registerOutput<String>('region');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.securityGroupRuleId = registerOutput<String>('securityGroupRuleId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.toPort = registerOutput<int?>('toPort');
  }
}
