import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_settings_args.dart';
import 'network_settings_state.dart';

/// Resource for managing an AWS WorkSpaces Web Network Settings resource. Once associated with a web portal, network settings define how streaming instances will connect with your specified VPC.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.ec2.Vpc("example", {cidrBlock: "10.0.0.0/16"});
/// const exampleSubnet: aws.ec2.Subnet[] = [];
/// for (let range = 0; range < 2; range++) {
///     exampleSubnet.push(new aws.ec2.Subnet(`example-${range}`, {
///         vpcId: example.id,
///         cidrBlock: std.cidrsubnetOutput({
///             input: example.cidrBlock,
///             newbits: 8,
///             netnum: range,
///         }).result,
///         availabilityZone: available.names[range],
///     }));
/// }
/// const example1: aws.ec2.SecurityGroup[] = [];
/// for (let range = 0; range < 2; range++) {
///     example1.push(new aws.ec2.SecurityGroup(`example1-${range}`, {
///         vpcId: example.id,
///         name: `example-sg-${range}$`,
///     }));
/// }
/// const exampleNetworkSettings = new aws.workspacesweb.NetworkSettings("example", {
///     vpcId: example.id,
///     subnetIds: [
///         exampleSubnet[0].id,
///         exampleSubnet[1].id,
///     ],
///     securityGroupIds: [
///         exampleAwsSecurityGroup[0].id,
///         exampleAwsSecurityGroup[1].id,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// from typing import Any
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example_subnet: list[aws.ec2.Subnet] = []
/// for example_subnet_range in [{"value": i} for i in range(0, 2)]:
///     example_subnet.append(aws.ec2.Subnet(f"example-{example_subnet_range['value']}",
///         vpc_id=example.id,
///         cidr_block=std.cidrsubnet_output(input=example.cidr_block,
///             newbits=8,
///             netnum=example_subnet_range["value"]).result,
///         availability_zone=available["names"][example_subnet_range["value"]]))
/// example1: list[aws.ec2.SecurityGroup] = []
/// for example1_range in [{"value": i} for i in range(0, 2)]:
///     example1.append(aws.ec2.SecurityGroup(f"example1-{example1_range['value']}",
///         vpc_id=example.id,
///         name=f"example-sg-{example1_range['value']}$"))
/// example_network_settings = aws.workspacesweb.NetworkSettings("example",
///     vpc_id=example.id,
///     subnet_ids=[
///         example_subnet[0].id,
///         example_subnet[1].id,
///     ],
///     security_group_ids=[
///         example_aws_security_group[0]["id"],
///         example_aws_security_group[1]["id"],
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var exampleSubnet = new List<Aws.Ec2.Subnet>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         exampleSubnet.Add(new Aws.Ec2.Subnet($"example-{range.Value}", new()
///         {
///             VpcId = example.Id,
///             CidrBlock = Std.Cidrsubnet.Invoke(new()
///             {
///                 Input = example.CidrBlock,
///                 Newbits = 8,
///                 Netnum = range.Value,
///             }).Apply(invoke => invoke.Result),
///             AvailabilityZone = available.Names[range.Value],
///         }));
///     }
///     var example1 = new List<Aws.Ec2.SecurityGroup>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         example1.Add(new Aws.Ec2.SecurityGroup($"example1-{range.Value}", new()
///         {
///             VpcId = example.Id,
///             Name = $"example-sg-{range.Value}$",
///         }));
///     }
///     var exampleNetworkSettings = new Aws.WorkSpacesWeb.NetworkSettings("example", new()
///     {
///         VpcId = example.Id,
///         SubnetIds = new[]
///         {
///             exampleSubnet[0].Id,
///             exampleSubnet[1].Id,
///         },
///         SecurityGroupIds = new[]
///         {
///             exampleAwsSecurityGroup[0].Id,
///             exampleAwsSecurityGroup[1].Id,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var exampleSubnet []*ec2.Subnet
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := ec2.NewSubnet(ctx, fmt.Sprintf("example-%v", key0), &ec2.SubnetArgs{
/// 				VpcId: example.ID().ToIDOutput().ToStringOutput(),
/// 				CidrBlock: std.CidrsubnetOutput(ctx, std.CidrsubnetOutputArgs{
/// 					Input:   example.CidrBlock,
/// 					Newbits: pulumi.Int(8),
/// 					Netnum:  pulumi.Int(val0),
/// 				}, nil).Result(),
/// 				AvailabilityZone: available.Names[val0],
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			exampleSubnet = append(exampleSubnet, __res)
/// 		}
/// 		var example1 []*ec2.SecurityGroup
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := ec2.NewSecurityGroup(ctx, fmt.Sprintf("example1-%v", key0), &ec2.SecurityGroupArgs{
/// 				VpcId: example.ID().ToIDOutput().ToStringOutput(),
/// 				Name:  pulumi.Sprintf("example-sg-%v$", val0),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			example1 = append(example1, __res)
/// 		}
/// 		_, err = workspacesweb.NewNetworkSettings(ctx, "example", &workspacesweb.NetworkSettingsArgs{
/// 			VpcId: example.ID().ToIDOutput().ToStringOutput(),
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleSubnet[0].ID().ToIDOutput().ToStringOutput(),
/// 				exampleSubnet[1].ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				exampleAwsSecurityGroup[0].Id,
/// 				exampleAwsSecurityGroup[1].Id,
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "aws_ec2_vpc" "example" {
///   cidr_block = "10.0.0.0/16"
/// }
/// resource "aws_ec2_subnet" "example" {
///   count             = 2
///   vpc_id            = aws_ec2_vpc.example.id
///   cidr_block        = cidrsubnet(aws_ec2_vpc.example.cidr_block, 8, count.index)
///   availability_zone = available.names[count.index]
/// }
/// resource "aws_ec2_securitygroup" "example1" {
///   count  = 2
///   vpc_id = aws_ec2_vpc.example.id
///   name   ="example-sg-${count.index}$"
/// }
/// resource "aws_workspacesweb_networksettings" "example" {
///   vpc_id             = aws_ec2_vpc.example.id
///   subnet_ids         = [aws_ec2_subnet.example[0].id, aws_ec2_subnet.example[1].id]
///   security_group_ids = [exampleAwsSecurityGroup[0].id, exampleAwsSecurityGroup[1].id]
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
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
/// import com.pulumi.aws.ec2.SecurityGroup;
/// import com.pulumi.aws.ec2.SecurityGroupArgs;
/// import com.pulumi.aws.workspacesweb.NetworkSettings;
/// import com.pulumi.aws.workspacesweb.NetworkSettingsArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         var example = new Vpc("example", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new Subnet("exampleSubnet-" + i, SubnetArgs.builder()
///                 .vpcId(example.id())
///                 .cidrBlock(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                     .input(example.cidrBlock())
///                     .newbits(8)
///                     .netnum(range.value())
///                     .build()).applyValue(_invoke -> _invoke.result()))
///                 .availabilityZone(available.names()[range.value()])
///                 .build());
///
///
/// }
///         for (var i = 0; i < 2; i++) {
///             new SecurityGroup("example1-" + i, SecurityGroupArgs.builder()
///                 .vpcId(example.id())
///                 .name(String.format("example-sg-%s$", range.value()))
///                 .build());
///
///
/// }
///         var exampleNetworkSettings = new NetworkSettings("exampleNetworkSettings", NetworkSettingsArgs.builder()
///             .vpcId(example.id())
///             .subnetIds(
///                 exampleSubnet[0].id(),
///                 exampleSubnet[1].id())
///             .securityGroupIds(
///                 exampleAwsSecurityGroup[0].id(),
///                 exampleAwsSecurityGroup[1].id())
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web Network Settings using the `networkSettingsArn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/networkSettings:NetworkSettings example arn:aws:workspacesweb:us-west-2:123456789012:networksettings/abcdef12345
/// ```
class NetworkSettings extends pulumi.CustomResource {
  /// List of web portal ARNs associated with the network settings.
  late final pulumi.Output<List<String>> associatedPortalArns;
  /// ARN of the network settings resource.
  late final pulumi.Output<String> networkSettingsArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// One or more security groups used to control access from streaming instances to your VPC.
  late final pulumi.Output<List<String>> securityGroupIds;
  /// The subnets in which network interfaces are created to connect streaming instances to your VPC. At least two subnet ids must be specified.
  late final pulumi.Output<List<String>> subnetIds;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The VPC that streaming instances will connect to.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> vpcId;

  /// Creates a new [NetworkSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkSettings]. {@macro pulumi_workspacesweb_network_settings_network_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkSettings(
    String name, {
    NetworkSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/networkSettings:NetworkSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associatedPortalArns = registerOutput<List<String>>('associatedPortalArns');
    networkSettingsArn = registerOutput<String>('networkSettingsArn');
    region = registerOutput<String>('region');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    subnetIds = registerOutput<List<String>>('subnetIds');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [NetworkSettings] resource's state with the given [name] and [id].
  static NetworkSettings get(
    String name,
    pulumi.Input<String> id, {
    NetworkSettingsState? state,
  }) {
    return NetworkSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/networkSettings:NetworkSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associatedPortalArns = registerOutput<List<String>>('associatedPortalArns');
    networkSettingsArn = registerOutput<String>('networkSettingsArn');
    region = registerOutput<String>('region');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    subnetIds = registerOutput<List<String>>('subnetIds');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcId = registerOutput<String>('vpcId');
  }
}
