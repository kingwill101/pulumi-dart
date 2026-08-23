import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_graph_endpoint_args.dart';
import 'private_graph_endpoint_state.dart';
import 'private_graph_endpoint_timeouts.dart';

/// Manages an Amazon Neptune Analytics Private Graph Endpoint.
///
/// ## Example Usage
///
/// Creates a private graph endpoint for Neptune Graph with VPC configuration, connecting through specified subnets and secured by a custom security group that allows inbound traffic on port 8182.
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// // Example VPC for Neptune Graph
/// const example = new aws.ec2.Vpc("example", {
///     cidrBlock: "10.0.0.0/16",
///     tags: {
///         Name: "neptune-graph-vpc",
///     },
/// });
/// // Example Subnet 1
/// const example1 = new aws.ec2.Subnet("example1", {
///     vpcId: example.id,
///     cidrBlock: "10.0.1.0/24",
///     availabilityZone: current.then(current => `${current.region}a`),
///     tags: {
///         Name: "neptune-graph-subnet-1",
///     },
/// });
/// // Example Subnet 2
/// const example2 = new aws.ec2.Subnet("example2", {
///     vpcId: example.id,
///     cidrBlock: "10.0.2.0/24",
///     availabilityZone: current.then(current => `${current.region}b`),
///     tags: {
///         Name: "neptune-graph-subnet-2",
///     },
/// });
/// // Security Group for Neptune Graph
/// const exampleSecurityGroup = new aws.ec2.SecurityGroup("example", {
///     namePrefix: "neptune-graph-sg",
///     description: "Security group for Neptune Graph",
///     vpcId: example.id,
///     ingress: [{
///         fromPort: 8182,
///         toPort: 8182,
///         protocol: "tcp",
///         cidrBlocks: ["10.0.0.0/16"],
///     }],
///     tags: {
///         Name: "neptune-graph-sg",
///     },
/// });
/// // Example Graph resource
/// const exampleGraph = new aws.neptunegraph.Graph("example", {
///     graphName: "example-graph-test-20260112",
///     provisionedMemory: 16,
/// });
/// // Private Graph Endpoint
/// const examplePrivateGraphEndpoint = new aws.neptunegraph.PrivateGraphEndpoint("example", {
///     graphIdentifier: exampleGraph.id,
///     vpcId: example.id,
///     subnetIds: [
///         example1.id,
///         example2.id,
///     ],
///     vpcSecurityGroupIds: [exampleSecurityGroup.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// # Example VPC for Neptune Graph
/// example = aws.ec2.Vpc("example",
///     cidr_block="10.0.0.0/16",
///     tags={
///         "Name": "neptune-graph-vpc",
///     })
/// # Example Subnet 1
/// example1 = aws.ec2.Subnet("example1",
///     vpc_id=example.id,
///     cidr_block="10.0.1.0/24",
///     availability_zone=f"{current.region}a",
///     tags={
///         "Name": "neptune-graph-subnet-1",
///     })
/// # Example Subnet 2
/// example2 = aws.ec2.Subnet("example2",
///     vpc_id=example.id,
///     cidr_block="10.0.2.0/24",
///     availability_zone=f"{current.region}b",
///     tags={
///         "Name": "neptune-graph-subnet-2",
///     })
/// # Security Group for Neptune Graph
/// example_security_group = aws.ec2.SecurityGroup("example",
///     name_prefix="neptune-graph-sg",
///     description="Security group for Neptune Graph",
///     vpc_id=example.id,
///     ingress=[{
///         "from_port": 8182,
///         "to_port": 8182,
///         "protocol": "tcp",
///         "cidr_blocks": ["10.0.0.0/16"],
///     }],
///     tags={
///         "Name": "neptune-graph-sg",
///     })
/// # Example Graph resource
/// example_graph = aws.neptunegraph.Graph("example",
///     graph_name="example-graph-test-20260112",
///     provisioned_memory=16)
/// # Private Graph Endpoint
/// example_private_graph_endpoint = aws.neptunegraph.PrivateGraphEndpoint("example",
///     graph_identifier=example_graph.id,
///     vpc_id=example.id,
///     subnet_ids=[
///         example1.id,
///         example2.id,
///     ],
///     vpc_security_group_ids=[example_security_group.id])
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
///     // Example VPC for Neptune Graph
///     var example = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///         Tags =
///         {
///             { "Name", "neptune-graph-vpc" },
///         },
///     });
///
///     // Example Subnet 1
///     var example1 = new Aws.Ec2.Subnet("example1", new()
///     {
///         VpcId = example.Id,
///         CidrBlock = "10.0.1.0/24",
///         AvailabilityZone = $"{current.Apply(getRegionResult => getRegionResult.Region)}a",
///         Tags =
///         {
///             { "Name", "neptune-graph-subnet-1" },
///         },
///     });
///
///     // Example Subnet 2
///     var example2 = new Aws.Ec2.Subnet("example2", new()
///     {
///         VpcId = example.Id,
///         CidrBlock = "10.0.2.0/24",
///         AvailabilityZone = $"{current.Apply(getRegionResult => getRegionResult.Region)}b",
///         Tags =
///         {
///             { "Name", "neptune-graph-subnet-2" },
///         },
///     });
///
///     // Security Group for Neptune Graph
///     var exampleSecurityGroup = new Aws.Ec2.SecurityGroup("example", new()
///     {
///         NamePrefix = "neptune-graph-sg",
///         Description = "Security group for Neptune Graph",
///         VpcId = example.Id,
///         Ingress = new[]
///         {
///             new Aws.Ec2.Inputs.SecurityGroupIngressArgs
///             {
///                 FromPort = 8182,
///                 ToPort = 8182,
///                 Protocol = "tcp",
///                 CidrBlocks = new[]
///                 {
///                     "10.0.0.0/16",
///                 },
///             },
///         },
///         Tags =
///         {
///             { "Name", "neptune-graph-sg" },
///         },
///     });
///
///     // Example Graph resource
///     var exampleGraph = new Aws.NeptuneGraph.Graph("example", new()
///     {
///         GraphName = "example-graph-test-20260112",
///         ProvisionedMemory = 16,
///     });
///
///     // Private Graph Endpoint
///     var examplePrivateGraphEndpoint = new Aws.NeptuneGraph.PrivateGraphEndpoint("example", new()
///     {
///         GraphIdentifier = exampleGraph.Id,
///         VpcId = example.Id,
///         SubnetIds = new[]
///         {
///             example1.Id,
///             example2.Id,
///         },
///         VpcSecurityGroupIds = new[]
///         {
///             exampleSecurityGroup.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/neptunegraph"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Example VPC for Neptune Graph
/// 		example, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("neptune-graph-vpc"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Example Subnet 1
/// 		example1, err := ec2.NewSubnet(ctx, "example1", &ec2.SubnetArgs{
/// 			VpcId:            example.ID().ToIDOutput().ToStringOutput(),
/// 			CidrBlock:        pulumi.String("10.0.1.0/24"),
/// 			AvailabilityZone: pulumi.Sprintf("%va", current.Region),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("neptune-graph-subnet-1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Example Subnet 2
/// 		example2, err := ec2.NewSubnet(ctx, "example2", &ec2.SubnetArgs{
/// 			VpcId:            example.ID().ToIDOutput().ToStringOutput(),
/// 			CidrBlock:        pulumi.String("10.0.2.0/24"),
/// 			AvailabilityZone: pulumi.Sprintf("%vb", current.Region),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("neptune-graph-subnet-2"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Security Group for Neptune Graph
/// 		exampleSecurityGroup, err := ec2.NewSecurityGroup(ctx, "example", &ec2.SecurityGroupArgs{
/// 			NamePrefix:  pulumi.String("neptune-graph-sg"),
/// 			Description: pulumi.String("Security group for Neptune Graph"),
/// 			VpcId:       example.ID().ToIDOutput().ToStringOutput(),
/// 			Ingress: ec2.SecurityGroupIngressArray{
/// 				&ec2.SecurityGroupIngressArgs{
/// 					FromPort: pulumi.Int(8182),
/// 					ToPort:   pulumi.Int(8182),
/// 					Protocol: pulumi.String("tcp"),
/// 					CidrBlocks: pulumi.StringArray{
/// 						pulumi.String("10.0.0.0/16"),
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("neptune-graph-sg"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Example Graph resource
/// 		exampleGraph, err := neptunegraph.NewGraph(ctx, "example", &neptunegraph.GraphArgs{
/// 			GraphName:         pulumi.String("example-graph-test-20260112"),
/// 			ProvisionedMemory: pulumi.Int(16),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Private Graph Endpoint
/// 		_, err = neptunegraph.NewPrivateGraphEndpoint(ctx, "example", &neptunegraph.PrivateGraphEndpointArgs{
/// 			GraphIdentifier: exampleGraph.ID().ToIDOutput().ToStringOutput(),
/// 			VpcId:           example.ID().ToIDOutput().ToStringOutput(),
/// 			SubnetIds: pulumi.StringArray{
/// 				example1.ID().ToIDOutput().ToStringOutput(),
/// 				example2.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			VpcSecurityGroupIds: pulumi.StringArray{
/// 				exampleSecurityGroup.ID().ToIDOutput().ToStringOutput(),
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
/// data "aws_getregion" "current" {
/// }
///
/// # Example VPC for Neptune Graph
/// resource "aws_ec2_vpc" "example" {
///   cidr_block = "10.0.0.0/16"
///   tags = {
///     "Name" = "neptune-graph-vpc"
///   }
/// }
/// # Example Subnet 1
/// resource "aws_ec2_subnet" "example1" {
///   vpc_id            = aws_ec2_vpc.example.id
///   cidr_block        = "10.0.1.0/24"
///   availability_zone ="${data.aws_getregion.current.region}a"
///   tags = {
///     "Name" = "neptune-graph-subnet-1"
///   }
/// }
/// # Example Subnet 2
/// resource "aws_ec2_subnet" "example2" {
///   vpc_id            = aws_ec2_vpc.example.id
///   cidr_block        = "10.0.2.0/24"
///   availability_zone ="${data.aws_getregion.current.region}b"
///   tags = {
///     "Name" = "neptune-graph-subnet-2"
///   }
/// }
/// # Security Group for Neptune Graph
/// resource "aws_ec2_securitygroup" "example" {
///   name_prefix = "neptune-graph-sg"
///   description = "Security group for Neptune Graph"
///   vpc_id      = aws_ec2_vpc.example.id
///   ingress {
///     from_port   = 8182
///     to_port     = 8182
///     protocol    = "tcp"
///     cidr_blocks = ["10.0.0.0/16"]
///   }
///   tags = {
///     "Name" = "neptune-graph-sg"
///   }
/// }
/// # Example Graph resource
/// resource "aws_neptunegraph_graph" "example" {
///   graph_name         = "example-graph-test-20260112"
///   provisioned_memory = 16
/// }
/// # Private Graph Endpoint
/// resource "aws_neptunegraph_privategraphendpoint" "example" {
///   graph_identifier       = aws_neptunegraph_graph.example.id
///   vpc_id                 = aws_ec2_vpc.example.id
///   subnet_ids             = [aws_ec2_subnet.example1.id, aws_ec2_subnet.example2.id]
///   vpc_security_group_ids = [aws_ec2_securitygroup.example.id]
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.ec2.SecurityGroup;
/// import com.pulumi.aws.ec2.SecurityGroupArgs;
/// import com.pulumi.aws.ec2.inputs.SecurityGroupIngressArgs;
/// import com.pulumi.aws.neptunegraph.Graph;
/// import com.pulumi.aws.neptunegraph.GraphArgs;
/// import com.pulumi.aws.neptunegraph.PrivateGraphEndpoint;
/// import com.pulumi.aws.neptunegraph.PrivateGraphEndpointArgs;
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
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         // Example VPC for Neptune Graph
///         var example = new Vpc("example", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .tags(Map.of("Name", "neptune-graph-vpc"))
///             .build());
///
///         // Example Subnet 1
///         var example1 = new Subnet("example1", SubnetArgs.builder()
///             .vpcId(example.id())
///             .cidrBlock("10.0.1.0/24")
///             .availabilityZone(String.format("%sa", current.region()))
///             .tags(Map.of("Name", "neptune-graph-subnet-1"))
///             .build());
///
///         // Example Subnet 2
///         var example2 = new Subnet("example2", SubnetArgs.builder()
///             .vpcId(example.id())
///             .cidrBlock("10.0.2.0/24")
///             .availabilityZone(String.format("%sb", current.region()))
///             .tags(Map.of("Name", "neptune-graph-subnet-2"))
///             .build());
///
///         // Security Group for Neptune Graph
///         var exampleSecurityGroup = new SecurityGroup("exampleSecurityGroup", SecurityGroupArgs.builder()
///             .namePrefix("neptune-graph-sg")
///             .description("Security group for Neptune Graph")
///             .vpcId(example.id())
///             .ingress(SecurityGroupIngressArgs.builder()
///                 .fromPort(8182)
///                 .toPort(8182)
///                 .protocol("tcp")
///                 .cidrBlocks("10.0.0.0/16")
///                 .build())
///             .tags(Map.of("Name", "neptune-graph-sg"))
///             .build());
///
///         // Example Graph resource
///         var exampleGraph = new Graph("exampleGraph", GraphArgs.builder()
///             .graphName("example-graph-test-20260112")
///             .provisionedMemory(16)
///             .build());
///
///         // Private Graph Endpoint
///         var examplePrivateGraphEndpoint = new PrivateGraphEndpoint("examplePrivateGraphEndpoint", PrivateGraphEndpointArgs.builder()
///             .graphIdentifier(exampleGraph.id())
///             .vpcId(example.id())
///             .subnetIds(
///                 example1.id(),
///                 example2.id())
///             .vpcSecurityGroupIds(exampleSecurityGroup.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Example VPC for Neptune Graph
///   example:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///       tags:
///         Name: neptune-graph-vpc
///   # Example Subnet 1
///   example1:
///     type: aws:ec2:Subnet
///     properties:
///       vpcId: ${example.id}
///       cidrBlock: 10.0.1.0/24
///       availabilityZone: ${current.region}a
///       tags:
///         Name: neptune-graph-subnet-1
///   # Example Subnet 2
///   example2:
///     type: aws:ec2:Subnet
///     properties:
///       vpcId: ${example.id}
///       cidrBlock: 10.0.2.0/24
///       availabilityZone: ${current.region}b
///       tags:
///         Name: neptune-graph-subnet-2
///   # Security Group for Neptune Graph
///   exampleSecurityGroup:
///     type: aws:ec2:SecurityGroup
///     name: example
///     properties:
///       namePrefix: neptune-graph-sg
///       description: Security group for Neptune Graph
///       vpcId: ${example.id}
///       ingress:
///         - fromPort: 8182
///           toPort: 8182
///           protocol: tcp
///           cidrBlocks:
///             - 10.0.0.0/16
///       tags:
///         Name: neptune-graph-sg
///   # Example Graph resource
///   exampleGraph:
///     type: aws:neptunegraph:Graph
///     name: example
///     properties:
///       graphName: example-graph-test-20260112
///       provisionedMemory: 16
///   # Private Graph Endpoint
///   examplePrivateGraphEndpoint:
///     type: aws:neptunegraph:PrivateGraphEndpoint
///     name: example
///     properties:
///       graphIdentifier: ${exampleGraph.id}
///       vpcId: ${example.id}
///       subnetIds:
///         - ${example1.id}
///         - ${example2.id}
///       vpcSecurityGroupIds:
///         - ${exampleSecurityGroup.id}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `graphIdentifier` (String) Unique identifier of the Neptune Analytics graph.
/// * `vpcId` (String) VPC in which the private graph endpoint is created.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Neptune Analytics Private Graph Endpoint using the `privateGraphEndpointIdentifier`. For example:
///
/// ```sh
/// $ pulumi import aws:neptunegraph/privateGraphEndpoint:PrivateGraphEndpoint example g-12a3bcdef4_vpc-111122223333aabbc
/// ```
class PrivateGraphEndpoint extends pulumi.CustomResource {
  /// Unique identifier of the Neptune Analytics graph.
  late final pulumi.Output<String> graphIdentifier;
  /// PrivateGraphEndpoint resource identifier generated by concatenating the associated `graphIdentifier` and `vpcId` with an underscore separator. For example, if `graphIdentifier` is `g-12a3bcdef4` and `vpcId` is `vpc-111122223333aabbc`, the generated identifier is `g-12a3bcdef4_vpc-111122223333aabbc`.
  late final pulumi.Output<String> privateGraphEndpointIdentifier;
  /// Region where this resource will be managed. Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Subnets in which private graph endpoint ENIs are created.
  late final pulumi.Output<List<String>?> subnetIds;
  late final pulumi.Output<PrivateGraphEndpointTimeouts?> timeouts;
  /// VPC endpoint that provides a private connection between the Graph and specified VPC.
  late final pulumi.Output<String> vpcEndpointId;
  /// VPC in which the private graph endpoint needs to be created.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> vpcId;
  /// Security groups to be attached to the private graph endpoint. The Neptune Analytics API does not return this value, so Terraform cannot detect drift or repopulate it on import; the value present at creation persists in state until changed in configuration.
  late final pulumi.Output<List<String>?> vpcSecurityGroupIds;

  /// Creates a new [PrivateGraphEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateGraphEndpoint]. {@macro pulumi_neptunegraph_private_graph_endpoint_private_graph_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateGraphEndpoint(
    String name, {
    PrivateGraphEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:neptunegraph/privateGraphEndpoint:PrivateGraphEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    graphIdentifier = registerOutput<String>('graphIdentifier');
    privateGraphEndpointIdentifier = registerOutput<String>('privateGraphEndpointIdentifier');
    region = registerOutput<String>('region');
    subnetIds = registerOutput<List<String>?>('subnetIds');
    timeouts = registerOutput<PrivateGraphEndpointTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateGraphEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcEndpointId = registerOutput<String>('vpcEndpointId');
    vpcId = registerOutput<String>('vpcId');
    vpcSecurityGroupIds = registerOutput<List<String>?>('vpcSecurityGroupIds');
  }

  /// Gets an existing [PrivateGraphEndpoint] resource's state with the given [name] and [id].
  static PrivateGraphEndpoint get(
    String name,
    pulumi.Input<String> id, {
    PrivateGraphEndpointState? state,
  }) {
    return PrivateGraphEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PrivateGraphEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:neptunegraph/privateGraphEndpoint:PrivateGraphEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    graphIdentifier = registerOutput<String>('graphIdentifier');
    privateGraphEndpointIdentifier = registerOutput<String>('privateGraphEndpointIdentifier');
    region = registerOutput<String>('region');
    subnetIds = registerOutput<List<String>?>('subnetIds');
    timeouts = registerOutput<PrivateGraphEndpointTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateGraphEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcEndpointId = registerOutput<String>('vpcEndpointId');
    vpcId = registerOutput<String>('vpcId');
    vpcSecurityGroupIds = registerOutput<List<String>?>('vpcSecurityGroupIds');
  }
}
