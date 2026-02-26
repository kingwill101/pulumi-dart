import 'package:pulumi/pulumi.dart';
import 'network_acl_rule_args.dart';

/// Creates an entry (a rule) in a network ACL with the specified rule number.
///
/// > **NOTE on Network ACLs and Network ACL Rules:** This provider currently
/// provides both a standalone Network ACL Rule resource and a Network ACL resource with rules
/// defined in-line. At this time you cannot use a Network ACL with in-line rules
/// in conjunction with any Network ACL Rule resources. Doing so will cause
/// a conflict of rule settings and will overwrite rules.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bar = new aws.ec2.NetworkAcl("bar", {vpcId: foo.id});
/// const barNetworkAclRule = new aws.ec2.NetworkAclRule("bar", {
/// networkAclId: bar.id,
/// ruleNumber: 200,
/// egress: false,
/// protocol: "tcp",
/// ruleAction: "allow",
/// cidrBlock: foo.cidrBlock,
/// fromPort: 22,
/// toPort: 22,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bar = aws.ec2.NetworkAcl("bar", vpc_id=foo["id"])
/// bar_network_acl_rule = aws.ec2.NetworkAclRule("bar",
/// network_acl_id=bar.id,
/// rule_number=200,
/// egress=False,
/// protocol="tcp",
/// rule_action="allow",
/// cidr_block=foo["cidrBlock"],
/// from_port=22,
/// to_port=22)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var bar = new Aws.Ec2.NetworkAcl("bar", new()
/// {
/// VpcId = foo.Id,
/// });
///
/// var barNetworkAclRule = new Aws.Ec2.NetworkAclRule("bar", new()
/// {
/// NetworkAclId = bar.Id,
/// RuleNumber = 200,
/// Egress = false,
/// Protocol = "tcp",
/// RuleAction = "allow",
/// CidrBlock = foo.CidrBlock,
/// FromPort = 22,
/// ToPort = 22,
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
/// bar, err := ec2.NewNetworkAcl(ctx, "bar", &ec2.NetworkAclArgs{
/// VpcId: pulumi.Any(foo.Id),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewNetworkAclRule(ctx, "bar", &ec2.NetworkAclRuleArgs{
/// NetworkAclId: bar.ID(),
/// RuleNumber:   pulumi.Int(200),
/// Egress:       pulumi.Bool(false),
/// Protocol:     pulumi.String("tcp"),
/// RuleAction:   pulumi.String("allow"),
/// CidrBlock:    pulumi.Any(foo.CidrBlock),
/// FromPort:     pulumi.Int(22),
/// ToPort:       pulumi.Int(22),
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
/// import com.pulumi.aws.ec2.NetworkAcl;
/// import com.pulumi.aws.ec2.NetworkAclArgs;
/// import com.pulumi.aws.ec2.NetworkAclRule;
/// import com.pulumi.aws.ec2.NetworkAclRuleArgs;
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
/// var bar = new NetworkAcl("bar", NetworkAclArgs.builder()
/// .vpcId(foo.id())
/// .build());
///
/// var barNetworkAclRule = new NetworkAclRule("barNetworkAclRule", NetworkAclRuleArgs.builder()
/// .networkAclId(bar.id())
/// .ruleNumber(200)
/// .egress(false)
/// .protocol("tcp")
/// .ruleAction("allow")
/// .cidrBlock(foo.cidrBlock())
/// .fromPort(22)
/// .toPort(22)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// bar:
/// type: aws:ec2:NetworkAcl
/// properties:
/// vpcId: ${foo.id}
/// barNetworkAclRule:
/// type: aws:ec2:NetworkAclRule
/// name: bar
/// properties:
/// networkAclId: ${bar.id}
/// ruleNumber: 200
/// egress: false
/// protocol: tcp
/// ruleAction: allow
/// cidrBlock: ${foo.cidrBlock}
/// fromPort: 22
/// toPort: 22
/// ```
/// <!--End PulumiCodeChooser -->
///
/// > **Note:** One of either <span pulumi-lang-nodejs="`cidrBlock`" pulumi-lang-dotnet="`CidrBlock`" pulumi-lang-go="`cidrBlock`" pulumi-lang-python="`cidr_block`" pulumi-lang-yaml="`cidrBlock`" pulumi-lang-java="`cidrBlock`">`cidr_block`</span> or <span pulumi-lang-nodejs="`ipv6CidrBlock`" pulumi-lang-dotnet="`Ipv6CidrBlock`" pulumi-lang-go="`ipv6CidrBlock`" pulumi-lang-python="`ipv6_cidr_block`" pulumi-lang-yaml="`ipv6CidrBlock`" pulumi-lang-java="`ipv6CidrBlock`">`ipv6_cidr_block`</span> is required.
///
/// ## Import
///
/// Using the procotol's decimal value:
///
///
/// **Using `pulumi import` to import** individual rules using `NETWORK_ACL_ID:RULE_NUMBER:PROTOCOL:EGRESS`, where `PROTOCOL` can be a decimal (such as "6") or string (such as "tcp") value. For example:
///
/// Using the procotol's string value:
///
/// ```sh
/// $ pulumi import aws:ec2/networkAclRule:NetworkAclRule my_rule acl-7aaabd18:100:tcp:false
/// ```
///
/// Using the procotol's decimal value:
///
/// ```sh
/// $ pulumi import aws:ec2/networkAclRule:NetworkAclRule my_rule acl-7aaabd18:100:6:false
/// ```
class NetworkAclRule extends CustomResource {
  /// The network range to allow or deny, in CIDR notation (for example 172.16.0.0/24 ).
  late final Output<String?> cidrBlock;

