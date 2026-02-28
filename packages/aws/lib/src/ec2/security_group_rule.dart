import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_group_rule_args.dart';

/// Provides a security group rule resource. Represents a single `ingress` or `egress` group rule, which can be added to external Security Groups.
///
/// > **NOTE:** Avoid using the `aws.ec2.SecurityGroupRule` resource, as it struggles with managing multiple CIDR blocks, and, due to the historical lack of unique IDs, tags and descriptions. To avoid these problems, use the current best practice of the `aws.vpc.SecurityGroupEgressRule` and `aws.vpc.SecurityGroupIngressRule` resources with one CIDR block per rule.
///
/// !> **WARNING:** You should not use the `aws.ec2.SecurityGroupRule` resource in conjunction with `aws.vpc.SecurityGroupEgressRule` and `aws.vpc.SecurityGroupIngressRule` resources or with an `aws.ec2.SecurityGroup` resource that has in-line rules. Doing so may cause rule conflicts, perpetual differences, and result in rules being overwritten.
///
/// > **NOTE:** Setting `protocol = "all"` or `protocol = -1` with `from_port` and `to_port` will result in the EC2 API creating a security group rule with all ports open. This API behavior cannot be controlled by this provider and may generate warnings in the future.
///
/// > **NOTE:** Referencing Security Groups across VPC peering has certain restrictions. More information is available in the [VPC Peering User Guide](https://docs.aws.amazon.com/vpc/latest/peering/vpc-peering-security-groups.html).
///
/// ## Example Usage
///
/// Basic usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.SecurityGroupRule("example", {
///     type: "ingress",
///     fromPort: 0,
///     toPort: 65535,
///     protocol: aws.ec2.ProtocolType.TCP,
///     cidrBlocks: [exampleAwsVpc.cidrBlock],
///     ipv6CidrBlocks: [exampleAwsVpc.ipv6CidrBlock],
///     securityGroupId: "sg-123456",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.SecurityGroupRule("example",
///     type="ingress",
///     from_port=0,
///     to_port=65535,
///     protocol=aws.ec2.ProtocolType.TCP,
///     cidr_blocks=[example_aws_vpc["cidrBlock"]],
///     ipv6_cidr_blocks=[example_aws_vpc["ipv6CidrBlock"]],
///     security_group_id="sg-123456")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.SecurityGroupRule("example", new()
///     {
///         Type = "ingress",
///         FromPort = 0,
///         ToPort = 65535,
///         Protocol = Aws.Ec2.ProtocolType.TCP,
///         CidrBlocks = new[]
///         {
///             exampleAwsVpc.CidrBlock,
///         },
///         Ipv6CidrBlocks = new[]
///         {
///             exampleAwsVpc.Ipv6CidrBlock,
///         },
///         SecurityGroupId = "sg-123456",
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
/// 		_, err := ec2.NewSecurityGroupRule(ctx, "example", &ec2.SecurityGroupRuleArgs{
/// 			Type:     pulumi.String("ingress"),
/// 			FromPort: pulumi.Int(0),
/// 			ToPort:   pulumi.Int(65535),
/// 			Protocol: pulumi.String(ec2.ProtocolTypeTCP),
/// 			CidrBlocks: pulumi.StringArray{
/// 				exampleAwsVpc.CidrBlock,
/// 			},
/// 			Ipv6CidrBlocks: pulumi.StringArray{
/// 				exampleAwsVpc.Ipv6CidrBlock,
/// 			},
/// 			SecurityGroupId: pulumi.String("sg-123456"),
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
/// import com.pulumi.aws.ec2.SecurityGroupRule;
/// import com.pulumi.aws.ec2.SecurityGroupRuleArgs;
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
///         var example = new SecurityGroupRule("example", SecurityGroupRuleArgs.builder()
///             .type("ingress")
///             .fromPort(0)
///             .toPort(65535)
///             .protocol("tcp")
///             .cidrBlocks(exampleAwsVpc.cidrBlock())
///             .ipv6CidrBlocks(exampleAwsVpc.ipv6CidrBlock())
///             .securityGroupId("sg-123456")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:SecurityGroupRule
///     properties:
///       type: ingress
///       fromPort: 0
///       toPort: 65535
///       protocol: tcp
///       cidrBlocks:
///         - ${exampleAwsVpc.cidrBlock}
///       ipv6CidrBlocks:
///         - ${exampleAwsVpc.ipv6CidrBlock}
///       securityGroupId: sg-123456
/// ```
///
///
/// ### Usage With Prefix List IDs
///
/// Prefix Lists are either managed by AWS internally, or created by the customer using a
/// Managed Prefix List resource. Prefix Lists provided by
/// AWS are associated with a prefix list name, or service name, that is linked to a specific region.
///
/// Prefix list IDs are exported on VPC Endpoints, so you can use this format:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // ...
/// const myEndpoint = new aws.ec2.VpcEndpoint("my_endpoint", {});
/// const allowAll = new aws.ec2.SecurityGroupRule("allow_all", {
///     type: "egress",
///     toPort: 0,
///     protocol: "-1",
///     prefixListIds: [myEndpoint.prefixListId],
///     fromPort: 0,
///     securityGroupId: "sg-123456",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # ...
/// my_endpoint = aws.ec2.VpcEndpoint("my_endpoint")
/// allow_all = aws.ec2.SecurityGroupRule("allow_all",
///     type="egress",
///     to_port=0,
///     protocol="-1",
///     prefix_list_ids=[my_endpoint.prefix_list_id],
///     from_port=0,
///     security_group_id="sg-123456")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // ...
///     var myEndpoint = new Aws.Ec2.VpcEndpoint("my_endpoint");
///
///     var allowAll = new Aws.Ec2.SecurityGroupRule("allow_all", new()
///     {
///         Type = "egress",
///         ToPort = 0,
///         Protocol = "-1",
///         PrefixListIds = new[]
///         {
///             myEndpoint.PrefixListId,
///         },
///         FromPort = 0,
///         SecurityGroupId = "sg-123456",
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
/// 		// ...
/// 		myEndpoint, err := ec2.NewVpcEndpoint(ctx, "my_endpoint", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewSecurityGroupRule(ctx, "allow_all", &ec2.SecurityGroupRuleArgs{
/// 			Type:     pulumi.String("egress"),
/// 			ToPort:   pulumi.Int(0),
/// 			Protocol: pulumi.String("-1"),
/// 			PrefixListIds: pulumi.StringArray{
/// 				myEndpoint.PrefixListId,
/// 			},
/// 			FromPort:        pulumi.Int(0),
/// 			SecurityGroupId: pulumi.String("sg-123456"),
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
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.SecurityGroupRule;
/// import com.pulumi.aws.ec2.SecurityGroupRuleArgs;
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
///         // ...
///         var myEndpoint = new VpcEndpoint("myEndpoint");
///
///         var allowAll = new SecurityGroupRule("allowAll", SecurityGroupRuleArgs.builder()
///             .type("egress")
///             .toPort(0)
///             .protocol("-1")
///             .prefixListIds(myEndpoint.prefixListId())
///             .fromPort(0)
///             .securityGroupId("sg-123456")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   allowAll:
///     type: aws:ec2:SecurityGroupRule
///     name: allow_all
///     properties:
///       type: egress
///       toPort: 0
///       protocol: '-1'
///       prefixListIds:
///         - ${myEndpoint.prefixListId}
///       fromPort: 0
///       securityGroupId: sg-123456
///   # ...
///   myEndpoint:
///     type: aws:ec2:VpcEndpoint
///     name: my_endpoint
/// ```
///
///
/// You can also find a specific Prefix List using the `aws.ec2.getPrefixList`
/// or `ec2_managed_prefix_list` data sources:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const s3 = current.then(current => aws.ec2.getPrefixList({
///     name: `com.amazonaws.${current.region}.s3`,
/// }));
/// const s3GatewayEgress = new aws.ec2.SecurityGroupRule("s3_gateway_egress", {
///     description: "S3 Gateway Egress",
///     type: "egress",
///     securityGroupId: "sg-123456",
///     fromPort: 443,
///     toPort: 443,
///     protocol: aws.ec2.ProtocolType.TCP,
///     prefixListIds: [s3.then(s3 => s3.id)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// s3 = aws.ec2.get_prefix_list(name=f"com.amazonaws.{current.region}.s3")
/// s3_gateway_egress = aws.ec2.SecurityGroupRule("s3_gateway_egress",
///     description="S3 Gateway Egress",
///     type="egress",
///     security_group_id="sg-123456",
///     from_port=443,
///     to_port=443,
///     protocol=aws.ec2.ProtocolType.TCP,
///     prefix_list_ids=[s3.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetRegion.Invoke();
///
///     var s3 = Aws.Ec2.GetPrefixList.Invoke(new()
///     {
///         Name = $"com.amazonaws.{current.Apply(getRegionResult => getRegionResult.Region)}.s3",
///     });
///
///     var s3GatewayEgress = new Aws.Ec2.SecurityGroupRule("s3_gateway_egress", new()
///     {
///         Description = "S3 Gateway Egress",
///         Type = "egress",
///         SecurityGroupId = "sg-123456",
///         FromPort = 443,
///         ToPort = 443,
///         Protocol = Aws.Ec2.ProtocolType.TCP,
///         PrefixListIds = new[]
///         {
///             s3.Apply(getPrefixListResult => getPrefixListResult.Id),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		s3, err := ec2.GetPrefixList(ctx, &ec2.GetPrefixListArgs{
/// 			Name: pulumi.StringRef(fmt.Sprintf("com.amazonaws.%v.s3", current.Region)),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewSecurityGroupRule(ctx, "s3_gateway_egress", &ec2.SecurityGroupRuleArgs{
/// 			Description:     pulumi.String("S3 Gateway Egress"),
/// 			Type:            pulumi.String("egress"),
/// 			SecurityGroupId: pulumi.String("sg-123456"),
/// 			FromPort:        pulumi.Int(443),
/// 			ToPort:          pulumi.Int(443),
/// 			Protocol:        pulumi.String(ec2.ProtocolTypeTCP),
/// 			PrefixListIds: pulumi.StringArray{
/// 				pulumi.String(s3.Id),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetPrefixListArgs;
/// import com.pulumi.aws.ec2.SecurityGroupRule;
/// import com.pulumi.aws.ec2.SecurityGroupRuleArgs;
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
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var s3 = Ec2Functions.getPrefixList(GetPrefixListArgs.builder()
///             .name(String.format("com.amazonaws.%s.s3", current.region()))
///             .build());
///
///         var s3GatewayEgress = new SecurityGroupRule("s3GatewayEgress", SecurityGroupRuleArgs.builder()
///             .description("S3 Gateway Egress")
///             .type("egress")
///             .securityGroupId("sg-123456")
///             .fromPort(443)
///             .toPort(443)
///             .protocol("tcp")
///             .prefixListIds(s3.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   s3GatewayEgress:
///     type: aws:ec2:SecurityGroupRule
///     name: s3_gateway_egress
///     properties:
///       description: S3 Gateway Egress
///       type: egress
///       securityGroupId: sg-123456
///       fromPort: 443
///       toPort: 443
///       protocol: tcp
///       prefixListIds:
///         - ${s3.id}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   s3:
///     fn::invoke:
///       function: aws:ec2:getPrefixList
///       arguments:
///         name: com.amazonaws.${current.region}.s3
/// ```
///
///
/// ## Import
///
/// Import a rule with various IPv4 and IPv6 source CIDR blocks:
///
///
/// Import a rule, applicable to all ports, with a protocol other than TCP/UDP/ICMP/ICMPV6/ALL, e.g., Multicast Transport Protocol (MTP), using the IANA protocol number. For example: 92.
///
///
/// Import a default any/any egress rule to 0.0.0.0/0:
///
///
/// Import an egress rule with a prefix list ID destination:
///
///
/// Import a rule applicable to all protocols and ports with a security group source:
///
///
/// Import a rule that has itself and an IPv6 CIDR block as sources:
///
///
/// **Using `pulumi import` to import** Security Group Rules using the `security_group_id`, `type`, `protocol`, `from_port`, `to_port`, and source(s)/destination(s) (such as a `cidr_block`) separated by underscores (`_`). All parts are required. For example:
///
/// **NOTE:** Not all rule permissions (e.g., not all of a rule's CIDR blocks) need to be imported for this provider to manage rule permissions. However, importing some of a rule's permissions but not others, and then making changes to the rule will result in the creation of an additional rule to capture the updated permissions. Rule permissions that were not imported are left intact in the original rule.
///
/// Import an ingress rule in security group `sg-6e616f6d69` for TCP port 8000 with an IPv4 destination CIDR of `10.0.3.0/24`:
///
/// ```sh
/// $ pulumi import aws:ec2/securityGroupRule:SecurityGroupRule ingress sg-6e616f6d69_ingress_tcp_8000_8000_10.0.3.0/24
/// ```
///
/// Import a rule with various IPv4 and IPv6 source CIDR blocks:
///
/// ```sh
/// $ pulumi import aws:ec2/securityGroupRule:SecurityGroupRule ingress sg-4973616163_ingress_tcp_100_121_10.1.0.0/16_2001:db8::/48_10.2.0.0/16_2002:db8::/48
/// ```
///
/// Import a rule, applicable to all ports, with a protocol other than TCP/UDP/ICMP/ICMPV6/ALL, e.g., Multicast Transport Protocol (MTP), using the IANA protocol number. For example: 92.
///
/// ```sh
/// $ pulumi import aws:ec2/securityGroupRule:SecurityGroupRule ingress sg-6777656e646f6c796e_ingress_92_0_65536_10.0.3.0/24_10.0.4.0/24
/// ```
///
/// Import a default any/any egress rule to 0.0.0.0/0:
///
/// ```sh
/// $ pulumi import aws:ec2/securityGroupRule:SecurityGroupRule default_egress sg-6777656e646f6c796e_egress_all_0_0_0.0.0.0/0
/// ```
///
/// Import an egress rule with a prefix list ID destination:
///
/// ```sh
/// $ pulumi import aws:ec2/securityGroupRule:SecurityGroupRule egress sg-62726f6479_egress_tcp_8000_8000_pl-6469726b
/// ```
///
/// Import a rule applicable to all protocols and ports with a security group source:
///
/// ```sh
/// $ pulumi import aws:ec2/securityGroupRule:SecurityGroupRule ingress_rule sg-7472697374616e_ingress_all_0_65536_sg-6176657279
/// ```
///
/// Import a rule that has itself and an IPv6 CIDR block as sources:
///
/// ```sh
/// $ pulumi import aws:ec2/securityGroupRule:SecurityGroupRule rule_name sg-656c65616e6f72_ingress_tcp_80_80_self_2001:db8::/48
/// ```
class SecurityGroupRule extends pulumi.CustomResource {
  /// List of CIDR blocks. Cannot be specified with `source_security_group_id` or `self`.
  late final pulumi.Output<List<String>?> cidrBlocks;
  /// Description of the rule.
  late final pulumi.Output<String?> description;
  /// Start port (or ICMP type number if protocol is "icmp" or "icmpv6").
  late final pulumi.Output<int> fromPort;
  /// List of IPv6 CIDR blocks. Cannot be specified with `source_security_group_id` or `self`.
  late final pulumi.Output<List<String>?> ipv6CidrBlocks;
  /// List of Prefix List IDs.
  late final pulumi.Output<List<String>?> prefixListIds;
  /// Protocol. If not icmp, icmpv6, tcp, udp, or all use the [protocol number](https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)
  late final pulumi.Output<String> protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// > **Note** Although `cidr_blocks`, `ipv6_cidr_blocks`, `prefix_list_ids`, and `source_security_group_id` are all marked as optional, you _must_ provide one of them in order to configure the source of the traffic.
  late final pulumi.Output<String> region;
  /// Security group to apply this rule to.
  late final pulumi.Output<String> securityGroupId;
  /// If the `aws.ec2.SecurityGroupRule` resource has a single source or destination then this is the AWS Security Group Rule resource ID. Otherwise it is empty.
  late final pulumi.Output<String> securityGroupRuleId;
  /// Whether the security group itself will be added as a source to this ingress rule. Cannot be specified with `cidr_blocks`, `ipv6_cidr_blocks`, or `source_security_group_id`.
  late final pulumi.Output<bool?> self;
  /// Security group id to allow access to/from, depending on the `type`. Cannot be specified with `cidr_blocks`, `ipv6_cidr_blocks`, or `self`.
  late final pulumi.Output<String> sourceSecurityGroupId;
  /// End port (or ICMP code if protocol is "icmp").
  late final pulumi.Output<int> toPort;
  /// Type of rule being created. Valid options are `ingress` (inbound)
  /// or `egress` (outbound).
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  /// Creates a new [SecurityGroupRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityGroupRule]. {@macro pulumi_ec2_security_group_rule_security_group_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityGroupRule(
    String name, {
    SecurityGroupRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/securityGroupRule:SecurityGroupRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidrBlocks = registerOutput<List<String>?>('cidrBlocks');
    this.description = registerOutput<String?>('description');
    this.fromPort = registerOutput<int>('fromPort');
    this.ipv6CidrBlocks = registerOutput<List<String>?>('ipv6CidrBlocks');
    this.prefixListIds = registerOutput<List<String>?>('prefixListIds');
    this.protocol = registerOutput<String>('protocol');
    this.region = registerOutput<String>('region');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.securityGroupRuleId = registerOutput<String>('securityGroupRuleId');
    this.self = registerOutput<bool?>('self');
    this.sourceSecurityGroupId = registerOutput<String>('sourceSecurityGroupId');
    this.toPort = registerOutput<int>('toPort');
    this.type = registerOutput<String>('type');
  }
}
