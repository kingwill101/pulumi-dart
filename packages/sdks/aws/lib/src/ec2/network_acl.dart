import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_acl_args.dart';
import 'network_acl_egress.dart';
import 'network_acl_ingress.dart';
import 'network_acl_state.dart';

/// Provides an network ACL resource. You might set up network ACLs with rules similar
/// to your security groups in order to add an additional layer of security to your VPC.
///
/// &gt; **NOTE on Network ACLs and Network ACL Rules:** This provider currently
/// provides both a standalone Network ACL Rule resource and a Network ACL resource with rules
/// defined in-line. At this time you cannot use a Network ACL with in-line rules
/// in conjunction with any Network ACL Rule resources. Doing so will cause
/// a conflict of rule settings and will overwrite rules.
///
/// &gt; **NOTE on Network ACLs and Network ACL Associations:** the provider provides both a standalone network ACL association
/// resource and a network ACL resource with a `subnetIds` attribute. Do not use the same subnet ID in both a network ACL
/// resource and a network ACL association resource. Doing so will cause a conflict of associations and will overwrite the association.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.ec2.NetworkAcl("main", {
///     egress: [{
///         protocol: "tcp",
///         ruleNo: 200,
///         action: "allow",
///         cidrBlock: "10.3.0.0/18",
///         fromPort: 443,
///         toPort: 443,
///     }],
///     ingress: [{
///         protocol: "tcp",
///         ruleNo: 100,
///         action: "allow",
///         cidrBlock: "10.3.0.0/18",
///         fromPort: 80,
///         toPort: 80,
///     }],
///     vpcId: mainAwsVpc.id,
///     tags: {
///         Name: "main",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.ec2.NetworkAcl("main",
///     egress=[{
///         "protocol": "tcp",
///         "rule_no": 200,
///         "action": "allow",
///         "cidr_block": "10.3.0.0/18",
///         "from_port": 443,
///         "to_port": 443,
///     }],
///     ingress=[{
///         "protocol": "tcp",
///         "rule_no": 100,
///         "action": "allow",
///         "cidr_block": "10.3.0.0/18",
///         "from_port": 80,
///         "to_port": 80,
///     }],
///     vpc_id=main_aws_vpc["id"],
///     tags={
///         "Name": "main",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Aws.Ec2.NetworkAcl("main", new()
///     {
///         Egress = new[]
///         {
///             new Aws.Ec2.Inputs.NetworkAclEgressArgs
///             {
///                 Protocol = "tcp",
///                 RuleNo = 200,
///                 Action = "allow",
///                 CidrBlock = "10.3.0.0/18",
///                 FromPort = 443,
///                 ToPort = 443,
///             },
///         },
///         Ingress = new[]
///         {
///             new Aws.Ec2.Inputs.NetworkAclIngressArgs
///             {
///                 Protocol = "tcp",
///                 RuleNo = 100,
///                 Action = "allow",
///                 CidrBlock = "10.3.0.0/18",
///                 FromPort = 80,
///                 ToPort = 80,
///             },
///         },
///         VpcId = mainAwsVpc.Id,
///         Tags =
///         {
///             { "Name", "main" },
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
/// 		_, err := ec2.NewNetworkAcl(ctx, "main", &ec2.NetworkAclArgs{
/// 			Egress: ec2.NetworkAclEgressArray{
/// 				&ec2.NetworkAclEgressArgs{
/// 					Protocol:  pulumi.String("tcp"),
/// 					RuleNo:    pulumi.Int(200),
/// 					Action:    pulumi.String("allow"),
/// 					CidrBlock: pulumi.String("10.3.0.0/18"),
/// 					FromPort:  pulumi.Int(443),
/// 					ToPort:    pulumi.Int(443),
/// 				},
/// 			},
/// 			Ingress: ec2.NetworkAclIngressArray{
/// 				&ec2.NetworkAclIngressArgs{
/// 					Protocol:  pulumi.String("tcp"),
/// 					RuleNo:    pulumi.Int(100),
/// 					Action:    pulumi.String("allow"),
/// 					CidrBlock: pulumi.String("10.3.0.0/18"),
/// 					FromPort:  pulumi.Int(80),
/// 					ToPort:    pulumi.Int(80),
/// 				},
/// 			},
/// 			VpcId: pulumi.Any(mainAwsVpc.Id),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("main"),
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
/// resource "aws_ec2_networkacl" "main" {
///   egress {
///     protocol   = "tcp"
///     rule_no    = 200
///     action     = "allow"
///     cidr_block = "10.3.0.0/18"
///     from_port  = 443
///     to_port    = 443
///   }
///   ingress {
///     protocol   = "tcp"
///     rule_no    = 100
///     action     = "allow"
///     cidr_block = "10.3.0.0/18"
///     from_port  = 80
///     to_port    = 80
///   }
///   vpc_id = mainAwsVpc.id
///   tags = {
///     "Name" = "main"
///   }
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
/// import com.pulumi.aws.ec2.inputs.NetworkAclEgressArgs;
/// import com.pulumi.aws.ec2.inputs.NetworkAclIngressArgs;
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
///         var main = new NetworkAcl("main", NetworkAclArgs.builder()
///             .egress(NetworkAclEgressArgs.builder()
///                 .protocol("tcp")
///                 .ruleNo(200)
///                 .action("allow")
///                 .cidrBlock("10.3.0.0/18")
///                 .fromPort(443)
///                 .toPort(443)
///                 .build())
///             .ingress(NetworkAclIngressArgs.builder()
///                 .protocol("tcp")
///                 .ruleNo(100)
///                 .action("allow")
///                 .cidrBlock("10.3.0.0/18")
///                 .fromPort(80)
///                 .toPort(80)
///                 .build())
///             .vpcId(mainAwsVpc.id())
///             .tags(Map.of("Name", "main"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: aws:ec2:NetworkAcl
///     properties:
///       egress:
///         - protocol: tcp
///           ruleNo: 200
///           action: allow
///           cidrBlock: 10.3.0.0/18
///           fromPort: 443
///           toPort: 443
///       ingress:
///         - protocol: tcp
///           ruleNo: 100
///           action: allow
///           cidrBlock: 10.3.0.0/18
///           fromPort: 80
///           toPort: 80
///       vpcId: ${mainAwsVpc.id}
///       tags:
///         Name: main
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Network ACLs using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/networkAcl:NetworkAcl main acl-7aaabd18
/// ```
class NetworkAcl extends pulumi.CustomResource {
  /// The ARN of the network ACL
  late final pulumi.Output<String> arn;
  /// Specifies an egress rule. Parameters defined below.
  late final pulumi.Output<List<NetworkAclEgress>> egress;
  /// Specifies an ingress rule. Parameters defined below.
  late final pulumi.Output<List<NetworkAclIngress>> ingress;
  /// The ID of the AWS account that owns the network ACL.
  late final pulumi.Output<String> ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A list of Subnet IDs to apply the ACL to
  late final pulumi.Output<List<String>> subnetIds;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The ID of the associated VPC.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [NetworkAcl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkAcl]. {@macro pulumi_ec2_network_acl_network_acl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkAcl(
    String name, {
    NetworkAclArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkAcl:NetworkAcl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    egress = registerOutput<List<NetworkAclEgress>>('egress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkAclEgress>(guardedValue, (value) => NetworkAclEgress.fromMap((value as Map).cast<String, dynamic>())); });
    ingress = registerOutput<List<NetworkAclIngress>>('ingress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkAclIngress>(guardedValue, (value) => NetworkAclIngress.fromMap((value as Map).cast<String, dynamic>())); });
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [NetworkAcl] resource's state with the given [name] and [id].
  static NetworkAcl get(
    String name,
    pulumi.Input<String> id, {
    NetworkAclState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NetworkAcl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NetworkAcl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkAcl:NetworkAcl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    egress = registerOutput<List<NetworkAclEgress>>('egress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkAclEgress>(guardedValue, (value) => NetworkAclEgress.fromMap((value as Map).cast<String, dynamic>())); });
    ingress = registerOutput<List<NetworkAclIngress>>('ingress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkAclIngress>(guardedValue, (value) => NetworkAclIngress.fromMap((value as Map).cast<String, dynamic>())); });
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
  }

  /// Creates a typed reference to an existing [NetworkAcl] resource.
  NetworkAcl.reference(String urn)
    : super(
        'aws:ec2/networkAcl:NetworkAcl',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    egress = registerOutput<List<NetworkAclEgress>>('egress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkAclEgress>(guardedValue, (value) => NetworkAclEgress.fromMap((value as Map).cast<String, dynamic>())); });
    ingress = registerOutput<List<NetworkAclIngress>>('ingress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkAclIngress>(guardedValue, (value) => NetworkAclIngress.fromMap((value as Map).cast<String, dynamic>())); });
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
  }
}
