import 'package:pulumi/pulumi.dart' as pulumi;
import 'eip_association_args.dart';
import 'eip_association_state.dart';

/// Provides an AWS EIP Association as a top level resource, to associate and disassociate Elastic IPs from AWS Instances and Network Interfaces.
///
/// &gt; **NOTE:** Do not use this resource to associate an EIP to `aws.lb.LoadBalancer` or `aws.ec2.NatGateway` resources. Instead use the `allocation_id` available in those resources to allow AWS to manage the association, otherwise you will see `AuthFailure` errors.
///
/// &gt; **NOTE:** `aws.ec2.EipAssociation` is useful in scenarios where EIPs are either pre-existing or distributed to customers or users and therefore cannot be changed.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const web = new aws.ec2.Instance("web", {
///     ami: "ami-21f78e11",
///     availabilityZone: "us-west-2a",
///     instanceType: aws.ec2.InstanceType.T2_Micro,
///     tags: {
///         Name: "HelloWorld",
///     },
/// });
/// const example = new aws.ec2.Eip("example", {domain: "vpc"});
/// const eipAssoc = new aws.ec2.EipAssociation("eip_assoc", {
///     instanceId: web.id,
///     allocationId: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// web = aws.ec2.Instance("web",
///     ami="ami-21f78e11",
///     availability_zone="us-west-2a",
///     instance_type=aws.ec2.InstanceType.T2_MICRO,
///     tags={
///         "Name": "HelloWorld",
///     })
/// example = aws.ec2.Eip("example", domain="vpc")
/// eip_assoc = aws.ec2.EipAssociation("eip_assoc",
///     instance_id=web.id,
///     allocation_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var web = new Aws.Ec2.Instance("web", new()
///     {
///         Ami = "ami-21f78e11",
///         AvailabilityZone = "us-west-2a",
///         InstanceType = Aws.Ec2.InstanceType.T2_Micro,
///         Tags =
///         {
///             { "Name", "HelloWorld" },
///         },
///     });
///
///     var example = new Aws.Ec2.Eip("example", new()
///     {
///         Domain = "vpc",
///     });
///
///     var eipAssoc = new Aws.Ec2.EipAssociation("eip_assoc", new()
///     {
///         InstanceId = web.Id,
///         AllocationId = example.Id,
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
/// 		web, err := ec2.NewInstance(ctx, "web", &ec2.InstanceArgs{
/// 			Ami:              pulumi.String("ami-21f78e11"),
/// 			AvailabilityZone: pulumi.String("us-west-2a"),
/// 			InstanceType:     pulumi.String(ec2.InstanceType_T2_Micro),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("HelloWorld"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := ec2.NewEip(ctx, "example", &ec2.EipArgs{
/// 			Domain: pulumi.String("vpc"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewEipAssociation(ctx, "eip_assoc", &ec2.EipAssociationArgs{
/// 			InstanceId:   web.ID(),
/// 			AllocationId: example.ID(),
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
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
/// import com.pulumi.aws.ec2.Eip;
/// import com.pulumi.aws.ec2.EipArgs;
/// import com.pulumi.aws.ec2.EipAssociation;
/// import com.pulumi.aws.ec2.EipAssociationArgs;
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
///         var web = new Instance("web", InstanceArgs.builder()
///             .ami("ami-21f78e11")
///             .availabilityZone("us-west-2a")
///             .instanceType("t2.micro")
///             .tags(Map.of("Name", "HelloWorld"))
///             .build());
///
///         var example = new Eip("example", EipArgs.builder()
///             .domain("vpc")
///             .build());
///
///         var eipAssoc = new EipAssociation("eipAssoc", EipAssociationArgs.builder()
///             .instanceId(web.id())
///             .allocationId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   eipAssoc:
///     type: aws:ec2:EipAssociation
///     name: eip_assoc
///     properties:
///       instanceId: ${web.id}
///       allocationId: ${example.id}
///   web:
///     type: aws:ec2:Instance
///     properties:
///       ami: ami-21f78e11
///       availabilityZone: us-west-2a
///       instanceType: t2.micro
///       tags:
///         Name: HelloWorld
///   example:
///     type: aws:ec2:Eip
///     properties:
///       domain: vpc
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EIP Assocations using their association IDs. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/eipAssociation:EipAssociation test eipassoc-ab12c345
/// ```
class EipAssociation extends pulumi.CustomResource {
  /// ID of the associated Elastic IP.
  /// This argument is required despite being optional at the resource level due to legacy support for EC2-Classic networking.
  late final pulumi.Output<String> allocationId;

  /// Whether to allow an Elastic IP address to be re-associated.
  /// Defaults to `true`.
  late final pulumi.Output<bool?> allowReassociation;

  /// ID of the instance.
  /// The instance must have exactly one attached network interface.
  /// You can specify either the instance ID or the network interface ID, but not both.
  late final pulumi.Output<String> instanceId;

  /// ID of the network interface.
  /// If the instance has more than one network interface, you must specify a network interface ID.
  /// You can specify either the instance ID or the network interface ID, but not both.
  late final pulumi.Output<String> networkInterfaceId;

  /// Primary or secondary private IP address to associate with the Elastic IP address.
  /// If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.
  late final pulumi.Output<String> privateIpAddress;

  /// ) Address of the associated Elastic IP.
  late final pulumi.Output<String> publicIp;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [EipAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EipAssociation]. {@macro pulumi_ec2_eip_association_eip_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EipAssociation(
    String name, {
    EipAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/eipAssociation:EipAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allocationId = registerOutput<String>('allocationId');
    allowReassociation = registerOutput<bool?>('allowReassociation');
    instanceId = registerOutput<String>('instanceId');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
    privateIpAddress = registerOutput<String>('privateIpAddress');
    publicIp = registerOutput<String>('publicIp');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [EipAssociation] resource's state with the given [name] and [id].
  static EipAssociation get(
    String name,
    pulumi.Input<String> id, {
    EipAssociationState? state,
  }) {
    return EipAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EipAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/eipAssociation:EipAssociation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allocationId = registerOutput<String>('allocationId');
    allowReassociation = registerOutput<bool?>('allowReassociation');
    instanceId = registerOutput<String>('instanceId');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
    privateIpAddress = registerOutput<String>('privateIpAddress');
    publicIp = registerOutput<String>('publicIp');
    region = registerOutput<String>('region');
  }
}
