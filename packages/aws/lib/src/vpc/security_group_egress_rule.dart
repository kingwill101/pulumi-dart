import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_group_egress_rule_args.dart';

/// Manages an outbound (egress) rule for a security group.
///
/// When specifying an outbound rule for your security group in a VPC, the configuration must include a destination for the traffic.
///
/// > **NOTE:** Using `aws.vpc.SecurityGroupEgressRule` and `aws.vpc.SecurityGroupIngressRule` resources is the current best practice. Avoid using the `aws.ec2.SecurityGroupRule` resource and the `ingress` and `egress` arguments of the `aws.ec2.SecurityGroup` resource for configuring in-line rules, as they struggle with managing multiple CIDR blocks, and tags and descriptions due to the historical lack of unique IDs.
///
/// !> **WARNING:** You should not use the `aws.vpc.SecurityGroupEgressRule` and `aws.vpc.SecurityGroupIngressRule` resources in conjunction with the `aws.ec2.SecurityGroup` resource with _in-line rules_ (using the `ingress` and `egress` arguments of `aws.ec2.SecurityGroup`) or the `aws.ec2.SecurityGroupRule` resource. Doing so may cause rule conflicts, perpetual differences, and result in rules being overwritten.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpc.SecurityGroupEgressRule("example", {
///     securityGroupId: exampleAwsSecurityGroup.id,
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
/// example = aws.vpc.SecurityGroupEgressRule("example",
///     security_group_id=example_aws_security_group["id"],
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
///     var example = new Aws.Vpc.SecurityGroupEgressRule("example", new()
///     {
///         SecurityGroupId = exampleAwsSecurityGroup.Id,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpc.NewSecurityGroupEgressRule(ctx, "example", &vpc.SecurityGroupEgressRuleArgs{
/// 			SecurityGroupId: pulumi.Any(exampleAwsSecurityGroup.Id),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new SecurityGroupEgressRule("example", SecurityGroupEgressRuleArgs.builder()
///             .securityGroupId(exampleAwsSecurityGroup.id())
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
///     type: aws:vpc:SecurityGroupEgressRule
///     properties:
///       securityGroupId: ${exampleAwsSecurityGroup.id}
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
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import security group egress rules using the `security_group_rule_id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpc/securityGroupEgressRule:SecurityGroupEgressRule example sgr-02108b27edd666983
/// ```
class SecurityGroupEgressRule extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the security group rule.
  late final pulumi.Output<String> arn;

  /// The destination IPv4 CIDR range.
  late final pulumi.Output<String?> cidrIpv4;

  /// The destination IPv6 CIDR range.
  late final pulumi.Output<String?> cidrIpv6;

  /// The security group rule description.
  late final pulumi.Output<String?> description;

  /// The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type.
  late final pulumi.Output<int?> fromPort;

  /// The IP protocol name or number. Use `-1` to specify all protocols. Note that if `ip_protocol` is set to `-1`, it translates to all protocols, all port ranges, and `from_port` and `to_port` values should not be defined.
  late final pulumi.Output<String> ipProtocol;

  /// The ID of the destination prefix list.
  late final pulumi.Output<String?> prefixListId;

  /// The destination security group that is referenced in the rule.
  late final pulumi.Output<String?> referencedSecurityGroupId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the security group.
  late final pulumi.Output<String> securityGroupId;

  /// The ID of the security group rule.
  late final pulumi.Output<String> securityGroupRuleId;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.
  ///
  /// > **Note** Although `cidr_ipv4`, `cidr_ipv6`, `prefix_list_id`, and `referenced_security_group_id` are all marked as optional, you *must* provide one of them in order to configure the destination of the traffic. The `from_port` and `to_port` arguments are required unless `ip_protocol` is set to `-1` or `icmpv6`.
  late final pulumi.Output<int?> toPort;

  /// Creates a new [SecurityGroupEgressRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityGroupEgressRule]. {@macro pulumi_vpc_security_group_egress_rule_security_group_egress_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityGroupEgressRule(
    String name, {
    SecurityGroupEgressRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:vpc/securityGroupEgressRule:SecurityGroupEgressRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.cidrIpv4 = registerOutput<String?>('cidrIpv4');
    this.cidrIpv6 = registerOutput<String?>('cidrIpv6');
    this.description = registerOutput<String?>('description');
    this.fromPort = registerOutput<int?>('fromPort');
    this.ipProtocol = registerOutput<String>('ipProtocol');
    this.prefixListId = registerOutput<String?>('prefixListId');
    this.referencedSecurityGroupId = registerOutput<String?>(
      'referencedSecurityGroupId',
    );
    this.region = registerOutput<String>('region');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.securityGroupRuleId = registerOutput<String>('securityGroupRuleId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.toPort = registerOutput<int?>('toPort');
  }
}
