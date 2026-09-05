import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_group_args.dart';
import 'security_group_egress.dart';
import 'security_group_ingress.dart';
import 'security_group_state.dart';

/// Provides a security group resource.
///
/// &gt; **NOTE:** Avoid using the `ingress` and `egress` arguments of the `aws.ec2.SecurityGroup` resource to configure in-line rules, as they struggle with managing multiple CIDR blocks, and, due to the historical lack of unique IDs, tags and descriptions. To avoid these problems, use the current best practice of the `aws.vpc.SecurityGroupEgressRule` and `aws.vpc.SecurityGroupIngressRule` resources with one CIDR block per rule.
///
/// &gt; **WARNING:** You should not use the `aws.ec2.SecurityGroup` resource with _in-line rules_ (using the `ingress` and `egress` arguments of `aws.ec2.SecurityGroup`) in conjunction with the `aws.vpc.SecurityGroupEgressRule` and `aws.vpc.SecurityGroupIngressRule` resources or the `aws.ec2.SecurityGroupRule` resource. Doing so may cause rule conflicts, perpetual differences, and result in rules being overwritten.
///
/// &gt; **NOTE:** Referencing Security Groups across VPC peering has certain restrictions. More information is available in the [VPC Peering User Guide](https://docs.aws.amazon.com/vpc/latest/peering/vpc-peering-security-groups.html).
///
/// &gt; **NOTE:** Due to [AWS Lambda improved VPC networking changes that began deploying in September 2019](https://aws.amazon.com/blogs/compute/announcing-improved-vpc-networking-for-aws-lambda-functions/), security groups associated with Lambda Functions can take up to 45 minutes to successfully delete. To allow for successful deletion, the provider will wait for at least 45 minutes even if a shorter delete timeout is specified.
///
/// &gt; **NOTE:** The `cidrBlocks` and `ipv6CidrBlocks` parameters are optional in the `ingress` and `egress` blocks. If nothing is specified, traffic will be blocked as described in _NOTE on Egress rules_ later.
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
/// const allowTls = new aws.ec2.SecurityGroup("allow_tls", {
///     name: "allow_tls",
///     description: "Allow TLS inbound traffic and all outbound traffic",
///     vpcId: main.id,
///     tags: {
///         Name: "allow_tls",
///     },
/// });
/// const allowTlsIpv4 = new aws.vpc.SecurityGroupIngressRule("allow_tls_ipv4", {
///     securityGroupId: allowTls.id,
///     cidrIpv4: main.cidrBlock,
///     fromPort: 443,
///     ipProtocol: "tcp",
///     toPort: 443,
/// });
/// const allowTlsIpv6 = new aws.vpc.SecurityGroupIngressRule("allow_tls_ipv6", {
///     securityGroupId: allowTls.id,
///     cidrIpv6: main.ipv6CidrBlock,
///     fromPort: 443,
///     ipProtocol: "tcp",
///     toPort: 443,
/// });
/// const allowAllTrafficIpv4 = new aws.vpc.SecurityGroupEgressRule("allow_all_traffic_ipv4", {
///     securityGroupId: allowTls.id,
///     cidrIpv4: "0.0.0.0/0",
///     ipProtocol: "-1",
/// });
/// const allowAllTrafficIpv6 = new aws.vpc.SecurityGroupEgressRule("allow_all_traffic_ipv6", {
///     securityGroupId: allowTls.id,
///     cidrIpv6: "::/0",
///     ipProtocol: "-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// allow_tls = aws.ec2.SecurityGroup("allow_tls",
///     name="allow_tls",
///     description="Allow TLS inbound traffic and all outbound traffic",
///     vpc_id=main["id"],
///     tags={
///         "Name": "allow_tls",
///     })
/// allow_tls_ipv4 = aws.vpc.SecurityGroupIngressRule("allow_tls_ipv4",
///     security_group_id=allow_tls.id,
///     cidr_ipv4=main["cidrBlock"],
///     from_port=443,
///     ip_protocol="tcp",
///     to_port=443)
/// allow_tls_ipv6 = aws.vpc.SecurityGroupIngressRule("allow_tls_ipv6",
///     security_group_id=allow_tls.id,
///     cidr_ipv6=main["ipv6CidrBlock"],
///     from_port=443,
///     ip_protocol="tcp",
///     to_port=443)
/// allow_all_traffic_ipv4 = aws.vpc.SecurityGroupEgressRule("allow_all_traffic_ipv4",
///     security_group_id=allow_tls.id,
///     cidr_ipv4="0.0.0.0/0",
///     ip_protocol="-1")
/// allow_all_traffic_ipv6 = aws.vpc.SecurityGroupEgressRule("allow_all_traffic_ipv6",
///     security_group_id=allow_tls.id,
///     cidr_ipv6="::/0",
///     ip_protocol="-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var allowTls = new Aws.Ec2.SecurityGroup("allow_tls", new()
///     {
///         Name = "allow_tls",
///         Description = "Allow TLS inbound traffic and all outbound traffic",
///         VpcId = main.Id,
///         Tags =
///         {
///             { "Name", "allow_tls" },
///         },
///     });
///
///     var allowTlsIpv4 = new Aws.Vpc.SecurityGroupIngressRule("allow_tls_ipv4", new()
///     {
///         SecurityGroupId = allowTls.Id,
///         CidrIpv4 = main.CidrBlock,
///         FromPort = 443,
///         IpProtocol = "tcp",
///         ToPort = 443,
///     });
///
///     var allowTlsIpv6 = new Aws.Vpc.SecurityGroupIngressRule("allow_tls_ipv6", new()
///     {
///         SecurityGroupId = allowTls.Id,
///         CidrIpv6 = main.Ipv6CidrBlock,
///         FromPort = 443,
///         IpProtocol = "tcp",
///         ToPort = 443,
///     });
///
///     var allowAllTrafficIpv4 = new Aws.Vpc.SecurityGroupEgressRule("allow_all_traffic_ipv4", new()
///     {
///         SecurityGroupId = allowTls.Id,
///         CidrIpv4 = "0.0.0.0/0",
///         IpProtocol = "-1",
///     });
///
///     var allowAllTrafficIpv6 = new Aws.Vpc.SecurityGroupEgressRule("allow_all_traffic_ipv6", new()
///     {
///         SecurityGroupId = allowTls.Id,
///         CidrIpv6 = "::/0",
///         IpProtocol = "-1",
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
/// 		allowTls, err := ec2.NewSecurityGroup(ctx, "allow_tls", &ec2.SecurityGroupArgs{
/// 			Name:        pulumi.String("allow_tls"),
/// 			Description: pulumi.String("Allow TLS inbound traffic and all outbound traffic"),
/// 			VpcId:       pulumi.Any(main.Id),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("allow_tls"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewSecurityGroupIngressRule(ctx, "allow_tls_ipv4", &vpc.SecurityGroupIngressRuleArgs{
/// 			SecurityGroupId: allowTls.ID().ToIDOutput().ToStringOutput(),
/// 			CidrIpv4:        pulumi.Any(main.CidrBlock),
/// 			FromPort:        pulumi.Int(443),
/// 			IpProtocol:      pulumi.String("tcp"),
/// 			ToPort:          pulumi.Int(443),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewSecurityGroupIngressRule(ctx, "allow_tls_ipv6", &vpc.SecurityGroupIngressRuleArgs{
/// 			SecurityGroupId: allowTls.ID().ToIDOutput().ToStringOutput(),
/// 			CidrIpv6:        pulumi.Any(main.Ipv6CidrBlock),
/// 			FromPort:        pulumi.Int(443),
/// 			IpProtocol:      pulumi.String("tcp"),
/// 			ToPort:          pulumi.Int(443),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewSecurityGroupEgressRule(ctx, "allow_all_traffic_ipv4", &vpc.SecurityGroupEgressRuleArgs{
/// 			SecurityGroupId: allowTls.ID().ToIDOutput().ToStringOutput(),
/// 			CidrIpv4:        pulumi.String("0.0.0.0/0"),
/// 			IpProtocol:      pulumi.String("-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewSecurityGroupEgressRule(ctx, "allow_all_traffic_ipv6", &vpc.SecurityGroupEgressRuleArgs{
/// 			SecurityGroupId: allowTls.ID().ToIDOutput().ToStringOutput(),
/// 			CidrIpv6:        pulumi.String("::/0"),
/// 			IpProtocol:      pulumi.String("-1"),
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
/// resource "aws_ec2_securitygroup" "allow_tls" {
///   name        = "allow_tls"
///   description = "Allow TLS inbound traffic and all outbound traffic"
///   vpc_id      = main.id
///   tags = {
///     "Name" = "allow_tls"
///   }
/// }
/// resource "aws_vpc_securitygroupingressrule" "allow_tls_ipv4" {
///   security_group_id = aws_ec2_securitygroup.allow_tls.id
///   cidr_ipv4         = main.cidrBlock
///   from_port         = 443
///   ip_protocol       = "tcp"
///   to_port           = 443
/// }
/// resource "aws_vpc_securitygroupingressrule" "allow_tls_ipv6" {
///   security_group_id = aws_ec2_securitygroup.allow_tls.id
///   cidr_ipv6         = main.ipv6CidrBlock
///   from_port         = 443
///   ip_protocol       = "tcp"
///   to_port           = 443
/// }
/// resource "aws_vpc_securitygroupegressrule" "allow_all_traffic_ipv4" {
///   security_group_id = aws_ec2_securitygroup.allow_tls.id
///   cidr_ipv4         = "0.0.0.0/0"
///   ip_protocol       = "-1"
/// }
/// resource "aws_vpc_securitygroupegressrule" "allow_all_traffic_ipv6" {
///   security_group_id = aws_ec2_securitygroup.allow_tls.id
///   cidr_ipv6         = "::/0"
///   ip_protocol       = "-1"
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
/// import com.pulumi.aws.vpc.SecurityGroupEgressRule;
/// import com.pulumi.aws.vpc.SecurityGroupEgressRuleArgs;
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
///         var allowTls = new SecurityGroup("allowTls", SecurityGroupArgs.builder()
///             .name("allow_tls")
///             .description("Allow TLS inbound traffic and all outbound traffic")
///             .vpcId(main.id())
///             .tags(Map.of("Name", "allow_tls"))
///             .build());
///
///         var allowTlsIpv4 = new SecurityGroupIngressRule("allowTlsIpv4", SecurityGroupIngressRuleArgs.builder()
///             .securityGroupId(allowTls.id())
///             .cidrIpv4(main.cidrBlock())
///             .fromPort(443)
///             .ipProtocol("tcp")
///             .toPort(443)
///             .build());
///
///         var allowTlsIpv6 = new SecurityGroupIngressRule("allowTlsIpv6", SecurityGroupIngressRuleArgs.builder()
///             .securityGroupId(allowTls.id())
///             .cidrIpv6(main.ipv6CidrBlock())
///             .fromPort(443)
///             .ipProtocol("tcp")
///             .toPort(443)
///             .build());
///
///         var allowAllTrafficIpv4 = new SecurityGroupEgressRule("allowAllTrafficIpv4", SecurityGroupEgressRuleArgs.builder()
///             .securityGroupId(allowTls.id())
///             .cidrIpv4("0.0.0.0/0")
///             .ipProtocol("-1")
///             .build());
///
///         var allowAllTrafficIpv6 = new SecurityGroupEgressRule("allowAllTrafficIpv6", SecurityGroupEgressRuleArgs.builder()
///             .securityGroupId(allowTls.id())
///             .cidrIpv6("::/0")
///             .ipProtocol("-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   allowTls:
///     type: aws:ec2:SecurityGroup
///     name: allow_tls
///     properties:
///       name: allow_tls
///       description: Allow TLS inbound traffic and all outbound traffic
///       vpcId: ${main.id}
///       tags:
///         Name: allow_tls
///   allowTlsIpv4:
///     type: aws:vpc:SecurityGroupIngressRule
///     name: allow_tls_ipv4
///     properties:
///       securityGroupId: ${allowTls.id}
///       cidrIpv4: ${main.cidrBlock}
///       fromPort: 443
///       ipProtocol: tcp
///       toPort: 443
///   allowTlsIpv6:
///     type: aws:vpc:SecurityGroupIngressRule
///     name: allow_tls_ipv6
///     properties:
///       securityGroupId: ${allowTls.id}
///       cidrIpv6: ${main.ipv6CidrBlock}
///       fromPort: 443
///       ipProtocol: tcp
///       toPort: 443
///   allowAllTrafficIpv4:
///     type: aws:vpc:SecurityGroupEgressRule
///     name: allow_all_traffic_ipv4
///     properties:
///       securityGroupId: ${allowTls.id}
///       cidrIpv4: 0.0.0.0/0
///       ipProtocol: '-1'
///   allowAllTrafficIpv6:
///     type: aws:vpc:SecurityGroupEgressRule
///     name: allow_all_traffic_ipv6
///     properties:
///       securityGroupId: ${allowTls.id}
///       cidrIpv6: ::/0
///       ipProtocol: '-1'
/// ```
///
///
/// &gt; **NOTE on Egress rules:** By default, AWS creates an `ALLOW ALL` egress rule when creating a new Security Group inside of a VPC. When creating a new Security Group inside a VPC, **this provider will remove this default rule**, and require you specifically re-create it if you desire that rule. We feel this leads to fewer surprises in terms of controlling your egress rules. If you desire this rule to be in place, you can use this `egress` block:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.SecurityGroup("example", {egress: [{
///     fromPort: 0,
///     toPort: 0,
///     protocol: "-1",
///     cidrBlocks: ["0.0.0.0/0"],
///     ipv6CidrBlocks: ["::/0"],
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.SecurityGroup("example", egress=[{
///     "from_port": 0,
///     "to_port": 0,
///     "protocol": "-1",
///     "cidr_blocks": ["0.0.0.0/0"],
///     "ipv6_cidr_blocks": ["::/0"],
/// }])
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
///         Egress = new[]
///         {
///             new Aws.Ec2.Inputs.SecurityGroupEgressArgs
///             {
///                 FromPort = 0,
///                 ToPort = 0,
///                 Protocol = "-1",
///                 CidrBlocks = new[]
///                 {
///                     "0.0.0.0/0",
///                 },
///                 Ipv6CidrBlocks = new[]
///                 {
///                     "::/0",
///                 },
///             },
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewSecurityGroup(ctx, "example", &ec2.SecurityGroupArgs{
/// 			Egress: ec2.SecurityGroupEgressArray{
/// 				&ec2.SecurityGroupEgressArgs{
/// 					FromPort: pulumi.Int(0),
/// 					ToPort:   pulumi.Int(0),
/// 					Protocol: pulumi.String("-1"),
/// 					CidrBlocks: pulumi.StringArray{
/// 						pulumi.String("0.0.0.0/0"),
/// 					},
/// 					Ipv6CidrBlocks: pulumi.StringArray{
/// 						pulumi.String("::/0"),
/// 					},
/// 				},
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
/// resource "aws_ec2_securitygroup" "example" {
///   egress {
///     from_port        = 0
///     to_port          = 0
///     protocol         = "-1"
///     cidr_blocks      = ["0.0.0.0/0"]
///     ipv6_cidr_blocks = ["::/0"]
///   }
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
/// import com.pulumi.aws.ec2.inputs.SecurityGroupEgressArgs;
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
///             .egress(SecurityGroupEgressArgs.builder()
///                 .fromPort(0)
///                 .toPort(0)
///                 .protocol("-1")
///                 .cidrBlocks("0.0.0.0/0")
///                 .ipv6CidrBlocks("::/0")
///                 .build())
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
///       egress:
///         - fromPort: 0
///           toPort: 0
///           protocol: '-1'
///           cidrBlocks:
///             - 0.0.0.0/0
///           ipv6CidrBlocks:
///             - ::/0
/// ```
///
///
/// ### Usage With Prefix List IDs
///
/// Prefix Lists are either managed by AWS internally, or created by the customer using a
/// Prefix List resource. Prefix Lists provided by
/// AWS are associated with a prefix list name, or service name, that is linked to a specific region.
/// Prefix list IDs are exported on VPC Endpoints, so you can use this format:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myEndpoint = new aws.ec2.VpcEndpoint("my_endpoint", {});
/// const example = new aws.ec2.SecurityGroup("example", {egress: [{
///     fromPort: 0,
///     toPort: 0,
///     protocol: "-1",
///     prefixListIds: [myEndpoint.prefixListId],
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_endpoint = aws.ec2.VpcEndpoint("my_endpoint")
/// example = aws.ec2.SecurityGroup("example", egress=[{
///     "from_port": 0,
///     "to_port": 0,
///     "protocol": "-1",
///     "prefix_list_ids": [my_endpoint.prefix_list_id],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myEndpoint = new Aws.Ec2.VpcEndpoint("my_endpoint");
///
///     var example = new Aws.Ec2.SecurityGroup("example", new()
///     {
///         Egress = new[]
///         {
///             new Aws.Ec2.Inputs.SecurityGroupEgressArgs
///             {
///                 FromPort = 0,
///                 ToPort = 0,
///                 Protocol = "-1",
///                 PrefixListIds = new[]
///                 {
///                     myEndpoint.PrefixListId,
///                 },
///             },
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myEndpoint, err := ec2.NewVpcEndpoint(ctx, "my_endpoint", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewSecurityGroup(ctx, "example", &ec2.SecurityGroupArgs{
/// 			Egress: ec2.SecurityGroupEgressArray{
/// 				&ec2.SecurityGroupEgressArgs{
/// 					FromPort: pulumi.Int(0),
/// 					ToPort:   pulumi.Int(0),
/// 					Protocol: pulumi.String("-1"),
/// 					PrefixListIds: pulumi.StringArray{
/// 						myEndpoint.PrefixListId,
/// 					},
/// 				},
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
/// resource "aws_ec2_securitygroup" "example" {
///   egress {
///     from_port       = 0
///     to_port         = 0
///     protocol        = "-1"
///     prefix_list_ids = [aws_ec2_vpcendpoint.my_endpoint.prefix_list_id]
///   }
/// }
/// resource "aws_ec2_vpcendpoint" "my_endpoint" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.SecurityGroup;
/// import com.pulumi.aws.ec2.SecurityGroupArgs;
/// import com.pulumi.aws.ec2.inputs.SecurityGroupEgressArgs;
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
///         var myEndpoint = new VpcEndpoint("myEndpoint");
///
///         var example = new SecurityGroup("example", SecurityGroupArgs.builder()
///             .egress(SecurityGroupEgressArgs.builder()
///                 .fromPort(0)
///                 .toPort(0)
///                 .protocol("-1")
///                 .prefixListIds(myEndpoint.prefixListId())
///                 .build())
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
///       egress:
///         - fromPort: 0
///           toPort: 0
///           protocol: '-1'
///           prefixListIds:
///             - ${myEndpoint.prefixListId}
///   myEndpoint:
///     type: aws:ec2:VpcEndpoint
///     name: my_endpoint
/// ```
///
///
/// You can also find a specific Prefix List using the `aws.ec2.getPrefixList` data source.
///
/// ### Removing All Ingress and Egress Rules
///
/// The `ingress` and `egress` arguments are processed in attributes-as-blocks mode. Due to this, removing these arguments from the configuration will **not** cause the provider to destroy the managed rules. To subsequently remove all managed ingress and egress rules:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.SecurityGroup("example", {
///     name: "sg",
///     vpcId: exampleAwsVpc.id,
///     ingress: [],
///     egress: [],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.SecurityGroup("example",
///     name="sg",
///     vpc_id=example_aws_vpc["id"],
///     ingress=[],
///     egress=[])
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
///         Name = "sg",
///         VpcId = exampleAwsVpc.Id,
///         Ingress = new[] {},
///         Egress = new[] {},
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
/// 		_, err := ec2.NewSecurityGroup(ctx, "example", &ec2.SecurityGroupArgs{
/// 			Name:    pulumi.String("sg"),
/// 			VpcId:   pulumi.Any(exampleAwsVpc.Id),
/// 			Ingress: ec2.SecurityGroupIngressArray{},
/// 			Egress:  ec2.SecurityGroupEgressArray{},
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
///   name   = "sg"
///   vpc_id = exampleAwsVpc.id
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
///             .name("sg")
///             .vpcId(exampleAwsVpc.id())
///             .ingress()
///             .egress()
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
///       name: sg
///       vpcId: ${exampleAwsVpc.id}
///       ingress: []
///       egress: []
/// ```
///
///
/// ### Recreating a Security Group
///
/// A simple security group `name` change "forces new" the security group--the provider destroys the security group and creates a new one. (Likewise, `description`, `namePrefix`, or `vpcId` [cannot be changed](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/working-with-security-groups.html#creating-security-group).) Attempting to recreate the security group leads to a variety of complications depending on how it is used.
///
/// Security groups are generally associated with other resources--**more than 100** AWS Provider resources reference security groups. Referencing a resource from another resource creates a one-way dependency. For example, if you create an EC2 `aws.ec2.Instance` that has a `vpcSecurityGroupIds` argument that refers to an `aws.ec2.SecurityGroup` resource, the `aws.ec2.SecurityGroup` is a dependent of the `aws.ec2.Instance`. Because of this, the provider will create the security group first so that it can then be associated with the EC2 instance.
///
/// However, the dependency relationship actually goes both directions causing the _Security Group Deletion Problem_. AWS does not allow you to delete the security group associated with another resource (_e.g._, the `aws.ec2.Instance`).
///
/// The provider does not model bi-directional dependencies like this, but, even if it did, simply knowing the dependency situation would not be enough to solve it. For example, some resources must always have an associated security group while others don't need to. In addition, when the `aws.ec2.SecurityGroup` resource attempts to recreate, it receives a dependent object error, which does not provide information on whether the dependent object is a security group rule or, for example, an associated EC2 instance. Within the provider, the associated resource (_e.g._, `aws.ec2.Instance`) does not receive an error when the `aws.ec2.SecurityGroup` is trying to recreate even though that is where changes to the associated resource would need to take place (_e.g._, removing the security group association).
///
/// Despite these sticky problems, below are some ways to improve your experience when you find it necessary to recreate a security group.
///
/// ### Shorter timeout
///
/// (This example is one approach to recreating security groups. For more information on the challenges and the _Security Group Deletion Problem_, see the section above.)
///
/// If destroying a security group takes a long time, it may be because the provider cannot distinguish between a dependent object (_e.g._, a security group rule or EC2 instance) that is _in the process of being deleted_ and one that is not. In other words, it may be waiting for a train that isn't scheduled to arrive. To fail faster, shorten the `delete` timeout from the default timeout:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.SecurityGroup("example", {name: "izizavle"}, {
///     customTimeouts: {
///         "delete": "2m",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.SecurityGroup("example", name="izizavle",
/// opts = pulumi.ResourceOptions(custom_timeouts=pulumi.CustomTimeouts(delete="2m")))
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
///         Name = "izizavle",
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
/// 		_, err := ec2.NewSecurityGroup(ctx, "example", &ec2.SecurityGroupArgs{
/// 			Name: pulumi.String("izizavle"),
/// 		}, pulumi.Timeouts(&pulumi.CustomTimeouts{Delete: "2m"}))
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
///   timeouts {
///     delete = "2m"
///   }
///   name = "izizavle"
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
/// import com.pulumi.resources.CustomResourceOptions;
/// import com.pulumi.resources.CustomTimeouts;
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
///             .name("izizavle")
///             .build(), CustomResourceOptions.builder()
///                 .customTimeouts(CustomTimeouts.builder()
///                     .delete(CustomTimeouts.parseTimeoutString("2m"))
///                 .build())
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:SecurityGroup
///     properties:
///       name: izizavle
///     options:
///       customTimeouts:
///         delete: 2m
/// ```
///
///
/// ### Provisioners
///
/// (This example is one approach to recreating security groups. For more information on the challenges and the _Security Group Deletion Problem_, see the section above.)
///
/// **DISCLAIMER:** We **_HIGHLY_** recommend using one of the above approaches and _NOT_ using local provisioners. Provisioners, like the one shown below, should be considered a **last resort** since they are _not readable_, _require skills outside standard configuration_, are _error prone_ and _difficult to maintain_, are not compatible with cloud environments and upgrade tools, require AWS CLI installation, and are subject to changes outside the AWS Provider.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as _null from "@pulumi/null";
/// import * as aws from "@pulumi/aws";
/// import * as command from "@pulumi/command";
/// import * as std from "@pulumi/std";
///
/// const _default = aws.ec2.getSecurityGroup({
///     name: "default",
/// });
/// const example = new aws.ec2.SecurityGroup("example", {
///     name: "sg",
///     tags: {
///         workaround1: "tagged-name",
///         workaround2: _default.then(_default => _default.id),
///     },
/// });
/// const exampleProvisioner0 = new command.local.Command("exampleProvisioner0", {
///     create: "true",
///     update: "true",
///     "delete": `            ENDPOINT_ID=`aws ec2 describe-vpc-endpoints --filters \"Name=tag:Name,Values=${example.tags?.workaround1}\" --query \"VpcEndpoints[0].VpcEndpointId\" --output text` &&
///             aws ec2 modify-vpc-endpoint --vpc-endpoint-id ${ENDPOINT_ID} --add-security-group-ids ${example.tags?.workaround2} --remove-security-group-ids ${example.id}
/// `,
/// }, {
///     dependsOn: [example],
/// });
/// const exampleResource = new _null.Resource("example", {triggers: {
///     rerunUponChangeOf: std.join({
///         separator: ",",
///         input: exampleAwsVpcEndpoint.securityGroupIds,
///     }).then(invoke => invoke.result),
/// }});
/// const exampleResourceProvisioner0 = new command.local.Command("exampleResourceProvisioner0", {create: `            aws ec2 modify-vpc-endpoint --vpc-endpoint-id ${exampleAwsVpcEndpoint.id} --remove-security-group-ids ${_default.id}
/// `}, {
///     dependsOn: [exampleResource],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_command as command
/// import pulumi_null as null
/// import pulumi_std as std
///
/// default = aws.ec2.get_security_group(name="default")
/// example = aws.ec2.SecurityGroup("example",
///     name="sg",
///     tags={
///         "workaround1": "tagged-name",
///         "workaround2": default.id,
///     })
/// example_provisioner0 = command.local.Command("exampleProvisioner0",
///     create=true,
///     update=true,
///     delete=f            ENDPOINT_ID=`aws ec2 describe-vpc-endpoints --filters \"Name=tag:Name,Values={example.tags.workaround1}\" --query \"VpcEndpoints[0].VpcEndpointId\" --output text` &&
///             aws ec2 modify-vpc-endpoint --vpc-endpoint-id ${{ENDPOINT_ID}} --add-security-group-ids {example.tags.workaround2} --remove-security-group-ids {example.id}
/// ,
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// example_resource = null.Resource("example", triggers={
///     "rerunUponChangeOf": std.join(separator=",",
///         input=example_aws_vpc_endpoint["securityGroupIds"]).result,
/// })
/// example_resource_provisioner0 = command.local.Command("exampleResourceProvisioner0", create=f            aws ec2 modify-vpc-endpoint --vpc-endpoint-id {example_aws_vpc_endpoint.id} --remove-security-group-ids {default.id}
/// ,
/// opts = pulumi.ResourceOptions(depends_on=[example_resource]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Command = Pulumi.Command;
/// using Null = Pulumi.Null;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Aws.Ec2.GetSecurityGroup.Invoke(new()
///     {
///         Name = "default",
///     });
///
///     var example = new Aws.Ec2.SecurityGroup("example", new()
///     {
///         Name = "sg",
///         Tags =
///         {
///             { "workaround1", "tagged-name" },
///             { "workaround2", @default.Apply(@default => @default.Apply(getSecurityGroupResult => getSecurityGroupResult.Id)) },
///         },
///     });
///
///     var exampleProvisioner0 = new Command.Local.Command("exampleProvisioner0", new()
///     {
///         Create = "true",
///         Update = "true",
///         Delete = @$"            ENDPOINT_ID=`aws ec2 describe-vpc-endpoints --filters \""Name=tag:Name,Values={example.Tags?.Workaround1}\"" --query \""VpcEndpoints[0].VpcEndpointId\"" --output text` &&
///             aws ec2 modify-vpc-endpoint --vpc-endpoint-id ${{ENDPOINT_ID}} --add-security-group-ids {example.Tags?.Workaround2} --remove-security-group-ids {example.Id}
/// ",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
///     var exampleResource = new Null.Resource("example", new()
///     {
///         Triggers =
///         {
///             { "rerunUponChangeOf", Std.Join.Invoke(new()
///             {
///                 Separator = ",",
///                 Input = exampleAwsVpcEndpoint.SecurityGroupIds,
///             }).Apply(invoke => invoke.Result) },
///         },
///     });
///
///     var exampleResourceProvisioner0 = new Command.Local.Command("exampleResourceProvisioner0", new()
///     {
///         Create = @$"            aws ec2 modify-vpc-endpoint --vpc-endpoint-id {exampleAwsVpcEndpoint.Id} --remove-security-group-ids {@default.Apply(getSecurityGroupResult => getSecurityGroupResult.Id)}
/// ",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleResource,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-command/sdk/go/command/local"
/// 	"github.com/pulumi/pulumi-null/sdk/go/null"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := ec2.LookupSecurityGroup(ctx, &ec2.LookupSecurityGroupArgs{
/// 			Name: pulumi.StringRef("default"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := ec2.NewSecurityGroup(ctx, "example", &ec2.SecurityGroupArgs{
/// 			Name: pulumi.String("sg"),
/// 			Tags: pulumi.StringMap{
/// 				"workaround1": pulumi.String("tagged-name"),
/// 				"workaround2": pulumi.String(_default.Id),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = local.NewCommand(ctx, "exampleProvisioner0", &local.CommandArgs{
/// 			Create: "true",
/// 			Update: "true",
/// 			Delete: pulumi.Sprintf("            ENDPOINT_ID=`aws ec2 describe-vpc-endpoints --filters \\\"Name=tag:Name,Values=%v\\\" --query \\\"VpcEndpoints[0].VpcEndpointId\\\" --output text` &&\n            aws ec2 modify-vpc-endpoint --vpc-endpoint-id ${ENDPOINT_ID} --add-security-group-ids %v --remove-security-group-ids %v\n", example.Tags.Workaround1, example.Tags.Workaround2, example.ID()),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeJoin, err := std.Join(ctx, &std.JoinArgs{
/// 			Separator: ",",
/// 			Input:     exampleAwsVpcEndpoint.SecurityGroupIds,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleResource, err := null.NewResource(ctx, "example", &null.ResourceArgs{
/// 			Triggers: pulumi.StringMap{
/// 				"rerunUponChangeOf": pulumi.String(invokeJoin.Result),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = local.NewCommand(ctx, "exampleResourceProvisioner0", &local.CommandArgs{
/// 			Create: fmt.Sprintf("            aws ec2 modify-vpc-endpoint --vpc-endpoint-id %v --remove-security-group-ids %v\n", exampleAwsVpcEndpoint.Id, _default.Id),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleResource,
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
///     null = {
///       source = "pulumi/null"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "aws_ec2_getsecuritygroup" "default" {
///   name = "default"
/// }
///
/// resource "aws_ec2_securitygroup" "example" {
///   name = "sg"
///   tags = {
///     "workaround1" = "tagged-name"
///     "workaround2" = data.aws_ec2_getsecuritygroup.default.id
///   }
/// }
/// resource "command_local_command" "exampleProvisioner0" {
///   depends_on = [aws_ec2_securitygroup.example]
///   create     = "true"
///   update     = "true"
///   delete     ="            ENDPOINT_ID=`aws ec2 describe-vpc-endpoints --filters \"Name=tag:Name,Values=${aws_ec2_securitygroup.example.tags.workaround1}\" --query \"VpcEndpoints[0].VpcEndpointId\" --output text` &&
///             aws ec2 modify-vpc-endpoint --vpc-endpoint-id ${ENDPOINT_ID} --add-security-group-ids ${aws_ec2_securitygroup.example.tags.workaround2} --remove-security-group-ids ${aws_ec2_securitygroup.example.id}
/// "
/// }
/// resource "null_resource" "example" {
///   triggers = {
///     "rerunUponChangeOf" = join(",", exampleAwsVpcEndpoint.securityGroupIds)
///   }
/// }
/// resource "command_local_command" "exampleResourceProvisioner0" {
///   depends_on = [null_resource.example]
///   create     ="            aws ec2 modify-vpc-endpoint --vpc-endpoint-id ${exampleAwsVpcEndpoint.id} --remove-security-group-ids ${data.aws_ec2_getsecuritygroup.default.id}
/// "
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetSecurityGroupArgs;
/// import com.pulumi.aws.ec2.SecurityGroup;
/// import com.pulumi.aws.ec2.SecurityGroupArgs;
/// import com.pulumi.command.local.Command;
/// import com.pulumi.command.local.CommandArgs;
/// import com.pulumi.null.Resource;
/// import com.pulumi.null.ResourceArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
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
///         final var default = Ec2Functions.getSecurityGroup(GetSecurityGroupArgs.builder()
///             .name("default")
///             .build());
///
///         var example = new SecurityGroup("example", SecurityGroupArgs.builder()
///             .name("sg")
///             .tags(Map.ofEntries(
///                 Map.entry("workaround1", "tagged-name"),
///                 Map.entry("workaround2", default_.id())
///             ))
///             .build());
///
///         var exampleProvisioner0 = new Command("exampleProvisioner0", CommandArgs.builder()
///             .create("true")
///             .update("true")
///             .delete("""
///             ENDPOINT_ID=`aws ec2 describe-vpc-endpoints --filters \"Name=tag:Name,Values=%s\" --query \"VpcEndpoints[0].VpcEndpointId\" --output text` &&
///             aws ec2 modify-vpc-endpoint --vpc-endpoint-id ${ENDPOINT_ID} --add-security-group-ids %s --remove-security-group-ids %s
/// ", example.tags().workaround1(),example.tags().workaround2(),example.id()))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(Arrays.asList(example))
///                 .build());
///
///         var exampleResource = new Resource("exampleResource", ResourceArgs.builder()
///             .triggers(Map.of("rerunUponChangeOf", StdFunctions.join(JoinArgs.builder()
///                 .separator(",")
///                 .input(exampleAwsVpcEndpoint.securityGroupIds())
///                 .build()).result()))
///             .build());
///
///         var exampleResourceProvisioner0 = new Command("exampleResourceProvisioner0", CommandArgs.builder()
///             .create("""
///             aws ec2 modify-vpc-endpoint --vpc-endpoint-id %s --remove-security-group-ids %s
/// ", exampleAwsVpcEndpoint.id(),default_.id()))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(Arrays.asList(exampleResource))
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:SecurityGroup
///     properties:
///       name: sg
///       tags:
///         workaround1: tagged-name
///         workaround2: ${default.id}
///   exampleProvisioner0:
///     type: command:local:Command
///     properties:
///       create: 'true'
///       update: 'true'
///       delete: |2
///                     ENDPOINT_ID=`aws ec2 describe-vpc-endpoints --filters \"Name=tag:Name,Values=${example.tags.workaround1}\" --query \"VpcEndpoints[0].VpcEndpointId\" --output text` &&
///                     aws ec2 modify-vpc-endpoint --vpc-endpoint-id $${ENDPOINT_ID} --add-security-group-ids ${example.tags.workaround2} --remove-security-group-ids ${example.id}
///     options:
///       dependsOn:
///         - ${example}
///   exampleResource:
///     type: null:Resource
///     name: example
///     properties:
///       triggers:
///         rerunUponChangeOf:
///           fn::invoke:
///             function: std:join
///             arguments:
///               separator: ','
///               input: ${exampleAwsVpcEndpoint.securityGroupIds}
///             return: result
///   exampleResourceProvisioner0:
///     type: command:local:Command
///     properties:
///       create: |2
///                     aws ec2 modify-vpc-endpoint --vpc-endpoint-id ${exampleAwsVpcEndpoint.id} --remove-security-group-ids ${default.id}
///     options:
///       dependsOn:
///         - ${exampleResource}
/// variables:
///   default:
///     fn::invoke:
///       function: aws:ec2:getSecurityGroup
///       arguments:
///         name: default
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) ID of the security group.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Security Groups using the security group `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/securityGroup:SecurityGroup example sg-903004f8
/// ```
class SecurityGroup extends pulumi.CustomResource {
  /// ARN of the security group.
  late final pulumi.Output<String> arn;
  /// Security group description. Defaults to `Managed by Pulumi`. Cannot be `""`. **NOTE**: This field maps to the AWS `GroupDescription` attribute, for which there is no Update API. If you'd like to classify your security groups in a way that can be updated, use `tags`.
  late final pulumi.Output<String> description;
  /// Configuration block for egress rules. Can be specified multiple times for each egress rule. Each egress block supports fields documented below. This argument is processed in attribute-as-blocks mode.
  late final pulumi.Output<List<SecurityGroupEgress>> egress;
  /// Configuration block for ingress rules. Can be specified multiple times for each ingress rule. Each ingress block supports fields documented below. This argument is processed in attribute-as-blocks mode.
  late final pulumi.Output<List<SecurityGroupIngress>> ingress;
  /// Name of the security group. If omitted, the provider will assign a random, unique name.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// Owner ID.
  late final pulumi.Output<String> ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Instruct the provider to revoke all of the Security Groups attached ingress and egress rules before deleting the rule itself. This is normally not needed, however certain AWS services such as Elastic Map Reduce may automatically add required rules to security groups used with the service, and those rules may contain a cyclic dependency that prevent the security groups from being destroyed without removing the dependency first. Default `false`.
  late final pulumi.Output<bool?> revokeRulesOnDelete;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// VPC ID. Defaults to the region's default VPC.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [SecurityGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityGroup]. {@macro pulumi_ec2_security_group_security_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityGroup(
    String name, {
    SecurityGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/securityGroup:SecurityGroup',
          name,
          pulumi.Input.mapToInputs((args ?? SecurityGroupArgs()).toMap()),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    egress = registerOutput<List<SecurityGroupEgress>>('egress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecurityGroupEgress>(guardedValue, (value) => SecurityGroupEgress.fromMap((value as Map).cast<String, dynamic>())); });
    ingress = registerOutput<List<SecurityGroupIngress>>('ingress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecurityGroupIngress>(guardedValue, (value) => SecurityGroupIngress.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    revokeRulesOnDelete = registerOutput<bool?>('revokeRulesOnDelete');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [SecurityGroup] resource's state with the given [name] and [id].
  static SecurityGroup get(
    String name,
    pulumi.Input<String> id, {
    SecurityGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SecurityGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SecurityGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/securityGroup:SecurityGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    egress = registerOutput<List<SecurityGroupEgress>>('egress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecurityGroupEgress>(guardedValue, (value) => SecurityGroupEgress.fromMap((value as Map).cast<String, dynamic>())); });
    ingress = registerOutput<List<SecurityGroupIngress>>('ingress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecurityGroupIngress>(guardedValue, (value) => SecurityGroupIngress.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    revokeRulesOnDelete = registerOutput<bool?>('revokeRulesOnDelete');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
  }

  /// Creates a typed reference to an existing [SecurityGroup] resource.
  SecurityGroup.reference(String urn)
    : super(
        'aws:ec2/securityGroup:SecurityGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    egress = registerOutput<List<SecurityGroupEgress>>('egress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecurityGroupEgress>(guardedValue, (value) => SecurityGroupEgress.fromMap((value as Map).cast<String, dynamic>())); });
    ingress = registerOutput<List<SecurityGroupIngress>>('ingress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecurityGroupIngress>(guardedValue, (value) => SecurityGroupIngress.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    revokeRulesOnDelete = registerOutput<bool?>('revokeRulesOnDelete');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
  }
}