  /// Indicates whether this is an egress rule (rule is applied to traffic leaving the subnet). Default <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> egress;

  /// The from port to match.
  late final Output<int?> fromPort;

  /// ICMP protocol: The ICMP code. Required if specifying ICMP for the protocolE.g., -1
  ///
  /// > **NOTE:** If the value of <span pulumi-lang-nodejs="`protocol`" pulumi-lang-dotnet="`Protocol`" pulumi-lang-go="`protocol`" pulumi-lang-python="`protocol`" pulumi-lang-yaml="`protocol`" pulumi-lang-java="`protocol`">`protocol`</span> is `-1` or <span pulumi-lang-nodejs="`all`" pulumi-lang-dotnet="`All`" pulumi-lang-go="`all`" pulumi-lang-python="`all`" pulumi-lang-yaml="`all`" pulumi-lang-java="`all`">`all`</span>, the <span pulumi-lang-nodejs="`fromPort`" pulumi-lang-dotnet="`FromPort`" pulumi-lang-go="`fromPort`" pulumi-lang-python="`from_port`" pulumi-lang-yaml="`fromPort`" pulumi-lang-java="`fromPort`">`from_port`</span> and <span pulumi-lang-nodejs="`toPort`" pulumi-lang-dotnet="`ToPort`" pulumi-lang-go="`toPort`" pulumi-lang-python="`to_port`" pulumi-lang-yaml="`toPort`" pulumi-lang-java="`toPort`">`to_port`</span> values will be ignored and the rule will apply to all ports.
  ///
  /// > **NOTE:** If the value of <span pulumi-lang-nodejs="`icmpType`" pulumi-lang-dotnet="`IcmpType`" pulumi-lang-go="`icmpType`" pulumi-lang-python="`icmp_type`" pulumi-lang-yaml="`icmpType`" pulumi-lang-java="`icmpType`">`icmp_type`</span> is `-1` (which results in a wildcard ICMP type), the <span pulumi-lang-nodejs="`icmpCode`" pulumi-lang-dotnet="`IcmpCode`" pulumi-lang-go="`icmpCode`" pulumi-lang-python="`icmp_code`" pulumi-lang-yaml="`icmpCode`" pulumi-lang-java="`icmpCode`">`icmp_code`</span> must also be set to `-1` (wildcard ICMP code).
  ///
  /// > Note: For more information on ICMP types and codes, see here: https://www.iana.org/assignments/icmp-parameters/icmp-parameters.xhtml
  late final Output<int?> icmpCode;

  /// ICMP protocol: The ICMP type. Required if specifying ICMP for the protocolE.g., -1
  late final Output<int?> icmpType;

  /// The IPv6 CIDR block to allow or deny.
  late final Output<String?> ipv6CidrBlock;

  /// The ID of the network ACL.
  late final Output<String> networkAclId;

  /// The protocol. A value of -1 means all protocols.
  late final Output<String> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Indicates whether to allow or deny the traffic that matches the rule. Accepted values: <span pulumi-lang-nodejs="`allow`" pulumi-lang-dotnet="`Allow`" pulumi-lang-go="`allow`" pulumi-lang-python="`allow`" pulumi-lang-yaml="`allow`" pulumi-lang-java="`allow`">`allow`</span> | <span pulumi-lang-nodejs="`deny`" pulumi-lang-dotnet="`Deny`" pulumi-lang-go="`deny`" pulumi-lang-python="`deny`" pulumi-lang-yaml="`deny`" pulumi-lang-java="`deny`">`deny`</span>
  late final Output<String> ruleAction;

  /// The rule number for the entry (for example, 100). ACL entries are processed in ascending order by rule number.
  late final Output<int> ruleNumber;

  /// The to port to match.
  late final Output<int?> toPort;

  NetworkAclRule(
    String name, {
    NetworkAclRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkAclRule:NetworkAclRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cidrBlock = registerOutput<String?>('cidrBlock');
    this.egress = registerOutput<bool?>('egress');
    this.fromPort = registerOutput<int?>('fromPort');
    this.icmpCode = registerOutput<int?>('icmpCode');
    this.icmpType = registerOutput<int?>('icmpType');
    this.ipv6CidrBlock = registerOutput<String?>('ipv6CidrBlock');
    this.networkAclId = registerOutput<String>('networkAclId');
    this.protocol = registerOutput<String>('protocol');
    this.region = registerOutput<String>('region');
    this.ruleAction = registerOutput<String>('ruleAction');
    this.ruleNumber = registerOutput<int>('ruleNumber');
    this.toPort = registerOutput<int?>('toPort');
  }
}
