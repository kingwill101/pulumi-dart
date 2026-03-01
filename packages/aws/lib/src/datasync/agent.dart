import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_args.dart';

/// Manages an AWS DataSync Agent deployed on premises.
///
/// > **NOTE:** One of `activation_key` or `ip_address` must be provided for resource creation (agent activation). Neither is required for resource import. If using `ip_address`, this provider must be able to make an HTTP (port 80) GET request to the specified IP address from where it is running. The agent will turn off that HTTP server after activation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.Agent("example", {
///     ipAddress: "1.2.3.4",
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.Agent("example",
///     ip_address="1.2.3.4",
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DataSync.Agent("example", new()
///     {
///         IpAddress = "1.2.3.4",
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datasync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datasync.NewAgent(ctx, "example", &datasync.AgentArgs{
/// 			IpAddress: pulumi.String("1.2.3.4"),
/// 			Name:      pulumi.String("example"),
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
/// import com.pulumi.aws.datasync.Agent;
/// import com.pulumi.aws.datasync.AgentArgs;
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
///         var example = new Agent("example", AgentArgs.builder()
///             .ipAddress("1.2.3.4")
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:datasync:Agent
///     properties:
///       ipAddress: 1.2.3.4
///       name: example
/// ```
///
///
///
/// ### With VPC Endpoints
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const exampleVpcEndpoint = new aws.ec2.VpcEndpoint("example", {
///     serviceName: current.then(current => `com.amazonaws.${current.region}.datasync`),
///     vpcId: exampleAwsVpc.id,
///     securityGroupIds: [exampleAwsSecurityGroup.id],
///     subnetIds: [exampleAwsSubnet.id],
///     vpcEndpointType: "Interface",
/// });
/// const example = aws.ec2.getNetworkInterfaceOutput({
///     id: exampleVpcEndpoint.networkInterfaceIds[0],
/// });
/// const exampleAgent = new aws.datasync.Agent("example", {
///     ipAddress: "1.2.3.4",
///     securityGroupArns: [exampleAwsSecurityGroup.arn],
///     subnetArns: [exampleAwsSubnet.arn],
///     vpcEndpointId: exampleVpcEndpoint.id,
///     privateLinkEndpoint: example.apply(example => example.privateIp),
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// example_vpc_endpoint = aws.ec2.VpcEndpoint("example",
///     service_name=f"com.amazonaws.{current.region}.datasync",
///     vpc_id=example_aws_vpc["id"],
///     security_group_ids=[example_aws_security_group["id"]],
///     subnet_ids=[example_aws_subnet["id"]],
///     vpc_endpoint_type="Interface")
/// example = aws.ec2.get_network_interface_output(id=example_vpc_endpoint.network_interface_ids[0])
/// example_agent = aws.datasync.Agent("example",
///     ip_address="1.2.3.4",
///     security_group_arns=[example_aws_security_group["arn"]],
///     subnet_arns=[example_aws_subnet["arn"]],
///     vpc_endpoint_id=example_vpc_endpoint.id,
///     private_link_endpoint=example.private_ip,
///     name="example")
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
///     var exampleVpcEndpoint = new Aws.Ec2.VpcEndpoint("example", new()
///     {
///         ServiceName = $"com.amazonaws.{current.Apply(getRegionResult => getRegionResult.Region)}.datasync",
///         VpcId = exampleAwsVpc.Id,
///         SecurityGroupIds = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///         SubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///         VpcEndpointType = "Interface",
///     });
///
///     var example = Aws.Ec2.GetNetworkInterface.Invoke(new()
///     {
///         Id = exampleVpcEndpoint.NetworkInterfaceIds[0],
///     });
///
///     var exampleAgent = new Aws.DataSync.Agent("example", new()
///     {
///         IpAddress = "1.2.3.4",
///         SecurityGroupArns = new[]
///         {
///             exampleAwsSecurityGroup.Arn,
///         },
///         SubnetArns = new[]
///         {
///             exampleAwsSubnet.Arn,
///         },
///         VpcEndpointId = exampleVpcEndpoint.Id,
///         PrivateLinkEndpoint = example.Apply(getNetworkInterfaceResult => getNetworkInterfaceResult.PrivateIp),
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datasync"
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
/// 		exampleVpcEndpoint, err := ec2.NewVpcEndpoint(ctx, "example", &ec2.VpcEndpointArgs{
/// 			ServiceName: pulumi.Sprintf("com.amazonaws.%v.datasync", current.Region),
/// 			VpcId:       pulumi.Any(exampleAwsVpc.Id),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Id,
/// 			},
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 			VpcEndpointType: pulumi.String("Interface"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := ec2.LookupNetworkInterfaceOutput(ctx, ec2.GetNetworkInterfaceOutputArgs{
/// 			Id: exampleVpcEndpoint.NetworkInterfaceIds.ApplyT(func(networkInterfaceIds []string) (string, error) {
/// 				return networkInterfaceIds[0], nil
/// 			}).(pulumi.StringOutput),
/// 		}, nil)
/// 		_, err = datasync.NewAgent(ctx, "example", &datasync.AgentArgs{
/// 			IpAddress: pulumi.String("1.2.3.4"),
/// 			SecurityGroupArns: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Arn,
/// 			},
/// 			SubnetArns: pulumi.StringArray{
/// 				exampleAwsSubnet.Arn,
/// 			},
/// 			VpcEndpointId: exampleVpcEndpoint.ID(),
/// 			PrivateLinkEndpoint: pulumi.String(example.ApplyT(func(example ec2.GetNetworkInterfaceResult) (*string, error) {
/// 				return &example.PrivateIp, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Name: pulumi.String("example"),
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
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetNetworkInterfaceArgs;
/// import com.pulumi.aws.datasync.Agent;
/// import com.pulumi.aws.datasync.AgentArgs;
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
///         var exampleVpcEndpoint = new VpcEndpoint("exampleVpcEndpoint", VpcEndpointArgs.builder()
///             .serviceName(String.format("com.amazonaws.%s.datasync", current.region()))
///             .vpcId(exampleAwsVpc.id())
///             .securityGroupIds(exampleAwsSecurityGroup.id())
///             .subnetIds(exampleAwsSubnet.id())
///             .vpcEndpointType("Interface")
///             .build());
///
///         final var example = Ec2Functions.getNetworkInterface(GetNetworkInterfaceArgs.builder()
///             .id(exampleVpcEndpoint.networkInterfaceIds().applyValue(_networkInterfaceIds -> _networkInterfaceIds[0]))
///             .build());
///
///         var exampleAgent = new Agent("exampleAgent", AgentArgs.builder()
///             .ipAddress("1.2.3.4")
///             .securityGroupArns(exampleAwsSecurityGroup.arn())
///             .subnetArns(exampleAwsSubnet.arn())
///             .vpcEndpointId(exampleVpcEndpoint.id())
///             .privateLinkEndpoint(example.applyValue(_example -> _example.privateIp()))
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAgent:
///     type: aws:datasync:Agent
///     name: example
///     properties:
///       ipAddress: 1.2.3.4
///       securityGroupArns:
///         - ${exampleAwsSecurityGroup.arn}
///       subnetArns:
///         - ${exampleAwsSubnet.arn}
///       vpcEndpointId: ${exampleVpcEndpoint.id}
///       privateLinkEndpoint: ${example.privateIp}
///       name: example
///   exampleVpcEndpoint:
///     type: aws:ec2:VpcEndpoint
///     name: example
///     properties:
///       serviceName: com.amazonaws.${current.region}.datasync
///       vpcId: ${exampleAwsVpc.id}
///       securityGroupIds:
///         - ${exampleAwsSecurityGroup.id}
///       subnetIds:
///         - ${exampleAwsSubnet.id}
///       vpcEndpointType: Interface
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   example:
///     fn::invoke:
///       function: aws:ec2:getNetworkInterface
///       arguments:
///         id: ${exampleVpcEndpoint.networkInterfaceIds[0]}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the DataSync agent.
///
///
/// Using `pulumi import`, import `aws.datasync.Agent` using the DataSync Agent Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:datasync/agent:Agent example arn:aws:datasync:us-east-1:123456789012:agent/agent-12345678901234567
/// ```
class Agent extends pulumi.CustomResource {
  /// DataSync Agent activation key during resource creation. Conflicts with `ip_address`. If an `ip_address` is provided instead, the provider will retrieve the `activation_key` as part of the resource creation.
  late final pulumi.Output<String> activationKey;

  /// Amazon Resource Name (ARN) of the DataSync Agent.
  late final pulumi.Output<String> arn;

  /// DataSync Agent IP address to retrieve activation key during resource creation. Conflicts with `activation_key`. DataSync Agent must be accessible on port 80 from where the provider is running.
  late final pulumi.Output<String> ipAddress;

  /// Name of the DataSync Agent.
  late final pulumi.Output<String> name;

  /// The IP address of the VPC endpoint the agent should connect to when retrieving an activation key during resource creation. Conflicts with `activation_key`.
  late final pulumi.Output<String> privateLinkEndpoint;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ARNs of the security groups used to protect your data transfer task subnets.
  late final pulumi.Output<List<String>?> securityGroupArns;

  /// The Amazon Resource Names (ARNs) of the subnets in which DataSync will create elastic network interfaces for each data transfer task.
  late final pulumi.Output<List<String>?> subnetArns;

  /// Key-value pairs of resource tags to assign to the DataSync Agent. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ID of the VPC (virtual private cloud) endpoint that the agent has access to.
  late final pulumi.Output<String?> vpcEndpointId;

  /// Creates a new [Agent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Agent]. {@macro pulumi_datasync_agent_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Agent(String name, {AgentArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:datasync/agent:Agent',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.activationKey = registerOutput<String>('activationKey');
    this.arn = registerOutput<String>('arn');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.name = registerOutput<String>('name');
    this.privateLinkEndpoint = registerOutput<String>('privateLinkEndpoint');
    this.region = registerOutput<String>('region');
    this.securityGroupArns = registerOutput<List<String>?>('securityGroupArns');
    this.subnetArns = registerOutput<List<String>?>('subnetArns');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcEndpointId = registerOutput<String?>('vpcEndpointId');
  }
}
